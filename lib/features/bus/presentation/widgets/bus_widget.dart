import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/bus/presentation/utils/bus_translation.dart';
import 'package:levy/features/bus/presentation/widgets/bus_item_widget.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';

final class BusWidget extends StatelessWidget {
  const BusWidget({
    super.key,
    required this.items,
    required this.onPop,
    required this.onItemPressed,
  });

  final List<BusEntity> items;
  final VoidCallback onPop;
  final Function(BusEntity item) onItemPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: BusTranslation.header.title,
        onLeadingPressed: onPop,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(ThemeSizes.large),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return Column(
            children: [
              BusItemWidget(
                item: item,
                onItemPressed: () => onItemPressed(item),
              ),
              const SizedBox(height: ThemeSizes.large),
            ],
          );
        },
      ),
    );
  }
}
