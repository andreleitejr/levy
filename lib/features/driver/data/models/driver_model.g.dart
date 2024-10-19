// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverModel _$DriverModelFromJson(Map<String, dynamic> json) => DriverModel(
      id: json['id'] as String? ?? '',
      image: json['image'] as String? ?? '',
      name: json['name'] as String? ?? '',
      birthday: json['birthday'] as String? ?? '',
      licenseNumber: json['licenseNumber'] as String? ?? '',
      licenseType: json['licenseType'] as String? ?? '',
      experienceYears: (json['experienceYears'] as num?)?.toInt() ?? 3,
      address: json['address'] == null
          ? const AddressModel()
          : AddressModel.fromJson(json['address'] as Map<String, dynamic>),
    );
