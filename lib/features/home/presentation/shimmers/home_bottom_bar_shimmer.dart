import 'package:flutter/material.dart';
import 'package:levy_core/core.dart';
import 'package:shimmer/shimmer.dart';

final class HomeBottomBarShimmer extends StatelessWidget {
  const HomeBottomBarShimmer({super.key});

  Widget _buildShimmerContainer(double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(24),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 12, 24, 24),
      child: Shimmer.fromColors(
        baseColor: ThemeColors.grey2,
        highlightColor: ThemeColors.grey1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildShimmerContainer(32, 32),
            _buildShimmerContainer(32, 32),
            _buildShimmerContainer(32, 32),
            _buildShimmerContainer(36, 36),
          ],
        ),
      ),
    );
  }
}
