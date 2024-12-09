import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/widgets/theme_list_item_widget.dart';

final class ThemeTicketWidget extends StatelessWidget {
  const ThemeTicketWidget({
    super.key,
    required this.bus,
  });

  final BusEntity bus;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            border: Border.all(
              color: ThemeColors.dark,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Text(
                'Best Route',
                style: ThemeTypography.regular14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    bus.routes.first.departureTime,
                    style: ThemeTypography.regular14,
                  ),
                  Icon(Icons.bus_alert_rounded),
                  Text(
                    bus.routes.first.arrivalTime,
                    style: ThemeTypography.regular14,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    bus.routes.first.origin.name,
                    style: ThemeTypography.regular14,
                  ),
                  Text(
                    bus.routes.first.destination.name,
                    style: ThemeTypography.regular14,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${bus.routes.first.origin.street}, ${bus.routes.first.origin.number}',
                    style: ThemeTypography.regular14,
                  ),
                  Text(
                    '${bus.routes.first.destination.street}, ${bus.routes.first.destination.number}',
                    style: ThemeTypography.regular14,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: ThemeColors.dark,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              ThemeListItemWidget(
                image: bus.image,
                title: '${bus.brand} ${bus.model}',
                subtitle: '${bus.licensePlate} - Seat: ${bus.seats.first.letter}${bus.seats.first.number}',
              )
            ],
          ),
        ),
      ],
    );
  }
}
