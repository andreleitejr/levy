import 'package:flutter/material.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/commons/widgets/theme_button.dart';
import 'package:levy/features/time/presentation/utils/time_translation.dart';

final class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
    this.selectedHour,
    this.selectedMinute,
    required this.onHourSelected,
    required this.onMinuteSelected,
    required this.onButtonPressed,
    required this.onPop,
  });

  final int? selectedHour;
  final int? selectedMinute;
  final Function(int) onHourSelected;
  final Function(int) onMinuteSelected;
  final VoidCallback onButtonPressed;
  final VoidCallback onPop;

  bool get isValid => selectedHour != null && selectedMinute != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: TimeTranslation.header.title,
        onLeadingPressed: onPop,
      ),
      body: Column(
        children: [
          Expanded(child:
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildHourList(selectedHour),
                const SizedBox(width: 20),
                _buildMinuteList(selectedMinute),
              ],
            ),
          ),),
          ThemeButton(
            onPressed: onButtonPressed,
            title: 'Ir para Payment',
            valid: isValid,
          )
        ],
      ),
    );
  }

  Widget _buildHourList(int? selectedHour) {
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
            onTap: () => onHourSelected(index),
          );
        },
      ),
    );
  }

  Widget _buildMinuteList(int? selectedMinute) {
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
            onTap: () => onMinuteSelected(minute),
          );
        },
      ),
    );
  }
}
