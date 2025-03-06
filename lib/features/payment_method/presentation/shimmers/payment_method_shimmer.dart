import 'package:flutter/material.dart';
import 'package:levy/features/payment_method/presentation/utils/payment_method_translation.dart';
import 'package:levy_theme/core/theme/theme.dart';

final class PaymentMethodShimmer extends StatelessWidget {
  const PaymentMethodShimmer({
    super.key,
    required this.onPop,
  });

  final VoidCallback onPop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: PaymentMethodTranslation.header.title,
        onLeadingPressed: onPop,
        leadingIcon: ThemeIcons.arrowLeft,
      ),
      body:  ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {

          return ThemeListItemShimmer(
            imageGeometry: ThemeImageGeometry.rectangle,
          );
        },
      ),
    );
  }
}
