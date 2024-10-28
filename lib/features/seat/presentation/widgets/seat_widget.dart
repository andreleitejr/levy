import 'package:flutter/material.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';
import 'package:levy/features/seat/presentation/utils/seat_translation.dart';

class SeatWidget extends StatelessWidget {
  const SeatWidget({
    super.key,
    required this.items,
    required this.selectedItem,
    required this.onItemPressed,
    required this.onButtonPressed,
    this.onPop,
  });

  final List<SeatEntity> items;
  final SeatEntity? selectedItem;
  final Function(SeatEntity item) onItemPressed;
  final VoidCallback onButtonPressed;
  final VoidCallback? onPop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: SeatTranslation.header.title,
        onLeadingPressed: onPop,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // 4 colunas
                childAspectRatio: 1,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                final isSelected = selectedItem?.letter == item.letter &&
                    selectedItem?.number == item.number;

                return GestureDetector(
                  onTap: item.isReserved ? null : () => onItemPressed,
                  child: Container(
                    decoration: BoxDecoration(
                      color: item.isReserved
                          ? Colors.grey
                          : isSelected
                              ? Colors.black
                              : Colors.blue,
                      border: Border.all(color: Colors.black),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '${item.letter}${item.number}',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: onButtonPressed,
            child: const Text('Confirmar Seleção'),
          ),
        ],
      ),
    );
  }
}
