import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/core/theme/theme_images.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/commons/theme/widgets/theme_icon_widget.dart';
import 'package:levy/features/home/presentation/utils/home_translation.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';
import 'package:levy/features/user/presentation/utils/user_translation.dart';

final class ThemeHomeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const ThemeHomeAppBarWidget({
    super.key,
    this.user,
    this.onActionPressed,
  });

  final UserEntity? user;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 24,
      toolbarHeight: 72,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(_getUserImage()),
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
                  _getUserText(),
                  style: ThemeTypography.semiBold16
                      .apply(color: ThemeColors.primary),
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
      ),
    );
  }

  String _getUserImage() {
    final image = user?.image;

    if (image != null) {
      return ThemeImages.getImageByString(image);
    } else {
      return ThemeImages.avatar;
    }
  }

  String _getUserText() {
    final name = user?.name;
    final lastName = user?.lastName;

    if (name != null && lastName != null) {
      return '$name $lastName';
    } else {
      return HomeTranslation.guest.title;
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(72);
}
