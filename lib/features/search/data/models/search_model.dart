import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

part 'search_model.g.dart';

@JsonSerializable(createToJson: false)
final class SearchModel extends SearchEntity {
  const SearchModel({
    this.homeAddress = const AddressModel(),
    this.workAddress = const AddressModel(),
    this.departureTime = '',
    this.returnTime = '',
  });

  @override
  final AddressModel homeAddress;
  @override
  final AddressModel workAddress;
  @override
  final String departureTime;
  @override
  final String returnTime;

  factory SearchModel.fromJson(Map<String, dynamic> data) => _$SearchModelFromJson(data);
}
