import 'package:flutter/material.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/utils/commons_translation.dart';
import 'package:levy/features/commons/widgets/theme_home_app_bar_widget.dart';
import 'package:levy/features/commons/widgets/theme_ticket_widget.dart';
import 'package:levy/features/home/presentation/utils/home_translation.dart';
import 'package:levy/features/home/presentation/widgets/home_warning_widget.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';

final class HomeReservationInfoWidget extends StatelessWidget {
  const HomeReservationInfoWidget({
    super.key,
    required this.user,
    required this.reservation,
    required this.onNotificationButtonPressed,
  });

  final UserEntity user;
  final ReservationEntity reservation;
  final VoidCallback onNotificationButtonPressed;

  DateTime? _parseTime(String? time, DateTime now) {
    if (time == null) return null;
    final parts = time.split(':');
    if (parts.length != 2) return null;
    final hours = int.tryParse(parts[0]);
    final minutes = int.tryParse(parts[1]);
    if (hours == null || minutes == null) return null;

    return DateTime(now.year, now.month, now.day, hours, minutes);
  }

  String _calculateArrivalTime() {
    final now = DateTime.now();

    final departureBusTime = reservation.departureBus?.routes.first.departureTime;
    final returnBusTime = reservation.returnBus?.routes.last.departureTime;

    final departureDateTime = _parseTime(departureBusTime, now);
    final returnDateTime = _parseTime(returnBusTime, now);

    DateTime? nextBusDateTime;

    if (departureDateTime != null && now.isBefore(departureDateTime)) {
      nextBusDateTime = departureDateTime;
    } else if (returnDateTime != null && now.isBefore(returnDateTime)) {
      nextBusDateTime = returnDateTime;
    }

    if (nextBusDateTime != null) {
      final difference = nextBusDateTime.difference(now);

      if (difference.inHours > 0) {
        return '${difference.inHours} ${CommonsTranslation.time.hours.toLowerCase()}';
      } else {
        return '${difference.inMinutes} ${CommonsTranslation.time.minutes.toLowerCase()}';
      }
    }

    return '';
  }

  BusEntity? _getNextBus() {
    final now = DateTime.now();

    final departureBusTime = reservation.departureBus?.routes.first.departureTime;
    final returnBusTime = reservation.returnBus?.routes.last.departureTime;

    final departureDateTime = _parseTime(departureBusTime, now);
    final returnDateTime = _parseTime(returnBusTime, now);

    if (departureDateTime != null && now.isBefore(departureDateTime)) {
      return reservation.departureBus;
    } else if (returnDateTime != null && now.isBefore(returnDateTime)) {
      return reservation.returnBus;
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    final nextBus = _getNextBus();
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
            HomeWarningWidget(arrivalTime: _calculateArrivalTime()),
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
