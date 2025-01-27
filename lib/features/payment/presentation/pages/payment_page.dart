import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:levy/core/router/app_router.gr.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/commons/widgets/theme_loading_page.dart';
import 'package:levy/features/payment/enums/payment_result.dart';
import 'package:levy/features/payment/presentation/notifiers/payment_notifier.dart';
import 'package:levy/features/payment/presentation/providers/payment_notifier_provider.dart';
import 'package:levy/features/payment/presentation/states/payment_state.dart';
import 'package:levy/features/payment/presentation/widgets/payment_widget.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/presentation/providers/create_reservation_usecase_provider.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
class PaymentPage extends ConsumerStatefulWidget {
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

class _PaymentPageState extends ConsumerState<PaymentPage> {
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

    return StateBuilder(
      state: state,
      loading: ThemeLoadingWidget(),
      success: PaymentWidget(
        reservation: state.reservation,
        // TODO: Remover "!"
        departureBus: state.departureBus!,
        returnBus: state.returnBus!,
        paymentMethod: state.paymentMethod,
        onPop: () => context.router.back(),
        onPaymentMethodPressed: () => _onPaymentMethodPressed(notifier),
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

  Future<void> _onPaymentMethodPressed(PaymentNotifier notifier) async {
    final paymentMethod = await context.router.push<PaymentMethodEntity>(PaymentMethodRoute());

    if (paymentMethod != null) {
      notifier.updatePaymentMethod(paymentMethod);
    }
  }

  Future<void> _onButtonPressed({
    required PaymentState state,
    required PaymentNotifier notifier,
  }) async {
    final paymentMethod = state.paymentMethod;

    if (paymentMethod != null) {
      final result = await notifier.processPayment(
        reservation: state.reservation,
        // TODO: Remover "!"
        departureBus: state.departureBus!,
        returnBus: state.returnBus!,
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

    final reservation = ReservationModel(
      reservationId: reservationId,
      userId: user.id,
      paymentId: paymentId,
      date: date,
      // TODO: Remover "!"
      departureBusId: state.departureBus!.id,
      returnBusId: state.returnBus!.id,
    );

    await reservationUseCase.call(reservation);

    router.replace(HomeRoute());
  }
}
