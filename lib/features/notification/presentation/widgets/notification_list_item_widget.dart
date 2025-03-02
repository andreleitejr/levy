import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:levy/features/notification/notification.dart';
import 'package:levy_core/core.dart';

final class NotificationListItemWidget extends StatelessWidget {
  const NotificationListItemWidget({
    super.key,
    required this.item,
    required this.onItemPressed,
  });

  final NotificationEntity item;
  final Function(NotificationEntity item) onItemPressed;

  String _formatTime(String datetime) {
    final parsedDate = DateTime.parse(datetime);
    return DateFormat('HH:mm').format(parsedDate);
  }

  @override
  Widget build(BuildContext context) {
    final formattedTime = _formatTime(item.datetime);

    return ThemeListItemWidget(
      image: item.image,
      title: item.title,
      subtitle: item.subtitle,
      trailing: Text(
        formattedTime,
        style: ThemeTypography.regular10.apply(
          color: ThemeColors.grey4,
        ),
      ),
      onPressed: () => onItemPressed(item),
    );
  }
}
