import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/bus/domain/entities/seat_entity.dart';

part 'seat_model.g.dart';

@JsonSerializable(createToJson: false)
final class SeatModel extends SeatEntity {
  const SeatModel({
    this.id = '',
    this.label = '',
    this.isReserved = true,
    this.reservedBy = '',
  });

  @override
  final String id;
  @override
  final String label;
  @override
  final bool isReserved;
  @override
  final String? reservedBy;

  factory SeatModel.fromJson(Map<String, dynamic> data) => _$SeatModelFromJson(data);
}
