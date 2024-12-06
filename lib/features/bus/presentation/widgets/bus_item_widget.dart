import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/widgets/theme_button.dart';
import 'package:levy/features/commons/widgets/theme_divider_line.dart';
import 'package:levy/features/commons/widgets/theme_pill.dart';

final class BusItemWidget extends StatelessWidget {
  const BusItemWidget({
    super.key,
    required this.item,
    required this.onItemPressed,
  });

  final BusEntity item;
  final VoidCallback onItemPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ThemeColors.dark,
        ),
        borderRadius: BorderRadius.circular(ThemeSizes.medium),
      ),
      child: Column(
        children: [
          _buildItemTitle(),
          _buildItemImage(),
          _buildItemPills(),
          ThemeDividerLine(),
          _buildItemButton(),
        ],
      ),
    );
  }

  Widget _buildItemTitle() {
    return Padding(
      padding: const EdgeInsets.all(ThemeSizes.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Best Route',
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

  Widget _buildItemImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ThemeSizes.medium),
      child: Image.network(item.image),
    );
  }

  Widget _buildItemPills() {
    return Padding(
      padding: const EdgeInsets.all(ThemeSizes.medium),
      child: SizedBox(
        height: ThemeSizes.large,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: item.amenities.length,
          itemBuilder: (BuildContext context, int index) {
            final amenity = item.amenities[index];

            return ThemePill(title: amenity);
          },
        ),
      ),
    );
  }

  Widget _buildItemButton() {
    return Padding(
      padding: const EdgeInsets.all(ThemeSizes.medium),
      child: ThemeButton(onPressed: onItemPressed, title: 'Select'),
    );
  }
}
