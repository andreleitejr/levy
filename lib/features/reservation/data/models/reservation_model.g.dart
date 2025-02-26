// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationModel _$ReservationModelFromJson(Map<String, dynamic> json) =>
    ReservationModel(
      reservationId: json['reservationId'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      paymentId: json['paymentId'] as String? ?? '',
      date: json['date'] as String? ?? '',
      departureBus: json['departureBus'] == null
          ? const BusModel()
          : BusModel.fromJson(json['departureBus'] as Map<String, dynamic>),
      returnBus: json['returnBus'] == null
          ? const BusModel()
          : BusModel.fromJson(json['returnBus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReservationModelToJson(ReservationModel instance) =>
    <String, dynamic>{
      'reservationId': instance.reservationId,
      'userId': instance.userId,
      'paymentId': instance.paymentId,
      'date': instance.date,
      'departureBus': instance.departureBus,
      'returnBus': instance.returnBus,
    };
