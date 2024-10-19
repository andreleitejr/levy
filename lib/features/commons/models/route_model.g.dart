// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteModel _$RouteModelFromJson(Map<String, dynamic> json) => RouteModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      origin: json['origin'] == null
          ? const AddressModel()
          : AddressModel.fromJson(json['origin'] as Map<String, dynamic>),
      destination: json['destination'] == null
          ? const AddressModel()
          : AddressModel.fromJson(json['destination'] as Map<String, dynamic>),
      stops: (json['stops'] as List<dynamic>?)
              ?.map((e) => AddressModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AddressModel>[],
      distance: (json['distance'] as num?)?.toDouble() ?? 0,
      duration: json['duration'] as String? ?? '',
      departureTime: json['departureTime'] as String? ?? '',
      arrivalTime: json['arrivalTime'] as String? ?? '',
      isActive: json['isActive'] as bool? ?? true,
    );
