// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) => SearchModel(
      homeDeparture: json['homeDeparture'] == null
          ? const DepartureModel()
          : DepartureModel.fromJson(
              json['homeDeparture'] as Map<String, dynamic>),
      workDeparture: json['workDeparture'] == null
          ? const DepartureModel()
          : DepartureModel.fromJson(
              json['workDeparture'] as Map<String, dynamic>),
    );
