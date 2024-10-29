import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/commons/widgets/theme_loading_page.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';
import 'package:levy/features/seat/presentation/providers/seat_notifier_provider.dart';
import 'package:levy/features/seat/presentation/widgets/seat_widget.dart';

@RoutePage()
final class SeatPage extends ConsumerStatefulWidget {
  const SeatPage({
    super.key,
    required this.items,
  });

  final List<SeatEntity> items;

  @override
  ConsumerState<SeatPage> createState() => _SeatPageState();
}

final class _SeatPageState extends ConsumerState<SeatPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(seatNotifierProvider.notifier).init(widget.items);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(seatNotifierProvider);

    return StateBuilder(
      state: state,
      loading: ThemeLoadingWidget(),
      success: SeatWidget(
        items: state.data!,
        selectedItem: state.selectedSeat,
        onItemPressed: (item) {
          ref.read(seatNotifierProvider.notifier).selectSeat(item);
        },
        onButtonPressed: () {
          final selectedSeat = state.selectedSeat;

          if (selectedSeat != null) {
            context.router.maybePop(selectedSeat);
          }
        },
        onPop: () => context.router.back(),
      ),
      error: ThemeErrorWidget(
        message: state.errorMessage,
      ),
    );
  }
}
