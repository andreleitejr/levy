import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/commons/widgets/theme_list_item_widget.dart';
import 'package:levy/features/notification/domain/entities/notification_entity.dart';
import 'package:levy/features/notification/presentation/utils/notification_translation.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.items,
    required this.onPop,
    required this.onItemPressed,
  });

  final List<NotificationEntity> items;
  final VoidCallback onPop;
  final Function(NotificationEntity item) onItemPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        leadingIcon: ThemeIcons.pattern,
        onLeadingPressed: onPop,
        title: NotificationTranslation.header.title,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return ThemeListItemWidget(
            title: item.title,
            subtitle: item.subtitle,
          );
        },
      ),
    );
  }
}
