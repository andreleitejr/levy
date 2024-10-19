import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/providers/address_notifier_provider.dart';
import 'package:levy/features/bus/presentation/states/bus_state.dart';

class AddressPage extends ConsumerStatefulWidget {
  const AddressPage({
    super.key,
  });

  @override
  _AddressPageState createState() => _AddressPageState();
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
                  title: Text(address.street),
                  subtitle: Text(address.city),
                );
              },
            ),
    );
  }
}
