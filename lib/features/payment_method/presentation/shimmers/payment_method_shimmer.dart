import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/features/commons/enums/theme_image_geometry.dart';
import 'package:levy/features/commons/shimmers/theme_list_item_shimmer.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/payment_method/presentation/utils/payment_method_translation.dart';
import 'package:shimmer/shimmer.dart';

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
