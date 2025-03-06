import 'package:flutter/material.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/reservation/presentation/utils/reservation_translation.dart';
import 'package:levy_core/core.dart';
import 'package:levy_theme/core/theme/theme.dart';

final class ReservationWidget extends StatelessWidget {
  const ReservationWidget({
    super.key,
    required this.reservation,
  });

  final ReservationEntity reservation;

  @override
  Widget build(BuildContext context) {
    final departureBus = reservation.departureBus;
    final returnBus = reservation.returnBus;

    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: ReservationTranslation.header.title,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          if (departureBus != null)
            ThemeTicketWidget(
              title: CommonsTranslation.departureTicket.title,
              busImage: departureBus.image,
              busTitle: departureBus.title,
              busDescription: departureBus.description,
              departureTime: departureBus.routes.first.departureTime,
              departureAddressTitle: departureBus.routes.first.origin.name,
              departureAddressLine: departureBus.routes.first.origin.line,
              arrivalTime: departureBus.routes.first.arrivalTime,
              arrivalAddressTitle: departureBus.routes.first.origin.name,
              arrivalAddressLine: departureBus.routes.first.destination.name,
              driverName: departureBus.driver.name,
              driverImage: departureBus.driver.image,
            ),
          SizedBox(height: 8),
          if (returnBus != null)
            ThemeTicketWidget(
              title: CommonsTranslation.returnTicket.title,
              busImage: returnBus.image,
              busTitle: returnBus.title,
              busDescription: returnBus.description,
              departureTime: returnBus.routes.first.departureTime,
              departureAddressTitle: returnBus.routes.first.origin.name,
              departureAddressLine: returnBus.routes.first.origin.line,
              arrivalTime: returnBus.routes.first.arrivalTime,
              arrivalAddressTitle: returnBus.routes.first.origin.name,
              arrivalAddressLine: returnBus.routes.first.destination.name,
              driverName: returnBus.driver.name,
              driverImage: returnBus.driver.image,
            ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
