import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/notification/notification.dart';
import 'package:levy_core/core.dart';

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

    return ThemeStateBuilder(
      state: state,
      loading: NotificationShimmer(
        onPop: () => context.router.back(),
      ),
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
