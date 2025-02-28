import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:levy/core/router/app_router.gr.dart';
import 'package:levy/core/theme/theme.dart';
import 'package:levy/features/bus/bus.dart';
import 'package:levy/features/payment/payment.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/presentation/providers/create_reservation_usecase_provider.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
final class PaymentPage extends ConsumerStatefulWidget {
  const PaymentPage({
    super.key,
    required this.departureBus,
    required this.returnBus,
  });

  final BusEntity departureBus;
  final BusEntity returnBus;

  @override
  ConsumerState<PaymentPage> createState() => _PaymentPageState();
}

final class _PaymentPageState extends ConsumerState<PaymentPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(paymentNotifierProvider.notifier).init(
            departureBus: widget.departureBus,
            returnBus: widget.returnBus,
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(paymentNotifierProvider);
    final notifier = ref.read(paymentNotifierProvider.notifier);

    return ThemeStateBuilder(
      state: state,
      loading: ThemeLoadingWidget(),
      success: _buildPaymentWidget(
        state: state,
        notifier: notifier,
      ),
      error: ThemeErrorWidget(
        message: state.errorMessage,
      ),
    );
  }

  Widget _buildPaymentWidget({
    required PaymentState state,
    required PaymentNotifier notifier,
  }) {
    final departureBus = state.departureBus;
    final returnBus = state.returnBus;

    if (departureBus != null && returnBus != null) {
      return PaymentWidget(
        reservation: state.reservation,
        departureBus: departureBus,
        returnBus: returnBus,
        paymentMethod: state.paymentMethod,
        onPop: () => context.router.back(),
        onPaymentMethodPressed: () => _onPaymentMethodPressed(notifier),
        onButtonPressed: () => _onButtonPressed(
          state: state,
          notifier: notifier,
        ),
      );
    }
    return SizedBox.shrink();
  }

  Future<void> _onPaymentMethodPressed(PaymentNotifier notifier) async {
    final paymentMethod =
        await context.router.push<PaymentMethodEntity>(PaymentMethodRoute());

    if (paymentMethod != null) {
      notifier.updatePaymentMethod(paymentMethod);
    }
  }

  Future<void> _onButtonPressed({
    required PaymentState state,
    required PaymentNotifier notifier,
  }) async {
    final reservation = state.reservation;
    final paymentMethod = state.paymentMethod;
    final departureBus = state.departureBus;
    final returnBus = state.returnBus;

    if (paymentMethod != null && departureBus != null && returnBus != null) {
      final result = await notifier.processPayment(
        reservation: reservation,
        departureBus: departureBus,
        returnBus: returnBus,
        method: paymentMethod,
      );

      final isSuccess = result == PaymentResult.success;

      if (isSuccess) {
        await _handleReservation(state);
      }
    }
  }

  Future<void> _handleReservation(PaymentState state) async {
    final router = context.router;

    final reservationUseCase = ref.read(createReservationUseCaseProvider);

    final user = GetIt.instance<UserEntity>();

    final uuid = Uuid();
    final reservationId = uuid.v4();
    final paymentId = uuid.v4();
    final date = DateTime.now().toString();

    final departureBus = state.departureBus;
    final returnBus = state.returnBus;

    if (departureBus != null && returnBus != null) {
      final reservation = ReservationModel(
        reservationId: reservationId,
        userId: user.id,
        paymentId: paymentId,
        date: date,
      );

      await reservationUseCase.call(reservation);

      router.replace(HomeRoute());
    }
  }
}
