// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusModel _$BusModelFromJson(Map<String, dynamic> json) => BusModel(
      id: json['id'] as String? ?? '',
      image: json['image'] as String? ?? '',
      brand: json['brand'] as String? ?? '',
      model: json['model'] as String? ?? '',
      year: json['year'] as String? ?? '',
      color: json['color'] as String? ?? '',
      capacity: (json['capacity'] as num?)?.toInt() ?? 32,
      amenities: (json['amenities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      licensePlate: json['licensePlate'] as String? ?? '',
      chassisNumber: json['chassisNumber'] as String? ?? '',
      isAccessible: json['isAccessible'] as bool? ?? true,
      driver: json['driver'] == null
          ? const DriverModel()
          : DriverModel.fromJson(json['driver'] as Map<String, dynamic>),
      routes: (json['routes'] as List<dynamic>?)
              ?.map((e) => RouteModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <RouteModel>[],
      seats: (json['seats'] as List<dynamic>?)
              ?.map((e) => SeatModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SeatModel>[],
    );
