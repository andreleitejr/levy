import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/core/router/app_router.gr.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/bus/presentation/enums/bus_selection_stage.dart';
import 'package:levy/features/bus/presentation/providers/bus_notifier_provider.dart';
import 'package:levy/features/bus/presentation/providers/bus_selection_notifier_provider.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/presentation/states/bus_state.dart';
import 'package:levy/features/bus/presentation/widgets/bus_widget.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/presentation/providers/create_reservation_usecase_provider.dart';
import 'package:levy/features/search/data/models/search_model.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';

@RoutePage()
final class BusPage extends ConsumerStatefulWidget {
  const BusPage({
    super.key,
    required this.search,
  });

  final SearchEntity search;

  @override
  ConsumerState<BusPage> createState() => _BusPageState();
}

final class _BusPageState extends ConsumerState<BusPage> {
  @override
  void initState() {
    super.initState();
    ref
        .read(busNotifierProvider.notifier)
        .init(search: widget.search as SearchModel);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(busNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Buss')),
      body: StateBuilder<BusState, BusEntity>(
        state: state,
        loadingBuilder: () => const Center(child: CircularProgressIndicator()),
        errorBuilder: (message) => Text('${state.errorMessage}'),
        successBuilder: (data) => BusWidget(
          items: data,
          onPop: () => context.router.back(),
          onItemPressed: (item) async {
            final state = ref.watch(busSelectionNotifierProvider);

            final departureBus =
                ref.watch(busSelectionNotifierProvider).departureBus;
            final departureSeat =
                ref.watch(busSelectionNotifierProvider).departureSeat;
            final returnBus = ref.watch(busSelectionNotifierProvider).returnBus;
            final returnSeat =
                ref.watch(busSelectionNotifierProvider).returnSeat;

            final router = context.router;

            final selectedSeat = await context.router.push<SeatEntity>(
              SeatRoute(seats: item.seats),
            );

            if (selectedSeat != null) {
              if (state.stage == BusSelectionStage.departureSelection) {
                ref
                    .read(busSelectionNotifierProvider.notifier)
                    .selectDepartureBus(item, selectedSeat);

                await ref
                    .read(busNotifierProvider.notifier)
                    .init(search: widget.search as SearchModel, isReturn: true);
              } else if (state.stage == BusSelectionStage.returnSelection) {
                ref
                    .read(busSelectionNotifierProvider.notifier)
                    .selectReturnBus(item, selectedSeat);

                final paymentId = 'teste001';

                router.push(PaymentRoute(
                  paymentId: 'teste001',
                  onPaymentSuccess: () async {
                    final createReservationUseCase =
                        ref.read(createReservationUseCaseProvider);

                    final reservation = ReservationModel(
                      userId: 'user_001',
                      paymentId: paymentId,
                      date: DateTime.now().toString(),
                      departureBus: departureBus as BusModel,
                      returnBus: returnBus as BusModel,
                    );

                    await createReservationUseCase.call(reservation);
                    router.replace(ReservationRoute());
                  },
                ));
              }
            }
          },
        ),
      ),
    );
  }
}
