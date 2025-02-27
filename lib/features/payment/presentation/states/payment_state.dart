import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/theme/widgets/theme_widgets.dart';
import 'package:levy/features/payment/enums/payment_result.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

final class PaymentState implements GenericStateBase {
  final PaymentResult result;
  final ReservationEntity reservation;
  final BusEntity? departureBus;
  final BusEntity? returnBus;
  final PaymentMethodEntity? paymentMethod;

  @override
  final String errorMessage;

  @override
  final bool isLoading;

  const PaymentState({
    this.result = PaymentResult.awaiting,
    this.reservation = const ReservationModel(),
    this.departureBus,
    this.returnBus,
    this.paymentMethod,
    this.errorMessage = '',
    this.isLoading = false,
  });

  const PaymentState.loading() : this(isLoading: true);

  const PaymentState.initial({
    required BusEntity departureBus,
    required BusEntity returnBus,
  }) : this(
          departureBus: departureBus,
          returnBus: returnBus,
        );

  const PaymentState.success(PaymentResult result) : this(result: result);

  const PaymentState.error(String message) : this(errorMessage: message);

  PaymentState copyWith({
    PaymentResult? result,
    ReservationEntity? reservation,
    BusEntity? departureBus,
    BusEntity? returnBus,
    PaymentMethodEntity? paymentMethod,
    String? errorMessage,
    bool? isLoading,
  }) {
    return PaymentState(
      result: result ?? this.result,
      reservation: reservation ?? this.reservation,
      departureBus: departureBus ?? this.departureBus,
      returnBus: returnBus ?? this.returnBus,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      errorMessage: errorMessage ?? this.errorMessage,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
