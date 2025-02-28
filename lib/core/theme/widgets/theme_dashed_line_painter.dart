import 'package:flutter/material.dart';

final class ThemeDashedLinePainter extends CustomPainter {
  const ThemeDashedLinePainter({
    required this.direction,
    required this.dashLength,
    required this.dashSpacing,
    required this.color,
    required this.thickness,
  });

  final Axis direction;
  final double dashLength;
  final double dashSpacing;
  final Color color;
  final double thickness;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = thickness;

    final max = direction == Axis.horizontal ? size.width : size.height;

    double start = 0;

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
