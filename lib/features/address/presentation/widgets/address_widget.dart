import 'package:flutter/material.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/commons/widgets/theme_list_item_widget.dart';

class AddressWidget extends StatelessWidget {
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
      appBar: ThemeAppBarWidget(title: 'Address List'),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return ThemeListItemWidget(
            title: item.street,
            subtitle: item.state,
          );
        },
      ),
    );
  }
}
