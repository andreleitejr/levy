// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) => SearchModel(
      departureAddress: json['departureAddress'] == null
          ? const AddressModel()
          : AddressModel.fromJson(
              json['departureAddress'] as Map<String, dynamic>),
      returnAddress: json['returnAddress'] == null
          ? const AddressModel()
          : AddressModel.fromJson(
              json['returnAddress'] as Map<String, dynamic>),
      departureTime: json['departureTime'] as String? ?? '',
      returnTime: json['returnTime'] as String? ?? '',
    );
