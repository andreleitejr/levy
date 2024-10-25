import 'package:flutter/material.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';

class BusWidget extends StatelessWidget {
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
    return const Placeholder();
  }
}
