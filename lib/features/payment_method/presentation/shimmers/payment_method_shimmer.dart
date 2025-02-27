import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme.dart';
import 'package:levy/features/commons/theme/enums/theme_image_geometry.dart';
import 'package:levy/features/commons/theme/shimmers/theme_list_item_shimmer.dart';
import 'package:levy/features/commons/theme/widgets/theme_widgets.dart';
import 'package:levy/features/payment_method/presentation/utils/payment_method_translation.dart';

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
