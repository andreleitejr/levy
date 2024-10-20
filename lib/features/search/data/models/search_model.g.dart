// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) => SearchModel(
      homeAddress: json['homeAddress'] == null
          ? const AddressModel()
          : AddressModel.fromJson(json['homeAddress'] as Map<String, dynamic>),
      workAddress: json['workAddress'] == null
          ? const AddressModel()
          : AddressModel.fromJson(json['workAddress'] as Map<String, dynamic>),
      departureTime: json['departureTime'] as String? ?? '',
      returnTime: json['returnTime'] as String? ?? '',
    );
