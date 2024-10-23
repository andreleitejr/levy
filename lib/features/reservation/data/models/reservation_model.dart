import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

part 'reservation_model.g.dart';

@JsonSerializable(createToJson: false)
class ReservationModel extends ReservationEntity {
  const ReservationModel({
    required this.seatNumber,
    required this.busId,
  });

  @override
  final String seatNumber;
  @override
  final String busId;

  factory ReservationModel.fromJson(Map<String, dynamic> json) => _$ReservationModelFromJson(json);
}