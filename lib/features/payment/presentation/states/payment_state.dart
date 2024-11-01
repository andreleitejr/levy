import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/payment/domain/entities/payment_entity.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';
import 'package:levy/features/payment/enums/payment_result.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

final class PaymentState implements GenericStateBase {
  final PaymentResult result;
  final ReservationEntity reservation;
  final PaymentMethodType? paymentMethodType;

  @override
  final String? errorMessage;

  @override
  final bool isLoading;

  const PaymentState({
    this.result = PaymentResult.awaiting,
    this.reservation = const ReservationModel(),
    this.paymentMethodType,
    this.errorMessage,
    this.isLoading = false,
  });

  const PaymentState.loading() : this(isLoading: true);
  const PaymentState.initial(ReservationEntity reservation) : this(reservation: reservation);
  const PaymentState.success(PaymentResult result) : this(result: result);
  const PaymentState.error(String message) : this(errorMessage: message);
}
