import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/payment/domain/usecases/process_payment_usecase.dart';
import 'package:levy/features/payment/enums/payment_result.dart';
import 'package:levy/features/payment/presentation/states/payment_state.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/main.dart';

final class PaymentNotifier extends StateNotifier<PaymentState> {
  final ProcessPaymentUseCase _usecase;

  PaymentNotifier(this._usecase) : super(PaymentState.loading());

  Future<void> init({
    required BusEntity departureBus,
    required BusEntity returnBus,
  }) async {
    try {
      state = PaymentState.initial(
        departureBus: departureBus,
        returnBus: returnBus,
      );
    } catch (e) {
      state = PaymentState.error('Failed to init payment: ${e.toString()}');
    }
  }

  Future<PaymentResult> processPayment({
    required ReservationEntity reservation,
    required BusEntity departureBus,
    required BusEntity returnBus,
    required PaymentMethodEntity method,
  }) async {
    try {
      state = PaymentState.loading();

      final updateReservation = ReservationModel(
        reservationId: reservation.reservationId,
        userId: reservation.userId,
        paymentId: reservation.paymentId,
        date: reservation.date,
        departureBus: departureBus as BusModel,
        returnBus: returnBus as BusModel,
      );

      getIt.registerSingleton<ReservationEntity>(updateReservation);
      getIt.registerSingleton<BusEntity>(departureBus, instanceName: 'departure');
      getIt.registerSingleton<BusEntity>(returnBus, instanceName: 'return');

      return _usecase(
        reservation: updateReservation,
        method: method,
      );
    } catch (e) {
      state = PaymentState.error('Failed to process payment: ${e.toString()}');
      return PaymentResult.failed;
    }
  }

  void updatePaymentMethod(PaymentMethodEntity method) {
    state = state.copyWith(paymentMethod: method);
  }
}
