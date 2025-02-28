import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme.dart';
import 'package:levy/features/commons/theme/widgets/theme_widgets.dart';

final class ThemeScheduleWidget extends StatelessWidget {
  const ThemeScheduleWidget({
    super.key,
    required this.departureTime,
    required this.arrivalTime,
    required this.departureAddressTitle,
    required this.arrivalAddressTitle,
    required this.departureAddressLine,
    required this.arrivalAddressLine,
    this.padding = const EdgeInsets.all(16),
  });

  final String departureTime;
  final String arrivalTime;
  final String departureAddressTitle;
  final String arrivalAddressTitle;
  final String departureAddressLine;
  final String arrivalAddressLine;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        children: [
          ThemeTimelineWidget(
            startTime: departureTime,
            endTime: arrivalTime,
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                departureAddressTitle,
                style: ThemeTypography.semiBold14,
              ),
              Text(
                arrivalAddressTitle,
                style: ThemeTypography.semiBold14,
                textAlign: TextAlign.end,
              ),
            ],
          ),
          const SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 100,
                ),
                child: Text(
                  departureAddressLine,
                  style: ThemeTypography.regular10,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 100,
                ),
                child: Text(
                  arrivalAddressLine,
                  style: ThemeTypography.regular10,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
