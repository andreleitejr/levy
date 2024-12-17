import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/commons/widgets/theme_button.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';
import 'package:levy/features/seat/presentation/utils/seat_translation.dart';
import 'package:levy/features/seat/presentation/widgets/seat_description_widget.dart';
import 'package:levy/features/seat/presentation/widgets/seat_selection_widget.dart';

final class SeatWidget extends StatelessWidget {
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
        leadingIcon: ThemeIcons.arrowLeft,
        onLeadingPressed: onPop,
        title: SeatTranslation.header.title,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SeatDescriptionWidget(),
          const SizedBox(height: 16),
          Expanded(
            child: SeatSelectionWidget(
              items: items,
              selectedItem: selectedItem,
              onItemPressed: onItemPressed,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: ThemeColors.grey2,
                  width: 0.5
                )
              )
            ),
            child: ThemeButton(
              onPressed: onButtonPressed,
              title: SeatTranslation.button.title,
            ),
          ),
        ],
      ),
    );
  }
}
