import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/commons/widgets/theme_icon_widget.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';

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
      titleSpacing: ThemeSizes.large,
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(user.image),
            radius: 24,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome,',
                style: ThemeTypography.pattern,
              ),
              Text(
                '${user.name} ${user.lastName}',
                style: ThemeTypography.pattern,
              ),
            ],
          ),
          Spacer(),
          ThemeIconWidget(
            onIconPressed: onActionPressed,
            icon: ThemeIcons.pattern,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
