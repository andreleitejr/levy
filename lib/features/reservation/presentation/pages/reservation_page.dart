import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/reservation/presentation/providers/reservation_notifier_provider.dart';
import 'package:levy/features/reservation/presentation/states/reservation_state.dart';

@RoutePage()
final class ReservationPage extends ConsumerStatefulWidget {
  const ReservationPage({super.key});

  @override
  ConsumerState<ReservationPage> createState() => _ReservationPageState();
}

final class _ReservationPageState extends ConsumerState<ReservationPage> {

  @override
  void initState() {
    super.initState();
    ref.read(reservationNotifierProvider.notifier).init('reservation_id_aqui');
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(reservationNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Reservations')),
      body: StateBuilder<ReservationState, ReservationEntity>(
        state: state,
        loadingBuilder: () => const Center(child: CircularProgressIndicator()),
        errorBuilder: (message) => Text('${state.errorMessage}'),
        successBuilder: (data) => Column(
          children: data
              .map((reservation) => Text('${reservation.reservationId}'))
              .toList(),
        ),
      ),
    );
  }
}
