import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/bus/presentation/utils/bus_translation.dart';
import 'package:levy/features/bus/presentation/widgets/bus_item_widget.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';

final class BusWidget extends StatelessWidget {
  const BusWidget({
    super.key,
    required this.items,
    required this.onPop,
    required this.onItemPressed,
    this.selected,
  });

  final List<BusEntity> items;
  final VoidCallback onPop;
  final Function(BusEntity item) onItemPressed;
  final BusEntity? selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: BusTranslation.header.title,
        onLeadingPressed: onPop,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(ThemeSizes.large),
        child: Column(
          children: [
            _buildDepartureWidget(),
            ...items.map(
              (item) {
                return Column(
                  children: [
                    BusItemWidget(
                      item: item,
                      onItemPressed: () => onItemPressed(item),
                    ),
                    const SizedBox(height: ThemeSizes.large),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDepartureWidget() {
    final item = selected;

    if (item != null) {
      return Container(
        padding: const EdgeInsets.all(ThemeSizes.medium),
        decoration: BoxDecoration(
          border: Border.all(
            color: ThemeColors.dark,
          ),
          borderRadius: BorderRadius.circular(ThemeSizes.medium),
        ),
        margin: const EdgeInsets.only(bottom: ThemeSizes.large),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Departure Info',
              style: ThemeTypography.regular14,
            ),
            const SizedBox(height: ThemeSizes.micro),
            Row(
              children: [
                Text(
                  item.routes.first.origin.street,
                  style: ThemeTypography.regular14,
                ),
                const SizedBox(width: ThemeSizes.medium),
                Text(
                  item.routes.first.destination.street,
                  style: ThemeTypography.regular14,
                ),
              ],
            ),
          ],
        ),
      );
    }

    return SizedBox.shrink();
  }
}
