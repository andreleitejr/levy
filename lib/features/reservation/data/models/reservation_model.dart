import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

part 'reservation_model.g.dart';

@JsonSerializable(createToJson: true)
class ReservationModel extends ReservationEntity {
  const ReservationModel({
    this.reservationId = '',
    this.userId = '',
    this.paymentId = '',
    this.date = '',
    this.departureBusId = '',
    this.returnBusId = '',
    this.departureBus,
    this.returnBus,
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
  final String departureBusId;

  @override
  final String returnBusId;

  @override
  final BusModel? departureBus;

  @override
  final BusModel? returnBus;

  factory ReservationModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationModelToJson(this);
}
