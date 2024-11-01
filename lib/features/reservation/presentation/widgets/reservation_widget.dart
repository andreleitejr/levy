import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/commons/widgets/theme_ticket_widget.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/reservation/presentation/utils/reservation_translation.dart';

class ReservationWidget extends StatelessWidget {
  const ReservationWidget({
    super.key,
    required this.reservations,
  });

  final List<ReservationEntity> reservations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: ReservationTranslation.header.title,
      ),
      body: Column(
        children: [
          ThemeTicketWidget(bus: reservations.first.departureBus),
          SizedBox(height: ThemeSizes.large),
          ThemeTicketWidget(bus: reservations.first.returnBus),
          SizedBox(height: ThemeSizes.large),
        ],
      ),
    );
  }
}
