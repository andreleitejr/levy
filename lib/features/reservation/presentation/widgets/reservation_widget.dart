import 'package:flutter/material.dart';
import 'package:levy/features/commons/utils/commons_translation.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/commons/widgets/theme_ticket_widget.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/reservation/presentation/utils/reservation_translation.dart';

final class ReservationWidget extends StatelessWidget {
  const ReservationWidget({
    super.key,
    required this.reservation,
  });

  final ReservationEntity reservation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: ReservationTranslation.header.title,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          ThemeTicketWidget(
            title: CommonsTranslation.returnTicket.title,
            bus: reservation.departureBus!,
          ),
          SizedBox(height: 8),
          ThemeTicketWidget(
            title: CommonsTranslation.returnTicket.title,
            bus:reservation.returnBus!,
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
