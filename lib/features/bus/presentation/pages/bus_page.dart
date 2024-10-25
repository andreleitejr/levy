import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/core/router/app_router.gr.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/presentation/enums/bus_selection_stage.dart';
import 'package:levy/features/bus/presentation/providers/bus_notifier_provider.dart';
import 'package:levy/features/bus/presentation/providers/bus_selection_notifier_provider.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/presentation/providers/create_reservation_usecase_provider.dart';
import 'package:levy/features/search/data/models/search_model.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';

@RoutePage()
class BusPage extends ConsumerStatefulWidget {
  const BusPage({
    super.key,
    required this.search,
  });

  final SearchModel search;

  @override
  ConsumerState<BusPage> createState() => _BusPageState();
}

class _BusPageState extends ConsumerState<BusPage> {
  @override
  void initState() {
    super.initState();
    ref.read(busNotifierProvider.notifier).init(search: widget.search);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(busSelectionNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Select a Bus')),
      body: _buildBusSelection(context, ref, state.stage),
    );
  }

  Widget _buildBusSelection(
      BuildContext context, WidgetRef ref, BusSelectionStage stage) {
    final buses = ref.watch(busNotifierProvider).buses;
    final departureBus = ref.watch(busSelectionNotifierProvider).departureBus;
    final departureSeat = ref.watch(busSelectionNotifierProvider).departureSeat;
    final returnBus = ref.watch(busSelectionNotifierProvider).returnBus;
    final returnSeat = ref.watch(busSelectionNotifierProvider).returnSeat;

    return Column(
      children: [
        if (departureBus != null)
          Column(
            children: [
              Text('Selected Bus: ${departureBus.brand}'),
              Text(
                  'Selected Seat: ${departureSeat?.letter}:${departureSeat?.number}'),
            ],
          ),
        Expanded(
          child: ListView.builder(
            itemCount: buses.length,
            itemBuilder: (context, index) {
              final bus = buses[index];

              return ListTile(
                title: Text(bus.brand),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Address Street: ${bus.routes.first.origin.street}'),
                    Text('Description Route: ${bus.routes.first.name}'),
                    Text('Departure: ${bus.routes.first.departureTime}'),
                    Text('Arrival: ${bus.routes.first.arrivalTime}'),
                    Text('Duration: ${bus.routes.first.duration}'),
                    Text('Seats available: ${bus.seats.length}'),
                  ],
                ),
                onTap: () async {
                  final router = context.router;

                  final selectedSeat = await context.router.push<SeatEntity>(
                    SeatRoute(seats: bus.seats),
                  );

                  if (selectedSeat != null) {
                    if (stage == BusSelectionStage.departureSelection) {
                      ref
                          .read(busSelectionNotifierProvider.notifier)
                          .selectDepartureBus(bus, selectedSeat);

                      await ref
                          .read(busNotifierProvider.notifier)
                          .init(search: widget.search, isReturn: true);
                    } else if (stage == BusSelectionStage.returnSelection) {
                      ref
                          .read(busSelectionNotifierProvider.notifier)
                          .selectReturnBus(bus, selectedSeat);

                      final paymentId = 'teste001';

                      router.push(PaymentRoute(
                        paymentId: 'teste001',
                        onPaymentSuccess: () async {
                          final createReservationUseCase = ref.read(createReservationUseCaseProvider);

                          final reservation = ReservationModel(
                            userId: 'user_001',
                            paymentId: paymentId,
                            date: DateTime.now().toString(),
                            departureBus: departureBus as BusModel,
                            returnBus: departureBus,
                          );

                          await createReservationUseCase.call(reservation);
                          router.replace(ReservationRoute());
                        },
                      ));
                    }
                  }
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
