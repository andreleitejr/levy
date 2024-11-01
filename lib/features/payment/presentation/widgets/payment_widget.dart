import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/commons/widgets/theme_button.dart';
import 'package:levy/features/commons/widgets/theme_list_item_widget.dart';
import 'package:levy/features/commons/widgets/theme_ticket_widget.dart';
import 'package:levy/features/payment/presentation/utils/payment_translation.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

final class PaymentWidget extends StatelessWidget {
  const PaymentWidget({
    super.key,
    required this.reservation,
    required this.onPop,
    required this.onButtonPressed,
  });

  final ReservationEntity reservation;
  final VoidCallback onPop;
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
          ThemeListItemWidget(title: 'Select your payment method', subtitle: 'Select your payment method'),
          ThemeButton(
            onPressed: onButtonPressed,
            title: 'Pay',
          ),
        ],
      ),
    );
  }
}
