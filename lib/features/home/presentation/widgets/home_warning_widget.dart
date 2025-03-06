import 'package:flutter/material.dart';
import 'package:levy/features/home/home.dart';
import 'package:levy_theme/core/theme/theme.dart';

final class HomeWarningWidget extends StatelessWidget {
  const HomeWarningWidget({
    super.key,
    required this.arrivalTime,
    required this.onViewMapButtonPressed,
  });

  final String arrivalTime;
  final VoidCallback onViewMapButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: ThemeColors.secondary,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  HomeTranslation.reservation.warning.title,
                  style: ThemeTypography.regular12.apply(
                    color: ThemeColors.primary,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: onViewMapButtonPressed,
                child: Text(
                  HomeTranslation.reservation.warning.textButton,
                  style: ThemeTypography.semiBold12.apply(
                    color: ThemeColors.primary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            HomeTranslation.reservation.warning.description(time: arrivalTime),
            style: ThemeTypography.semiBold14,
          ),
        ],
      ),
    );
  }
}
