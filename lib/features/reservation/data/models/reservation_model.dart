import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy_shared_entities/entities.dart';

part 'reservation_model.g.dart';

@JsonSerializable(createToJson: true, includeIfNull: false)
final class ReservationModel extends ReservationEntity {
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

  Map<String, dynamic> toJson() => _$ReservationModelToJson(this);
}
