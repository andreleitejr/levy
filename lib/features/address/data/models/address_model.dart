import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';

part 'address_model.g.dart';

@JsonSerializable(createToJson: false)
final class AddressModel extends AddressEntity {
  const AddressModel({
    this.street = '',
    this.city = '',
    this.state = '',
    this.postalCode = '',
    this.country = '',
    this.latitude = 0,
    this.longitude = 0,
  });

  @override
  final String street;
  @override
  final String city;
  @override
  final String state;
  @override
  final String postalCode;
  @override
  final String country;
  @override
  final double latitude;
  @override
  final double longitude;

  factory AddressModel.fromJson(Map<String, dynamic> data) => _$AddressModelFromJson(data);
}
