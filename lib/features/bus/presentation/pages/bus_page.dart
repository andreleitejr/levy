import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/core/router/app_router.gr.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/bus/presentation/notifiers/bus_notifier.dart';
import 'package:levy/features/bus/presentation/providers/bus_notifier_provider.dart';
import 'package:levy/features/bus/presentation/states/bus_state.dart';
import 'package:levy/features/bus/presentation/widgets/bus_widget.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/commons/widgets/theme_loading_page.dart';
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

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(busNotifierProvider.notifier).init(widget.search);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(busNotifierProvider);
    final notifier = ref.read(busNotifierProvider.notifier);

    return StateBuilder(
      state: state,
      loading: const ThemeLoadingWidget(),
      success: BusWidget(
        items: state.data,
        onPop: () => context.router.back(),
        onItemPressed: (item) async {
          await _onItemPressed(
            state: state,
            notifier: notifier,
            item: item,
          );
        },
        selected: state.departureBus,
      ),
      error: ThemeErrorWidget(
        message: state.errorMessage,
      ),
    );
  }

  Future<void> _onItemPressed({
    required BusState state,
    required BusNotifier notifier,
    required BusEntity item,
  }) async {
    final seat = await _selectSeat(context, item);

    if (seat == null) return;

    if (state.departureBus == null) {
      await notifier.updateDepartureBus(bus: item, seat: seat);
    } else {
      notifier.updateReturnBus(bus: item, seat: seat);

      _proceedToPayment();
    }
  }

  Future<SeatEntity?> _selectSeat(BuildContext context, BusEntity item) async {
    return await context.router.push<SeatEntity>(SeatRoute(items: item.seats));
  }

  Future<void> _proceedToPayment() async {
    final state = ref.read(busNotifierProvider);
    final router = context.router;

    final departureBus = state.departureBus;
    final returnBus = state.returnBus;

    if (departureBus != null && returnBus != null) {
      router.push(PaymentRoute(
        departureBus: departureBus,
        returnBus: returnBus,
      ));
    }
  }
}
