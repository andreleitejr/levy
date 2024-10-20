import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/notification/providers/notification_notifier_provider.dart';
import 'package:levy/features/bus/presentation/states/bus_state.dart';

class NotificationPage extends ConsumerStatefulWidget {
  const NotificationPage({
    super.key,
  });

  @override
  ConsumerState<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends ConsumerState<NotificationPage> {
  @override
  void initState() {
    super.initState();
    ref.read(notificationNotifierProvider.notifier).init();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(notificationNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Notification List'),
      ),
      body: state == BusState.initial()
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: state.notifications.length,
              itemBuilder: (context, index) {
                final notification = state.notifications[index];
                return ListTile(
                  title: Text(notification.title),
                  subtitle: Text(notification.subtitle),
                );
              },
            ),
    );
  }
}
