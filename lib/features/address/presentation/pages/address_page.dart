import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/address/presentation/providers/address_notifier_provider.dart';
import 'package:levy/features/address/presentation/states/address_state.dart';
import 'package:levy/features/address/presentation/widgets/address_widget.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';

@RoutePage()
class AddressPage extends ConsumerStatefulWidget {
  const AddressPage({
    super.key,
  });

  @override
  ConsumerState<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends ConsumerState<AddressPage> {
  @override
  void initState() {
    super.initState();
    ref.read(addressNotifierProvider.notifier).init();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addressNotifierProvider);

    return StateBuilder<AddressState, AddressEntity>(
      state: state,
      loadingBuilder: () => const Center(child: CircularProgressIndicator()),
      errorBuilder: (message) => Text('Error'),
      successBuilder: (data) => AddressWidget(
        items: data,
        onPop: () => context.router.back(),
        onItemPressed: (item) => context.router.maybePop<AddressEntity>(item),
      ),
    );
  }
}
