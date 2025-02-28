// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeatModel _$SeatModelFromJson(Map<String, dynamic> json) => SeatModel(
      letter: json['letter'] as String? ?? '',
      number: (json['number'] as num?)?.toInt() ?? 0,
      reservedBy: json['reservedBy'] as String?,
    );

Map<String, dynamic> _$SeatModelToJson(SeatModel instance) => <String, dynamic>{
      'letter': instance.letter,
      'number': instance.number,
      'reservedBy': instance.reservedBy,
    };
