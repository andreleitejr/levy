import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/address/presentation/pages/address_page.dart';
import 'package:levy/features/notification/presentation/pages/notification_page.dart';
import 'package:levy/features/search/data/models/search_model.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final searchEntity = SearchModel(
    departureAddress: const AddressModel(
      street: 'First St',
      city: 'Cityville',
      state: 'State',
      postalCode: '12345',
      country: 'Country',
      latitude: 12.34,
      longitude: 56.78,
    ),
    returnAddress: const AddressModel(
      street: 'Second St',
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
      home: NotificationPage(),
    );
  }
}