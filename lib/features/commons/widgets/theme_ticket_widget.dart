import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/widgets/theme_dashed_line.dart';
import 'package:levy/features/commons/widgets/theme_list_item_widget.dart';
import 'package:levy/features/commons/widgets/theme_schedule_widget.dart';

final class ThemeTicketWidget extends StatelessWidget {
  const ThemeTicketWidget({
    super.key,
    required this.title,
    required this.bus,
    this.isReturnBus = false,
    this.showDriverInfo = false,
  });

  final String title;
  final BusEntity bus;
  final bool isReturnBus;
  final bool showDriverInfo;

  @override
  Widget build(BuildContext context) {
    final route = isReturnBus ? bus.routes.last : bus.routes.first;

    return Column(
      children: [
        Container(
          transform: Matrix4.translationValues(0.0, 1, 0.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: ThemeColors.secondary,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 3),
                child: Text(
                  title,
                  style: ThemeTypography.regular12.apply(
                    color: ThemeColors.primary,
                  ),
                ),
              ),
              ThemeScheduleWidget(
                padding: const EdgeInsets.fromLTRB(16, 3, 16, 16),
                departureTime: route.departureTime,
                arrivalTime: route.arrivalTime,
                departureAddressTitle: route.origin.name,
                arrivalAddressTitle: route.destination.name,
                departureAddressLine: route.origin.line,
                arrivalAddressLine: route.destination.line,
              ),
              if (showDriverInfo)
                ThemeListItemWidget(
                  image: bus.driver.image,
                  title: bus.driver.name,
                  subtitle: '${bus.licensePlate} - '
                      'Seat: ${bus.seats.first.letter}'
                      '${bus.seats.first.number}',
                  showBorder: false,
                ),
            ],
          ),
        ),
        Container(
          height: 98,
          decoration: BoxDecoration(
            border: Border.all(
              color: ThemeColors.secondary,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: ThemeListItemWidget(
            image: bus.image,
            title: '${bus.brand} ${bus.model}',
            subtitle: '${bus.licensePlate} - '
                'Seat: ${bus.seats.first.letter}'
                '${bus.seats.first.number}',
            showBorder: false,
          ),
        ),
        Container(
          height: 3,
          width: MediaQuery.of(context).size.width - 74,
          padding: const EdgeInsets.symmetric(horizontal: 4),
          transform: Matrix4.translationValues(0.0, -98.5, 0.0),
          decoration: BoxDecoration(color: Colors.white),
          alignment: Alignment.center,
          child: ThemeDashedLineWidget(
            direction: Axis.horizontal,
            dashLength: 5,
            dashSpacing: 3,
            color: ThemeColors.secondary,
            thickness: 1.25,
          ),
        ),
      ],
    );
  }
}
