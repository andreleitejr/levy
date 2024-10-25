import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';

part 'seat_model.g.dart';

@JsonSerializable(createToJson: true)
final class SeatModel extends SeatEntity {
  const SeatModel({
    this.letter = '',
    this.number = 0,
    this.reservedBy,
  });

  @override
  final String letter;

  @override
  final int number;

  @override
  final String? reservedBy;

  factory SeatModel.fromJson(Map<String, dynamic> data) => _$SeatModelFromJson(data);

  Map<String, dynamic> toJson() => _$SeatModelToJson(this);
}
