import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/core/router/app_router.gr.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/bus/enums/bus_result_type.dart';
import 'package:levy/features/bus/presentation/providers/bus_notifier_provider.dart';
import 'package:levy/features/reservation/presentation/providers/reservation_notifier_provider.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';

@RoutePage()
class BusPage extends ConsumerStatefulWidget {
  const BusPage({
    super.key,
    required this.search,
    required this.resultType,
    this.departureBus,
    this.departureSeat,
  });

  final SearchEntity search;
  final BusResultType resultType;
  final BusEntity? departureBus;
  final SeatEntity? departureSeat;

  @override
  ConsumerState<BusPage> createState() => _BusPageState();
}

class _BusPageState extends ConsumerState<BusPage> {
  @override
  void initState() {
    super.initState();
    ref.read(busNotifierProvider.notifier).init(
          search: widget.search,
          resultType: widget.resultType,
        );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(busNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Bus List'),
      ),

      /// TODO: AJUSTAR PARA RETORNAR STATE ERROR, NOT FOUND E SUCCESS
      body: state.errorMessage != null
          ? Center(child: Text(state.errorMessage!))
          : state.buses.isEmpty
              ? Center(child: Text('Bus not found'))
              : Column(
                  children: [
                    if (widget.departureBus != null)
                      Text('Departure bus: ${widget.departureBus?.brand}'),
                    if (widget.departureSeat != null)
                      Text('Departure Seat: ${widget.departureSeat?.letter}:${widget.departureSeat?.number}'),
                    Expanded(
                      child: ListView.builder(
                        itemCount: state.buses.length,
                        itemBuilder: (context, index) {
                          final bus = state.buses[index];
                          return ListTile(
                            onTap: () async {
                              final router = context.router;
                              final selectedSeat = await router.push<SeatEntity>(
                                SeatRoute(seats: bus.seats), // Assumindo que você tem uma rota de seleção de assento
                              );

                              if (selectedSeat != null) {
                                await router.push(
                                  PaymentRoute(
                                    transactionId: 'your-transaction-id', // Substitua pelo seu ID de transação
                                    onPaymentSuccess: () async {
                                      final reservationState = ref.read(reservationNotifierProvider.notifier);
                                      await reservationState.createReservation(
                                        seatNumber: selectedSeat.number.toString(),
                                        busId: widget.departureBus?.id ?? '',
                                      );

                                      router.replace(ReservationRoute());
                                    },
                                  ),
                                );
                              }
                            },
                            leading: Image.network(bus.image),
                            title: Text('${bus.brand} ${bus.model}'),
                            subtitle: Text('Capacity: ${bus.capacity}'),
                            trailing: Text(bus.isAccessible
                                ? 'Accessible'
                                : 'Not Accessible'),
                          );
                        },
                      ),
                    ),
                  ],
                ),
    );
  }
}
