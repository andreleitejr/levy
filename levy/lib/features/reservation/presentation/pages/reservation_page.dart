import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/core/router/app_router.gr.dart';
import 'package:levy/core/theme/theme.dart';
import 'package:levy/features/reservation/presentation/providers/reservation_notifier_provider.dart';
import 'package:levy/features/reservation/presentation/states/reservation_state.dart';
import 'package:levy/features/reservation/presentation/utils/reservation_translation.dart';
import 'package:levy/features/reservation/presentation/widgets/reservation_widget.dart';

@RoutePage()
final class ReservationPage extends ConsumerStatefulWidget {
  const ReservationPage({super.key});

  @override
  ConsumerState<ReservationPage> createState() => _ReservationPageState();
}

final class _ReservationPageState extends ConsumerState<ReservationPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(reservationNotifierProvider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(reservationNotifierProvider);

    return ThemeStateBuilder(
      state: state,
      loading: ThemeLoadingWidget(),
      success: _buildReservationWidget(state),
      error: ThemeErrorWidget(
        message: state.errorMessage,
      ),
    );
  }

  Widget _buildReservationWidget(ReservationState state) {
    final data = state.data;

    if (data != null) {
      return ReservationWidget(
        reservation: data,
      );
    } else {
      return ThemeInactiveWidget(
        appBarTitle: ReservationTranslation.header.title,
        icon: ThemeIcons.ticket,
        title: ReservationTranslation.inactive.title,
        description: ReservationTranslation.inactive.description,
        buttonText: ReservationTranslation.inactive.buttonText,
        onButtonPressed: () {
          context.router.push(HomeRoute());        },
      );
    }
  }
}
