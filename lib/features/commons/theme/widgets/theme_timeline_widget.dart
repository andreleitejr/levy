import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_images.dart';
import 'package:levy/core/theme/theme_typography.dart';

final class ThemeTimelineWidget extends StatelessWidget {
  const ThemeTimelineWidget({
    super.key,
    required this.startTime,
    required this.endTime,
  });

  final String startTime;
  final String endTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          startTime,
          style: ThemeTypography.semiBold16.apply(
            color: ThemeColors.primary,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Row(
            children: [
              _buildDashedLine(isStart: true),
              const SizedBox(width: 4),
              Container(
                padding: const EdgeInsets.all(4),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: ThemeColors.primary,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  ThemeImages.bus,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 4),
              _buildDashedLine(isEnd: true),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Text(
          endTime,
          style: ThemeTypography.semiBold16.apply(
            color: ThemeColors.primary,
          ),
        ),
      ],
    );
  }

  Widget _buildDashedLine({
    bool isStart = false,
    bool isEnd = false,
  }) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final dashWidth = 3;
          final gapWidth = 6;
          final maxWidth = constraints.maxWidth;

          final dashCount = (maxWidth / (dashWidth + gapWidth)).floor();

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(dashCount, (index) {
              final isFirst = isStart && index == 0;
              final isLast = isEnd && index == dashCount - 1;
              final width = isFirst || isLast ? 8 : dashWidth;
              final height = isFirst || isLast ? 8 : 3;

              return Row(
                children: [
                  Container(
                    width: width.toDouble(),
                    height: height.toDouble(),
                    decoration: BoxDecoration(
                      color: isFirst || isLast
                          ? ThemeColors.primary
                          : ThemeColors.tertiary,
                      shape: BoxShape.circle,
                    ),
                  ),
                  if (index != dashCount - 1)
                    SizedBox(
                      width: gapWidth.toDouble(),
                    ),
                ],
              );
            }),
          );
        },
      ),
    );
  }
}
