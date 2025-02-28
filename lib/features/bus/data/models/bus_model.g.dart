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
              ?.map((e) => AmenityModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AmenityModel>[],
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
      lastLocation: json['lastLocation'] == null
          ? const LatLng(0, 0)
          : const LatLngConverter()
              .fromJson(json['lastLocation'] as Map<String, double>),
    );

Map<String, dynamic> _$BusModelToJson(BusModel instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'brand': instance.brand,
      'model': instance.model,
      'year': instance.year,
      'color': instance.color,
      'capacity': instance.capacity,
      'amenities': instance.amenities,
      'licensePlate': instance.licensePlate,
      'chassisNumber': instance.chassisNumber,
      'isAccessible': instance.isAccessible,
      'driver': instance.driver,
      'routes': instance.routes,
      'seats': instance.seats,
      'lastLocation': const LatLngConverter().toJson(instance.lastLocation),
    };
