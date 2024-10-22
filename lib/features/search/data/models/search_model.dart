import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/commons/models/departure_model.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

part 'search_model.g.dart';

@JsonSerializable(createToJson: false)
final class SearchModel extends SearchEntity {
  const SearchModel({
    this.homeDeparture = const DepartureModel(),
    this.workDeparture = const DepartureModel(),
  });

  @override
  final DepartureModel homeDeparture;
  @override
  final DepartureModel workDeparture;

  factory SearchModel.fromJson(Map<String, dynamic> data) => _$SearchModelFromJson(data);
}
