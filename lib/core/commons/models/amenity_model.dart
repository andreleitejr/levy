import 'package:json_annotation/json_annotation.dart';
import 'package:levy/core/commons/entities/amenity_entity.dart';

part 'amenity_model.g.dart';

@JsonSerializable(createToJson: true)
final class AmenityModel extends AmenityEntity {
  const AmenityModel({
    this.icon = '',
    this.title = '',
  });

  @override
  final String icon;
  @override
  final String title;

  factory AmenityModel.fromJson(Map<String, dynamic> data) => _$AmenityModelFromJson(data);

  Map<String, dynamic> toJson() => _$AmenityModelToJson(this);
}
