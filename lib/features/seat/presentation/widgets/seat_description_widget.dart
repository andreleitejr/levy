import 'package:flutter/material.dart';
import 'package:levy/features/seat/presentation/utils/seat_translation.dart';
import 'package:levy_core/core.dart';

final class SeatDescriptionWidget extends StatelessWidget {
  const SeatDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildDescriptionItem(
            color: ThemeColors.primary,
            title: SeatTranslation.descriptions.selected,
          ),
          _buildDescriptionItem(
            color: ThemeColors.secondary,
            title: SeatTranslation.descriptions.available,
          ),
          _buildDescriptionItem(
            color: ThemeColors.grey2,
            title: SeatTranslation.descriptions.unavailable,
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionItem({
    required Color color,
    required String title,
  }) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(6),
            ),
            alignment: Alignment.center,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: ThemeTypography.regular12,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
