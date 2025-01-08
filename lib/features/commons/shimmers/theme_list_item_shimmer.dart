import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:shimmer/shimmer.dart';

final class ThemeListItemShimmer extends StatelessWidget {
  const ThemeListItemShimmer({
    super.key,
    this.showImageShimmer = true,
  });

  final bool showImageShimmer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: ThemeColors.grey2,
        ),
      )),
      child: Shimmer.fromColors(
        baseColor: ThemeColors.grey2,
        highlightColor: ThemeColors.grey1,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 24),
          minVerticalPadding: 28,
          leading: showImageShimmer
              ? ClipOval(
                  child: Container(
                    width: 48,
                    height: 48,
                    color: Colors.black,
                  ),
                )
              : null,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 120),
                height: 16,
                color: Colors.black,
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                constraints: BoxConstraints(maxWidth: 280),
                width: double.infinity,
                height: 12,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
