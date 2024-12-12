import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/commons/widgets/theme_list_item_widget.dart';
import 'package:levy/features/commons/widgets/theme_payment_method_item_widget.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy/features/payment_method/presentation/utils/payment_method_translation.dart';

final class PaymentMethodWidget extends StatelessWidget {
  const PaymentMethodWidget({
    super.key,
    required this.items,
    required this.onPop,
    required this.onItemPressed,
  });

  final List<PaymentMethodEntity> items;
  final VoidCallback onPop;
  final Function(PaymentMethodEntity item) onItemPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: PaymentMethodTranslation.header.title,
        onLeadingPressed: onPop,
        leadingIcon: ThemeIcons.arrowLeft,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return ThemePaymentMethodItemWidget(
            onPressed: () => onItemPressed(item),
            title: item.methodType,
            image: item.image,
            subtitle: item.cardHolderName,
            cardNumber: item.cardNumber,
            showTextButton: false,
          );
        },
      ),
    );
  }
}
