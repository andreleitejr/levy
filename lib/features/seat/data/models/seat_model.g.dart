// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeatModel _$SeatModelFromJson(Map<String, dynamic> json) => SeatModel(
      id: json['id'] as String? ?? '',
      letter: json['letter'] as String? ?? '',
      number: (json['number'] as num?)?.toInt() ?? 0,
      reservedBy: json['reservedBy'] as String?,
    );
