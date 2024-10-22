import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/time/presentation/providers/time_provider.dart';

@RoutePage()
class TimePage extends ConsumerWidget {
  const TimePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeState = ref.watch(timeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Selecione a Hora'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildHourList(ref, timeState.hour),
            const SizedBox(width: 20),
            _buildMinuteList(ref, timeState.minute),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final formattedTime =
              getFormattedTime(timeState.hour, timeState.minute);
          context.router.maybePop(formattedTime);
        },
        child: const Icon(Icons.check),
      ),
    );
  }

  Widget _buildHourList(WidgetRef ref, int selectedHour) {
    return Expanded(
      child: ListView.builder(
        itemCount: 25,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              index.toString().padLeft(2, '0'),
              style: TextStyle(fontSize: 20),
            ),
            selected: selectedHour == index,
            onTap: () {
              ref.read(timeProvider.notifier).selectHour(index);
            },
          );
        },
      ),
    );
  }

  Widget _buildMinuteList(WidgetRef ref, int selectedMinute) {
    return Expanded(
      child: ListView.builder(
        itemCount: [0, 15, 30, 45].length,
        itemBuilder: (context, index) {
          final minute = [0, 15, 30, 45][index];
          return ListTile(
            title: Text(
              minute.toString(),
              style: TextStyle(fontSize: 20),
            ),
            selected: selectedMinute == minute,
            onTap: () {
              ref.read(timeProvider.notifier).selectMinute(minute);
            },
          );
        },
      ),
    );
  }

  String getFormattedTime(int hour, int minute) {
    final String formattedHour = hour.toString().padLeft(2, '0');
    final String formattedMinute = minute.toString().padLeft(2, '0');
    return '$formattedHour:$formattedMinute';
  }
}
