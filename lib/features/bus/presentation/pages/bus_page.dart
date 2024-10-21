import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/enums/bus_result_type.dart';
import 'package:levy/features/bus/presentation/providers/bus_notifier_provider.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

class BusPage extends ConsumerStatefulWidget {
  const BusPage({
    super.key,
    required this.search,
    required this.resultType,
  });

  final SearchEntity search;
  final BusResultType resultType;

  @override
  ConsumerState<BusPage> createState() => _BusPageState();
}

class _BusPageState extends ConsumerState<BusPage> {
  @override
  void initState() {
    super.initState();
    ref.read(busNotifierProvider.notifier).init(
      search: widget.search,
      resultType: widget.resultType,
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(busNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Bus List'),
      ),
      body: state.errorMessage != null
          ? Center(child: Text(state.errorMessage!))
          : state.buses.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: state.buses.length,
        itemBuilder: (context, index) {
          final bus = state.buses[index];
          return ListTile(
            leading: Image.network(bus.image),
            title: Text('${bus.brand} ${bus.model}'),
            subtitle: Text('Capacity: ${bus.capacity}'),
            trailing: Text(bus.isAccessible ? 'Accessible' : 'Not Accessible'),
          );
        },
      ),
    );
  }
}
