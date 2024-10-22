import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/core/router/app_router.gr.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/bus/enums/bus_result_type.dart';
import 'package:levy/features/bus/presentation/pages/bus_page.dart';
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
                final selectedAddress = await context.router.push<AddressEntity>(AddressRoute());

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
                    await Navigator.pushNamed(context, '/address');
                if (selectedAddress is AddressEntity) {
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
                final selectedTime =
                    await Navigator.pushNamed(context, '/time');
                if (selectedTime is String) {
                  searchNotifier.updateDepartureTime(selectedTime);
                }
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
                // Navega para a feature de seleção de horário (time feature)
                final selectedTime =
                    await Navigator.pushNamed(context, '/time');
                if (selectedTime is String) {
                  searchNotifier.updateReturnTime(selectedTime);
                }
              },
              readOnly: true,
              controller: TextEditingController(text: searchState.returnTime),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: searchState.isValid
                  ? () {
                      final searchModel = SearchModel(
                        homeAddress:
                            AddressModel.fromEntity(searchState.homeAddress!),
                        workAddress:
                            AddressModel.fromEntity(searchState.workAddress!),
                        departureTime: searchState.departureTime!,
                        returnTime: searchState.returnTime!,
                      );
                      context.router.push(
                        BusRoute(
                          search: searchModel,
                          resultType: BusResultType.home,
                        ),
                      ); // Navega para a AddressPage
                    }
                  : null,
              child: const Text('Ir para Ônibus'),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    searchState.isValid ? Colors.blue : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
