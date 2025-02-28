import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme.dart';
import 'package:levy/features/bus/bus.dart';

final class BusItemWidget extends StatelessWidget {
  const BusItemWidget({
    super.key,
    required this.item,
    required this.onItemPressed,
    this.isReturn = false,
  });

  final BusEntity item;
  final VoidCallback onItemPressed;
  final bool isReturn;

  @override
  Widget build(BuildContext context) {
    final route = isReturn ? item.routes.last : item.routes.first;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ThemeColors.grey2,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ThemeRouteTitleWidget(
            padding: const EdgeInsets.all(16),
            title: BusTranslation.results.title,
            firstRouteTitle: route.origin.street,
            secondRouteTitle: route.destination.street,
          ),
          _buildItemImage(),
          _buildItemPills(),
          ThemeDividerLine(color: ThemeColors.grey2),
          ThemeScheduleWidget(
            departureTime: route.departureTime,
            arrivalTime: route.arrivalTime,
            departureAddressTitle: route.origin.name,
            arrivalAddressTitle: route.destination.name,
            departureAddressLine: route.origin.line,
            arrivalAddressLine: route.destination.line,
          ),
          ThemeDividerLine(color: ThemeColors.grey2),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ThemeButton(
              onPressed: onItemPressed,
              title: BusTranslation.button.title,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemImage() {
    final image = ThemeImages.getImageByString(item.image);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildItemPills() {
    return SizedBox(
      height: 56,
      child: ListView.builder(
        padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
        scrollDirection: Axis.horizontal,
        itemCount: item.amenities.length,
        itemBuilder: (BuildContext context, int index) {
          final amenity = item.amenities[index];

          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: ThemePill(
              icon: ThemeIcons.getIconByString(amenity.icon),
              title: amenity.title,
            ),
          );
        },
      ),
    );
  }
}
