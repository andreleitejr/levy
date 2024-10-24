import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

part 'reservation_model.g.dart';

@JsonSerializable(createToJson: false)
class ReservationModel extends ReservationEntity {
  const ReservationModel({
    this.reservationId = '',
    this.userId = '',
    this.paymentId = '',
    this.date = '',
    this.departureBus = const BusModel(),
    this.returnBus = const BusModel(),
  });

  @override
  final String reservationId;

  @override
  final String userId;

  @override
  final String paymentId;

  @override
  final String date;

  @override
  final BusModel departureBus;

  @override
  final BusModel returnBus;

  factory ReservationModel.fromJson(Map<String, dynamic> json) => _$ReservationModelFromJson(json);
}