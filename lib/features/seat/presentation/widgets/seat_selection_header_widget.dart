import 'package:flutter/material.dart';
import 'package:levy_core/core.dart';

final class SeatHeaderWidget extends StatelessWidget {
  const SeatHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildSeatNumber(1),
          _buildSeatNumber(2),
          const SizedBox(width: 24),
          _buildSeatNumber(3),
          _buildSeatNumber(4),
        ],
      ),
    );
  }

  Widget _buildSeatNumber(int number) {
    return SizedBox(
      width: 48,
      child: Text(
        '$number',
        textAlign: TextAlign.center,
        style: ThemeTypography.semiBold14,
      ),
    );
  }
}
