import 'package:flutter/material.dart';
import 'package:levy/features/bus/bus.dart';
import 'package:levy/features/payment/presentation/utils/payment_translation.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy_core/core.dart';

final class PaymentWidget extends StatelessWidget {
  const PaymentWidget({
    super.key,
    required this.reservation,
    required this.departureBus,
    required this.returnBus,
    required this.paymentMethod,
    required this.onPop,
    required this.onPaymentMethodPressed,
    required this.onButtonPressed,
  });

  final ReservationEntity reservation;
  final BusEntity departureBus;
  final BusEntity returnBus;
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
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          ThemeTicketWidget(
            title: CommonsTranslation.departureTicket.title,
            busImage: departureBus.image,
            busTitle: departureBus.title,
            busDescription: departureBus.description,
            departureTime: departureBus.routes.first.departureTime,
            departureAddressTitle: departureBus.routes.first.origin.name,
            departureAddressLine: departureBus.routes.first.origin.line,
            arrivalTime: departureBus.routes.first.arrivalTime,
            arrivalAddressTitle: departureBus.routes.first.origin.name,
            arrivalAddressLine: departureBus.routes.first.destination.name,
            driverName: departureBus.driver.name,
            driverImage: departureBus.driver.image,
          ),
          SizedBox(height: 8),
          ThemeTicketWidget(
            title: CommonsTranslation.returnTicket.title,
            busImage: returnBus.image,
            busTitle: returnBus.title,
            busDescription: returnBus.description,
            departureTime: returnBus.routes.first.departureTime,
            departureAddressTitle: returnBus.routes.first.origin.name,
            departureAddressLine: returnBus.routes.first.origin.line,
            arrivalTime: returnBus.routes.first.arrivalTime,
            arrivalAddressTitle: returnBus.routes.first.origin.name,
            arrivalAddressLine: returnBus.routes.first.destination.name,
            driverName: returnBus.driver.name,
            driverImage: returnBus.driver.image,
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
          _buildPrice(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: ThemeButton(
              onPressed: onButtonPressed,
              title: PaymentTranslation.button.title,
              isValid: paymentMethod != null,
            ),
          ),
        ],
      ),
    );
  }

  String _getPaymentMethodTitle() {
    final method = paymentMethod;

    if (method != null) {
      return '${paymentMethod?.methodType}';
    } else {
      return 'Select your payment method';
    }
  }

  Widget _buildPrice() {
    return Padding(
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
    );
  }
}
