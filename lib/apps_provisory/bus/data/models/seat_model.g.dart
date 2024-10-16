// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeatModel _$SeatModelFromJson(Map<String, dynamic> json) => SeatModel(
      id: json['id'] as String,
      label: json['label'] as String,
      isReserved: json['isReserved'] as bool,
      reservedBy: json['reservedBy'] as String?,
    );

Map<String, dynamic> _$SeatModelToJson(SeatModel instance) => <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'isReserved': instance.isReserved,
      'reservedBy': instance.reservedBy,
    };
