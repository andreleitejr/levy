import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';

final class ThemeUserAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ThemeUserAppBar({
    super.key,
    required this.user,
  });

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ThemeColors.pattern,
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
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                '${user.name} ${user.lastName}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              print('Notifications tapped');
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
