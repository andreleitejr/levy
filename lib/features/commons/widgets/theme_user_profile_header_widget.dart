import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_images.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';

final class ThemeUserProfileHeaderWidget extends StatelessWidget {
  const ThemeUserProfileHeaderWidget({
    super.key,
    required this.user,
  });

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage:
                AssetImage(ThemeImages.getImageByString(user.image)),
            radius: 24,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${user.name} ${user.lastName}',
                style: ThemeTypography.semiBold16.apply(
                  color: ThemeColors.primary,
                ),
              ),
              Text(
                user.email,
                style: ThemeTypography.regular12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
