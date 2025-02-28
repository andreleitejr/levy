import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme.dart';
import 'package:levy/features/notification/notification.dart';

final class NotificationWidget extends StatelessWidget {
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
        leadingIcon: ThemeIcons.arrowLeft,
        onLeadingPressed: onPop,
        title: NotificationTranslation.header.title,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return NotificationListItemWidget(item: item, onItemPressed: onItemPressed);
        },
      ),
    );
  }
}
