import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/commons/widgets/theme_icon_widget.dart';
import 'package:levy/features/commons/widgets/theme_list_item_widget.dart';
import 'package:levy/features/commons/widgets/theme_user_profile_header_widget.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';
import 'package:levy/features/user/presentation/utils/user_translation.dart';

final class UserWidget extends StatelessWidget {
  const UserWidget({
    super.key,
    required this.user,
  });

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: UserTranslation.header.title,
      ),
      body: ListView(
        children: [
          ThemeUserProfileHeaderWidget(user: user),
          const SizedBox(height: 16),
          ThemeListItemWidget(
            title: UserTranslation.items.account.title,
            subtitle: UserTranslation.items.account.description,
            trailing: ThemeIconWidget(icon: ThemeIcons.arrowSmallRight),
          ),
          ThemeListItemWidget(
            title: UserTranslation.items.reservations.title,
            subtitle: UserTranslation.items.reservations.description,
            trailing: ThemeIconWidget(icon: ThemeIcons.arrowSmallRight),
          ),
          ThemeListItemWidget(
            title: UserTranslation.items.configurations.title,
            subtitle: UserTranslation.items.configurations.description,
            trailing: ThemeIconWidget(icon: ThemeIcons.arrowSmallRight),
          ),
          ThemeListItemWidget(
            title: UserTranslation.items.support.title,
            subtitle: UserTranslation.items.support.description,
            trailing: ThemeIconWidget(icon: ThemeIcons.arrowSmallRight),
          ),
          ThemeListItemWidget(
            title: UserTranslation.items.about.title,
            subtitle: UserTranslation.items.about.description,
            trailing: ThemeIconWidget(icon: ThemeIcons.arrowSmallRight),
            showBorder: false,
          ),
        ],
      ),
    );
  }
}
