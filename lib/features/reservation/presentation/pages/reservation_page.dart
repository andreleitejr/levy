import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/reservation/presentation/providers/reservation_notifier_provider.dart';

@RoutePage()
class ReservationPage extends ConsumerWidget {
  const ReservationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(reservationNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Reservations')),
      body: state.reservation != null
          ? Center(child: Text('Reservation successful: ${state.reservation!.seatNumber}'))
          : state.errorMessage != null
          ? Center(child: Text(state.errorMessage!))
          : Center(child: CircularProgressIndicator()),
    );
  }
}