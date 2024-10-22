import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/bus/enums/bus_result_type.dart';
import 'package:levy/features/bus/presentation/pages/bus_page.dart';
import 'package:levy/features/search/data/models/search_model.dart';
import 'package:levy/features/search/presentation/pages/search_page.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final search = SearchModel(
    homeAddress: const AddressModel(
      street: 'First St',
      city: 'Cityville',
      state: 'State',
      postalCode: '12345',
      country: 'Country',
      latitude: 12.34,
      longitude: 56.78,
    ),
    workAddress: const AddressModel(
      street: 'Airport Rd',
      city: 'Townsville',
      state: 'State',
      postalCode: '67890',
      country: 'Country',
      latitude: 98.76,
      longitude: 54.32,
    ),
    departureTime: '08:00',
    returnTime: '17:00', // 17:00
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: BusPage(search: searchEntity),
      home: SearchPage(),
    );
  }
}
