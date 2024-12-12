import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/commons/utils/commons_translation.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/commons/widgets/theme_button.dart';
import 'package:levy/features/commons/widgets/theme_list_item_widget.dart';
import 'package:levy/features/commons/widgets/theme_payment_method_item_widget.dart';
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
        leadingIcon: ThemeIcons.arrowLeft,
        onLeadingPressed: onPop,
        title: PaymentTranslation.header.title,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ThemeTicketWidget(
              title: CommonsTranslation.departureTicket.title,
              bus: reservation.departureBus,
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ThemeTicketWidget(
              title: CommonsTranslation.returnTicket.title,
              bus: reservation.returnBus,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ThemePaymentMethodItemWidget(
            onPressed: onPaymentMethodPressed,
            title: PaymentTranslation.paymentMethod.title,
            image: paymentMethod?.image,
            subtitle: _getPaymentMethodTitle(),
            cardNumber: paymentMethod?.cardNumber,
            showTextButton: paymentMethod != null,
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  PaymentTranslation.priceInfo.title,
                  style: ThemeTypography.regular12.apply(
                    color: ThemeColors.primary,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'U\$399.90',
                      style: ThemeTypography.semiBold24,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '/ ${PaymentTranslation.priceInfo.recurrence}',
                      style: ThemeTypography.regular14.apply(
                        color: ThemeColors.grey4,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: ThemeButton(
              onPressed: onButtonPressed,
              title: PaymentTranslation.button.title,
            ),
          ),
        ],
      ),
    );
  }

  String _getPaymentMethodTitle() {
    final method = paymentMethod;

    if (method != null) {
      return '${paymentMethod?.brand} ${paymentMethod?.methodType}';
    } else {
      return 'Select your payment method';
    }
  }
}
