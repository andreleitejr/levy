import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/time/presentation/providers/time_notifier_provider.dart';
import 'package:levy/features/time/presentation/states/time_state.dart';
import 'package:levy/features/time/presentation/widgets/time_widget.dart';
import 'package:levy_core/core.dart';

@RoutePage()
final class TimePage extends ConsumerStatefulWidget {
  const TimePage({super.key});

  @override
  ConsumerState<TimePage> createState() => _TimePageState();
}

final class _TimePageState extends ConsumerState<TimePage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(timeNotifierProvider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(timeNotifierProvider);

    return ThemeStateBuilder(
      state: state,
      loading: SizedBox.shrink(),
      success: TimeWidget(
        selectedHour: state.hour,
        selectedMinute: state.minute,
        onHourSelected: (index) {
          ref.read(timeNotifierProvider.notifier).updateHour(index);
        },
        onMinuteSelected: (index) {
          ref.read(timeNotifierProvider.notifier).updateMinute(index);
        },
        onButtonPressed: () => _onButtonPressed(state),
        onPop: () => context.router.back(),
      ),
      error: ThemeErrorWidget(
        message: state.errorMessage,
      ),
    );
  }

  void _onButtonPressed(TimeState state) {
    final formattedTime = _getFormattedTime( state.hour, state.minute);

    context.router.maybePop(formattedTime);
  }

  String _getFormattedTime(int hour, int minute) {
    final String formattedHour = hour.toString().padLeft(2, '0');
    final String formattedMinute = minute.toString().padLeft(2, '0');

    return '$formattedHour:$formattedMinute';
  }
}
