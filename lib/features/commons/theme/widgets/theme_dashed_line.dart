import 'package:flutter/material.dart';
import 'package:levy/features/commons/theme/widgets/theme_dashed_line_painter.dart';

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
    return CustomPaint(
      size: Size(
        direction == Axis.horizontal ? double.infinity : thickness,
        direction == Axis.vertical ? double.infinity : thickness,
      ),
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
