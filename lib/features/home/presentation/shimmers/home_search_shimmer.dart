import 'package:flutter/material.dart';
import 'package:levy/features/home/presentation/shimmers/home_shimmers.dart';
import 'package:levy_theme/core/theme/theme.dart';
import 'package:shimmer/shimmer.dart';

final class HomeShimmer extends StatelessWidget {
  const HomeShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBarShimmer(),
      body: _buildShimmerBody(context),
      bottomNavigationBar: HomeBottomBarShimmer(),
    );
  }

  Widget _buildShimmerBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Shimmer.fromColors(
        baseColor: ThemeColors.grey2,
        highlightColor: ThemeColors.grey1,
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 288,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
