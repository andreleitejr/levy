import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme.dart';
import 'package:levy/features/bus/bus.dart';

final class BusWidget extends StatelessWidget {
  const BusWidget({
    super.key,
    required this.items,
    required this.onPop,
    required this.onItemPressed,
    this.selected,
  });

  final List<BusEntity> items;
  final VoidCallback onPop;
  final Function(BusEntity item) onItemPressed;
  final BusEntity? selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        leadingIcon: ThemeIcons.arrowLeft,
        onLeadingPressed: onPop,
        title: selected != null
            ? BusTranslation.header.returnTitle
            : BusTranslation.header.departureTitle,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            _buildDepartureWidget(),
            ...items.map(
              (item) {
                return Column(
                  children: [
                    BusItemWidget(
                      item: item,
                      onItemPressed: () => onItemPressed(item),
                      isReturn: selected != null,
                    ),
                    const SizedBox(height: 24),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDepartureWidget() {
    final item = selected;

    if (item != null) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: ThemeColors.secondary,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.only(bottom: 24),
        child: ThemeRouteTitleWidget(
          title: BusTranslation.selected.title,
          firstRouteTitle: item.routes.first.origin.street,
          secondRouteTitle: item.routes.first.destination.street,
        ),
      );
    }

    return SizedBox.shrink();
  }
}
