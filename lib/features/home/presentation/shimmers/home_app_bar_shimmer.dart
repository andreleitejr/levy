import 'package:flutter/material.dart';
import 'package:levy_theme/core/theme/theme.dart';
import 'package:shimmer/shimmer.dart';

final class HomeAppBarShimmer extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBarShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 24,
      toolbarHeight: 72,
      title: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Shimmer.fromColors(
          baseColor: ThemeColors.grey2,
          highlightColor: ThemeColors.grey1,
          child: Row(
            children: [
              _buildShimmerContainer(48, 48),
              const SizedBox(width: 16),
              _buildShimmerColumn(context),
              const Spacer(),
              _buildShimmerContainer(24, 24),
            ],
          ),
        ),
      ),
    );
  }

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

  Widget _buildShimmerColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildShimmerContainer(100, 12),
        const SizedBox(height: 4),
        _buildShimmerContainer(140, 16),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(72);
}
