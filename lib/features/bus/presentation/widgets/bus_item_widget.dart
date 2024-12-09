import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/core/theme/theme_images.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/bus/presentation/utils/bus_translation.dart';
import 'package:levy/features/commons/widgets/theme_button.dart';
import 'package:levy/features/commons/widgets/theme_divider_line.dart';
import 'package:levy/features/commons/widgets/theme_icon_widget.dart';
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
          color: ThemeColors.grey2,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          _buildItemTitle(),
          _buildItemImage(),
          _buildItemPills(),
          ThemeDividerLine(color: ThemeColors.grey2),
          _buildItemButton(),
        ],
      ),
    );
  }

  Widget _buildItemTitle() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            BusTranslation.results.title,
            style: ThemeTypography.regular12.apply(color: ThemeColors.primary),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                item.routes.first.origin.street,
                style: ThemeTypography.semiBold16,
              ),
              const SizedBox(width: 16),
              ThemeIconWidget(
                icon: ThemeIcons.arrowRight,
                color: ThemeColors.primary,
              ),
              const SizedBox(width: 16),
              Text(
                item.routes.first.destination.street,
                style: ThemeTypography.semiBold16,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildItemImage() {
    final image = ThemeImages.getImageByString(item.image);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildItemPills() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: 24,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: item.amenities.length,
          itemBuilder: (BuildContext context, int index) {
            final amenity = item.amenities[index];

            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: ThemePill(title: amenity),
            );
          },
        ),
      ),
    );
  }

  Widget _buildItemButton() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ThemeButton(
        onPressed: onItemPressed,
        title: BusTranslation.button.title,
      ),
    );
  }
}
