import 'package:flutter/material.dart';
import 'package:levy/features/bus/bus.dart';
import 'package:levy/features/home/home.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';
import 'package:levy_core/core.dart';

final class HomeReservationWidget extends StatelessWidget {
  const HomeReservationWidget({
    super.key,
    required this.user,
    required this.reservation,
    required this.onNotificationButtonPressed,
    required this.onViewMapButtonPressed,
    this.bus,
    required this.arrivalTime,
  });

  final UserEntity user;
  final ReservationEntity reservation;
  final VoidCallback onNotificationButtonPressed;
  final VoidCallback onViewMapButtonPressed;
  final BusEntity? bus;
  final String arrivalTime;

  @override
  Widget build(BuildContext context) {
    final nextBus = bus;
    final isReturnBus = nextBus == reservation.returnBus;

    return Scaffold(
      appBar: ThemeHomeAppBarWidget(
        guestTitle: CommonsTranslation.texts.welcome,
        onActionPressed: onNotificationButtonPressed,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            HomeWarningWidget(
              arrivalTime: arrivalTime,
              onViewMapButtonPressed: onViewMapButtonPressed,
            ),
            const SizedBox(height: 16),
            if (nextBus != null)
              // TODO: Refatorar
              ThemeTicketWidget(
                title: HomeTranslation.reservation.ticket.title,
                busImage: nextBus.image,
                busTitle: nextBus.title,
                busDescription: nextBus.description,
                departureTime: nextBus.routes.first.departureTime,
                departureAddressTitle: nextBus.routes.first.origin.name,
                departureAddressLine: nextBus.routes.first.origin.line,
                arrivalTime: nextBus.routes.first.arrivalTime,
                arrivalAddressTitle: nextBus.routes.first.origin.name,
                arrivalAddressLine: nextBus.routes.first.destination.name,
                driverName: nextBus.driver.name,
                driverImage: nextBus.driver.image,
                showDriverInfo: true,
                isReturnBus: isReturnBus,
              ),
          ],
        ),
      ),
    );
  }
}
