import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/address/presentation/utils/address_translation.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/commons/widgets/theme_list_item_widget.dart';
import 'package:levy/features/commons/widgets/theme_search_input_widget.dart';

final class AddressWidget extends StatelessWidget {
  const AddressWidget({
    super.key,
    required this.items,
    required this.onPop,
    required this.onItemPressed,
  });

  final List<AddressEntity> items;
  final VoidCallback onPop;
  final Function(AddressEntity item) onItemPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: AddressTranslation.header.title,
        onLeadingPressed: onPop,
        leadingIcon: ThemeIcons.arrowLeft,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ThemeSearchInputWidget(
                hintText: AddressTranslation.searchInput.hintText,
                icon: ThemeIcons.search,
                onChanged: (value) {},
                onTap: () {},
                enabled: true,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: const SizedBox(height: 24),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final item = items[index];

                final formattedAddress = '${item.number} ${item.street},'
                    ' ${item.city}, ${item.state} ${item.postalCode}';

                return ThemeListItemWidget(
                  onPressed: () => onItemPressed(item),
                  title: item.street,
                  subtitle: formattedAddress,
                );
              },
              childCount: items.length,
            ),
          ),
        ],
      ),
    );
  }
}
