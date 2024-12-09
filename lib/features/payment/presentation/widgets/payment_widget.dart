import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/commons/widgets/theme_button.dart';
import 'package:levy/features/commons/widgets/theme_list_item_widget.dart';
import 'package:levy/features/commons/widgets/theme_ticket_widget.dart';
import 'package:levy/features/payment/presentation/utils/payment_translation.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

final class PaymentWidget extends StatelessWidget {
  const PaymentWidget({
    super.key,
    required this.reservation,
    required this.paymentMethod,
    required this.onPop,
    required this.onPaymentMethodPressed,
    required this.onButtonPressed,
  });

  final ReservationEntity reservation;
  final PaymentMethodEntity? paymentMethod;
  final VoidCallback onPop;
  final VoidCallback onPaymentMethodPressed;
  final VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: PaymentTranslation.header.title,
        onLeadingPressed: onPop,
      ),
      body: Column(
        children: [
          ThemeTicketWidget(bus: reservation.departureBus),
          SizedBox(height: ThemeSizes.large),
          ThemeTicketWidget(bus: reservation.returnBus),
          SizedBox(height: ThemeSizes.large),
          ThemeListItemWidget(
            onPressed: onPaymentMethodPressed,
            title: _getPaymentMethodTitle(),
            subtitle: _getPaymentMethodSubtitle(),
          ),
          ThemeButton(
            onPressed: onButtonPressed,
            title: 'Pay',
          ),
        ],
      ),
    );
  }

  String _getPaymentMethodTitle() {
    final method = paymentMethod;

    if (method != null) {
      return method.methodType;
    } else {
      return 'Payment method';
    }
  }

  String _getPaymentMethodSubtitle() {
    final method = paymentMethod;

    if (method != null) {
      return method.cardNumber;
    } else {
      return 'Select your payment method';
    }
  }
}
