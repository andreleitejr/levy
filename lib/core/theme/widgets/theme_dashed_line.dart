import 'package:flutter/material.dart';
import 'package:levy/features/commons/theme/widgets/theme_widgets.dart';

final class ThemeDashedLineWidget extends StatelessWidget {
  const ThemeDashedLineWidget({
    super.key,
    this.direction = Axis.horizontal,
    this.dashLength = 5,
    this.dashSpacing = 3,
    this.color = Colors.black,
    this.thickness = 1,
  });

  final Axis direction;
  final double dashLength;
  final double dashSpacing;
  final Color color;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    final width = direction == Axis.horizontal ? double.infinity : thickness;
    final height = direction == Axis.vertical ? double.infinity : thickness;

    return CustomPaint(
      size: Size(width, height),
      painter: ThemeDashedLinePainter(
        direction: direction,
        dashLength: dashLength,
        dashSpacing: dashSpacing,
        color: color,
        thickness: thickness,
      ),
    );
  }
}
