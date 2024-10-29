import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/commons/widgets/theme_loading_page.dart';
import 'package:levy/features/notification/presentation/providers/notification_notifier_provider.dart';
import 'package:levy/features/notification/presentation/widgets/notification_widget.dart';

@RoutePage()
final class NotificationPage extends ConsumerStatefulWidget {
  const NotificationPage({
    super.key,
  });

  @override
  ConsumerState<NotificationPage> createState() => _NotificationPageState();
}

final class _NotificationPageState extends ConsumerState<NotificationPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(notificationNotifierProvider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(notificationNotifierProvider);

    return StateBuilder(
      state: state,
      loading: ThemeLoadingWidget(),
      success: NotificationWidget(
        items: state.data,
        onPop: () => context.router.back(),
        onItemPressed: (item) {},
      ),
      error: ThemeErrorWidget(
        message: state.errorMessage,
      ),
    );
  }
}
