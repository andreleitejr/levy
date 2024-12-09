import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/core/theme/theme_images.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/commons/widgets/theme_icon_widget.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';
import 'package:levy/features/user/presentation/utils/user_translation.dart';

final class ThemeUserAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const ThemeUserAppBarWidget({
    super.key,
    required this.user,
    required this.onActionPressed,
  });

  final UserEntity user;
  final VoidCallback onActionPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 24,
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(ThemeImages.getImageByString(user.image)),
            radius: 24,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                UserTranslation.header.welcome,
                style: ThemeTypography.regular12,
              ),
              Text(
                '${user.name} ${user.lastName}',
                style: ThemeTypography.semiBold16.apply(color: ThemeColors.primary),
              ),
            ],
          ),
          Spacer(),
          ThemeIconWidget(
            onIconPressed: onActionPressed,
            icon: ThemeIcons.bell,
            color: ThemeColors.dark,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
