import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';
import 'package:levy/features/seat/presentation/widgets/seat_selection_header_widget.dart';

final class SeatSelectionWidget extends StatelessWidget {
  const SeatSelectionWidget({
    super.key,
    required this.items,
    required this.selectedItem,
    required this.onItemPressed,
  });

  final List<SeatEntity> items;
  final SeatEntity? selectedItem;
  final Function(SeatEntity item) onItemPressed;

  @override
  Widget build(BuildContext context) {
    final groupedItems = <String, List<SeatEntity>>{};

    for (final item in items) {
      groupedItems.putIfAbsent(item.letter, () => []).add(item);
    }

    return Column(
      children: [
        const SeatHeaderWidget(),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            itemCount: groupedItems.length,
            itemBuilder: (context, rowIndex) {
              final letter = groupedItems.keys.toList()[rowIndex];
              final seats = groupedItems[letter]!;
              final isValid = seats.isNotEmpty;

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildSeatBox(isValid ? seats.removeAt(0) : null),
                    _buildSeatBox(isValid ? seats.removeAt(0) : null),
                    _buildSeatLetter(letter),
                    _buildSeatBox(isValid ? seats.removeAt(0) : null),
                    _buildSeatBox(isValid ? seats.removeAt(0) : null),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSeatBox(SeatEntity? seat) {
    if (seat == null) {
      return SizedBox(width: 48, height: 48);
    }
    
    final isSelected = selectedItem?.letter == seat.letter &&
        selectedItem?.number == seat.number;

    return GestureDetector(
      onTap: seat.isReserved ? null : () => onItemPressed(seat),
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: _getColor(seat, isSelected),
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
      ),
    );
  }

  Color _getColor(SeatEntity seat, bool isSelected) {
    if (seat.isReserved) {
      return ThemeColors.grey2;
    } else if (isSelected) {
      return ThemeColors.primary;
    } else {
      return ThemeColors.secondary;
    }
  }

  Widget _buildSeatLetter(String letter) {
    return SizedBox(
      width: 24,
      child: Text(
        letter,
        textAlign: TextAlign.center,
        style: ThemeTypography.semiBold14,
      ),
    );
  }
}
