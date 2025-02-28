import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme.dart';
import 'package:shimmer/shimmer.dart';

final class ThemeListItemShimmer extends StatelessWidget {
  const ThemeListItemShimmer({
    super.key,
    this.showImageShimmer = true,
    this.imageGeometry = ThemeImageGeometry.circle,
  });

  final bool showImageShimmer;
  final ThemeImageGeometry imageGeometry;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ThemeColors.grey2,
          ),
        ),
      ),
      child: Shimmer.fromColors(
        baseColor: ThemeColors.grey2,
        highlightColor: ThemeColors.grey1,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 24),
          minVerticalPadding: 28,
          leading: showImageShimmer ? _buildLeadingImage() : null,
          title: Row(
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 120),
                height: 16,
                color: Colors.black,
              ),
            ],
          ),
          subtitle: Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 8),
                constraints: BoxConstraints(maxWidth: 200),
                height: 12,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLeadingImage() {
    if (imageGeometry == ThemeImageGeometry.circle) {
      return ClipOval(
        child: Container(
          width: 48,
          height: 48,
          color: Colors.black,
        ),
      );
    } else {
      return Container(
        height: 24,
        width: 36,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(4),
        ),
      );
    }
  }
}
