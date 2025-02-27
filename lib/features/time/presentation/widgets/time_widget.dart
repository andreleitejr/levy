import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme.dart';
import 'package:levy/features/commons/theme/widgets/theme_widgets.dart';
import 'package:levy/features/time/presentation/utils/time_translation.dart';
import 'package:numberpicker/numberpicker.dart';

final class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
    required this.selectedHour,
    required this.selectedMinute,
    required this.onHourSelected,
    required this.onMinuteSelected,
    required this.onButtonPressed,
    required this.onPop,
  });

  final int selectedHour;
  final int selectedMinute;
  final Function(int) onHourSelected;
  final Function(int) onMinuteSelected;
  final VoidCallback onButtonPressed;
  final VoidCallback onPop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: TimeTranslation.header.title,
        onLeadingPressed: onPop,
        leadingIcon: ThemeIcons.arrowLeft,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTimePickers(),
          const SizedBox(height: 96),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ThemeButton(
          onPressed: onButtonPressed,
          title: TimeTranslation.button.title,
        ),
      ),
    );
  }

  Widget _buildTimePickers() {
    return Center(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 268,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPicker(
              value: selectedHour,
              minValue: 0,
              maxValue: 23,
              onChanged: onHourSelected,
            ),
            const SizedBox(width: 16),
            Container(
              width: 1,
              height: 200,
              color: ThemeColors.grey2,
            ),
            const SizedBox(width: 16),
            _buildPicker(
              value: selectedMinute,
              minValue: 0,
              maxValue: 55,
              step: 5,
              onChanged: onMinuteSelected,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPicker({
    required int value,
    required int minValue,
    required int maxValue,
    int step = 1,
    required Function(int) onChanged,
  }) {
    return Stack(
      children: [
        NumberPicker(
          value: value,
          minValue: minValue,
          maxValue: maxValue,
          step: step,
          itemCount: 5,
          onChanged: onChanged,
          textStyle: ThemeTypography.medium42.apply(color: ThemeColors.grey3),
          selectedTextStyle: ThemeTypography.medium42,
          itemHeight: 72,
          haptics: true,
          zeroPad: true,
        ),
        ..._buildGradientOverlay(),
      ],
    );
  }

  List<Widget> _buildGradientOverlay() {
    return [
      Positioned(
        left: 0,
        right: 0,
        top: 0,
        child: _buildOverlayContainer(
          colors: [
            Colors.white,
            Colors.white.withOpacity(0.2),
          ],
        ),
      ),
      Positioned(
        left: 0,
        right: 0,
        bottom: 0,
        child: _buildOverlayContainer(
          colors: [
            Colors.white.withOpacity(0.2),
            Colors.white,
          ],
        ),
      ),
    ];
  }

  Widget _buildOverlayContainer({required List<Color> colors}) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
      ),
    );
  }
}
