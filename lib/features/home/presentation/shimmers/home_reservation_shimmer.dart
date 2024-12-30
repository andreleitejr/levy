import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/features/home/presentation/shimmers/home_app_bar_shimmer.dart';
import 'package:levy/features/home/presentation/shimmers/home_bottom_bar_shimmer.dart';
import 'package:shimmer/shimmer.dart';

final class HomeReservationShimmer extends StatelessWidget {
  const HomeReservationShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeShimmerAppBar(),
      body: _buildShimmerBody(context),
      bottomNavigationBar: HomeBottomBarShimmer(),
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

  Widget _buildShimmerBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Shimmer.fromColors(
        baseColor: ThemeColors.grey2,
        highlightColor: ThemeColors.grey1,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const SizedBox(height: 48),
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                _buildShimmerContainer(double.infinity, 200),
                _buildShimmerContainer(double.infinity, 98),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  height: 48,
                  width: MediaQuery.of(context).size.width - 74,
                  color: Colors.black,
                  transform: Matrix4.translationValues(0.0, -98.5, 0.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
