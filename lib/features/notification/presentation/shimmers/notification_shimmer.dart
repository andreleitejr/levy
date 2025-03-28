
import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/features/commons/shimmers/theme_list_item_shimmer.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/notification/presentation/utils/notification_translation.dart';

final class NotificationShimmer extends StatelessWidget {
  const NotificationShimmer({
    super.key,
    required this.onPop,
  });

  final VoidCallback onPop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: NotificationTranslation.header.title,
        onLeadingPressed: onPop,
        leadingIcon: ThemeIcons.arrowLeft,
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return ThemeListItemShimmer();
        },
      ),
    );
  }
}
