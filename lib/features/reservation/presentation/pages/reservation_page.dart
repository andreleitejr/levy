import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/reservation/presentation/providers/reservation_notifier_provider.dart';

@RoutePage()
class ReservationPage extends ConsumerStatefulWidget {
  const ReservationPage({super.key});

  @override
  ConsumerState<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends ConsumerState<ReservationPage> {
  @override
  void initState() {
    super.initState();
    ref.read(reservationNotifierProvider.notifier).get('reservation_id_aqui');
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(reservationNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Reservations')),
      body: state.reservation != null
          ? Center(
              child: Text(
                  'Reservation successful: ${state.reservation?.reservationId}'))
          : state.errorMessage != null
              ? Center(child: Text(state.errorMessage!))
              : Center(child: CircularProgressIndicator()),
    );
  }
}
