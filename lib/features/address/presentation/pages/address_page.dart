import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/address/presentation/providers/address_notifier_provider.dart';
import 'package:levy/features/bus/presentation/states/bus_state.dart';

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

    return Scaffold(
      appBar: AppBar(
        title: Text('Address List'),
      ),
      body: state == BusState.initial()
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: state.addresses.length,
              itemBuilder: (context, index) {
                final address = state.addresses[index];
                return ListTile(
                  onTap: () => context.router.maybePop<AddressEntity>(address),
                  title: Text(address.street),
                  subtitle: Text(address.city),
                );
              },
            ),
    );
  }
}
