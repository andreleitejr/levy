import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/core/router/app_router.gr.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/commons/widgets/theme_loading_page.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';
import 'package:levy/features/payment/enums/payment_result.dart';
import 'package:levy/features/payment/presentation/notifiers/payment_notifier.dart';
import 'package:levy/features/payment/presentation/providers/payment_notifier_provider.dart';
import 'package:levy/features/payment/presentation/states/payment_state.dart';
import 'package:levy/features/payment/presentation/widgets/payment_widget.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/reservation/presentation/providers/create_reservation_usecase_provider.dart';

@RoutePage()
class PaymentPage extends ConsumerStatefulWidget {
  const PaymentPage({
    super.key,
    required this.reservation,
  });

  final ReservationEntity reservation;

  @override
  ConsumerState<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends ConsumerState<PaymentPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(paymentNotifierProvider.notifier).init(widget.reservation);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(paymentNotifierProvider);
    final notifier = ref.read(paymentNotifierProvider.notifier);

    return StateBuilder(
      state: state,
      loading: ThemeLoadingWidget(),
      success: PaymentWidget(
        reservation: state.reservation,
        onPop: () => context.router.back(),
        onButtonPressed: () => _onButtonPressed(
          state: state,
          notifier: notifier,
        ),
      ),
      error: ThemeErrorWidget(
        message: state.errorMessage,
      ),
    );
  }

  Future<void> _onButtonPressed({
    required PaymentState state,
    required PaymentNotifier notifier,
  }) async {
    final paymentMethod = state.paymentMethodType;

    if (paymentMethod != null) {
      await notifier.processPayment(
        reservation: widget.reservation,
        method: paymentMethod,
      );

      final isSuccess = state.result == PaymentResult.success;

      if (isSuccess) {
        await _handleReservation();
      }
    }
  }

  Future<void> _handleReservation() async {
    final router = context.router;

    final reservationUseCase = ref.read(createReservationUseCaseProvider);

    await reservationUseCase.call(widget.reservation as ReservationModel);

    router.replace(ReservationRoute());
  }
}
