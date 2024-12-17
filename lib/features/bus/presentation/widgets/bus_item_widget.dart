import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/core/theme/theme_images.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/bus/presentation/utils/bus_translation.dart';
import 'package:levy/features/commons/widgets/theme_button.dart';
import 'package:levy/features/commons/widgets/theme_divider_line.dart';
import 'package:levy/features/commons/widgets/theme_pill.dart';
import 'package:levy/features/commons/widgets/theme_route_title_widget.dart';
import 'package:levy/features/commons/widgets/theme_schedule_widget.dart';

final class BusItemWidget extends StatelessWidget {
  const BusItemWidget({
    super.key,
    required this.item,
    required this.onItemPressed,
  });

  final BusEntity item;
  final VoidCallback onItemPressed;

  @override
  Widget build(BuildContext context) {
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
            firstRouteTitle: item.routes.first.origin.street,
            secondRouteTitle: item.routes.first.destination.street,
          ),
          _buildItemImage(),
          _buildItemPills(),
          ThemeDividerLine(color: ThemeColors.grey2),
          ThemeScheduleWidget(
            departureTime: item.routes.first.departureTime,
            arrivalTime: item.routes.first.arrivalTime,
            departureAddressTitle: item.routes.first.origin.name,
            arrivalAddressTitle: item.routes.first.destination.name,
            departureAddressLine: item.routes.first.origin.line,
            arrivalAddressLine: item.routes.first.destination.line,
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
