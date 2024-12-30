import 'package:flutter/material.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/widgets/theme_home_app_bar_widget.dart';
import 'package:levy/features/commons/widgets/theme_ticket_widget.dart';
import 'package:levy/features/home/presentation/utils/home_translation.dart';
import 'package:levy/features/home/presentation/widgets/home_warning_widget.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';

final class HomeReservationWidget extends StatelessWidget {
  const HomeReservationWidget({
    super.key,
    required this.user,
    required this.reservation,
    required this.onNotificationButtonPressed,
    this.bus,
    required this.arrivalTime,
  });

  final UserEntity user;
  final ReservationEntity reservation;
  final VoidCallback onNotificationButtonPressed;
  final BusEntity? bus;
  final String arrivalTime;

  @override
  Widget build(BuildContext context) {
    final nextBus = bus;
    final isReturnBus = nextBus == reservation.returnBus;

    return Scaffold(
      appBar: ThemeHomeAppBarWidget(
        user: user,
        onActionPressed: onNotificationButtonPressed,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            HomeWarningWidget(arrivalTime: arrivalTime),
            const SizedBox(height: 16),
            if (nextBus != null)
              ThemeTicketWidget(
                title: HomeTranslation.reservation.ticket.title,
                bus: nextBus,
                showDriverInfo: true,
                isReturnBus: isReturnBus,
              ),
          ],
        ),
      ),
    );
  }
}
