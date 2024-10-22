import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';
import 'package:levy/features/seat/presentation/providers/seat_provider.dart';

@RoutePage()
class SeatPage extends ConsumerWidget {
  final List<SeatEntity> seats;

  const SeatPage({super.key, required this.seats});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seatNotifier = ref.watch(seatProvider(seats));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleção de Assentos'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // 4 colunas
                childAspectRatio: 1,
              ),
              itemCount: seatNotifier.seats.length,
              itemBuilder: (context, index) {
                final seat = seatNotifier.seats[index];
                final isSelected =
                    seatNotifier.selectedSeat?.letter == seat.letter &&
                        seatNotifier.selectedSeat?.number == seat.number;

                return GestureDetector(
                  onTap: seat.isReserved
                      ? null
                      : () {
                          ref
                              .read(seatProvider(seats).notifier)
                              .selectSeat(seat);
                        },
                  child: Container(
                    decoration: BoxDecoration(
                      color: seat.isReserved
                          ? Colors.grey
                          : isSelected
                              ? Colors.black
                              : Colors.blue,
                      border: Border.all(color: Colors.black),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '${seat.letter}${seat.number}',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final selectedSeat = seatNotifier.selectedSeat;
              if (selectedSeat != null) {
                context.router.maybePop(selectedSeat);
              }
            },
            child: const Text('Confirmar Seleção'),
          ),
        ],
      ),
    );
  }
}
