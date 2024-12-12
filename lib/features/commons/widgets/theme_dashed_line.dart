
import 'package:flutter/material.dart';

final class ThemeDashedLineWidget extends StatelessWidget {
  final Axis direction;
  final double dashLength;
  final double dashSpacing;
  final Color color;
  final double thickness;

  const ThemeDashedLineWidget({
    super.key,
    this.direction = Axis.horizontal,
    this.dashLength = 5,
    this.dashSpacing = 3,
    this.color = Colors.black,
    this.thickness = 1,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
        direction == Axis.horizontal ? double.infinity : thickness,
        direction == Axis.vertical ? double.infinity : thickness,
      ),
      painter: DashedLinePainter(
        direction: direction,
        dashLength: dashLength,
        dashSpacing: dashSpacing,
        color: color,
        thickness: thickness,
      ),
    );
  }
}



class DashedLinePainter extends CustomPainter {
  final Axis direction;
  final double dashLength;
  final double dashSpacing;
  final Color color;
  final double thickness;

  DashedLinePainter({
    required this.direction,
    required this.dashLength,
    required this.dashSpacing,
    required this.color,
    required this.thickness,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = thickness;

    double start = 0;
    final max = direction == Axis.horizontal ? size.width : size.height;

    while (start < max) {
      if (direction == Axis.horizontal) {
        canvas.drawLine(
          Offset(start, 0),
          Offset(start + dashLength, 0),
          paint,
        );
      } else {
        canvas.drawLine(
          Offset(0, start),
          Offset(0, start + dashLength),
          paint,
        );
      }
      start += dashLength + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

