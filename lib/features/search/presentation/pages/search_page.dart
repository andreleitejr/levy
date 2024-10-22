import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/core/router/app_router.gr.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/bus/enums/bus_result_type.dart';
import 'package:levy/features/commons/models/departure_model.dart';
import 'package:levy/features/search/data/models/search_model.dart';
import 'package:levy/features/search/presentation/providers/search_notifier_provider.dart';

@RoutePage()
class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchState = ref.watch(searchNotifierProvider);
    final searchNotifier = ref.read(searchNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Buscar Ônibus'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Endereço de Partida',
              ),
              onTap: () async {
                final selectedAddress =
                    await context.router.push<AddressEntity>(AddressRoute());

                if (selectedAddress != null) {
                  searchNotifier.updateHomeAddress(selectedAddress);
                }
              },
              readOnly: true,
              controller: TextEditingController(
                  text: searchState.homeAddress?.street ?? ''),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Endereço de Retorno',
              ),
              onTap: () async {
                // Navega para a feature de seleção de endereço (address feature)
                final selectedAddress =
                    await context.router.push<AddressEntity>(AddressRoute());

                if (selectedAddress != null) {
                  searchNotifier.updateWorkAddress(selectedAddress);
                }
              },
              readOnly: true,
              controller: TextEditingController(
                  text: searchState.workAddress?.street ?? ''),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Horário de Partida',
              ),
              onTap: () async {
                // Navega para a feature de seleção de horário (time feature)
                // final selectedTime =
                //     await Navigator.pushNamed(context, '/time');
                // if (selectedTime is String) {
                //   searchNotifier.updateHomeTime(selectedTime);
                // }
                searchNotifier.updateHomeTime('06:00');
              },
              readOnly: true,
              controller:
                  TextEditingController(text: searchState.departureTime),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Horário de Retorno',
              ),
              onTap: () async {
                // // Navega para a feature de seleção de horário (time feature)
                // final selectedTime =
                //     await Navigator.pushNamed(context, '/time');
                // if (selectedTime is String) {
                //   searchNotifier.updateWorkTime(selectedTime);
                // }

                searchNotifier.updateWorkTime('17:00');
              },
              readOnly: true,
              controller: TextEditingController(text: searchState.returnTime),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: searchState.isValid
                  ? () {
                      final homeDeparture = DepartureModel(
                        address:
                            AddressModel.fromEntity(searchState.homeAddress!),
                        time: searchState.departureTime!,
                      );
                      final workDeparture = DepartureModel(
                        address:
                            AddressModel.fromEntity(searchState.workAddress!),
                        time: searchState.returnTime!,
                      );
                      final searchModel = SearchModel(
                        homeDeparture: homeDeparture,
                        workDeparture: workDeparture,
                      );
                      context.router.push(
                        BusRoute(
                          search: searchModel,
                          resultType: BusResultType.home,
                        ),
                      ); // Navega para a AddressPage
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    searchState.isValid ? Colors.blue : Colors.grey,
              ),
              child: const Text('Ir para Ônibus'),
            ),
          ],
        ),
      ),
    );
  }
}
