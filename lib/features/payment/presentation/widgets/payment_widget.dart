import 'package:flutter/material.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/commons/widgets/theme_button.dart';
import 'package:levy/features/payment/presentation/utils/payment_translation.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

final class PaymentWidget extends StatelessWidget {
  const PaymentWidget({
    super.key,
    required this.item,
    required this.onPop,
    required this.onButtonPressed,
  });

  final ReservationEntity item;
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
          ThemeButton(
            onPressed: onButtonPressed,
            title: 'Pay',
          ),
        ],
      ),
    );
  }
}
