import 'package:flutter/material.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

class ReservationWidget extends StatelessWidget {
  const ReservationWidget({
    super.key,
    required this.items,
  });

  final List<ReservationEntity> items;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
