import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/driver/domain/entities/driver_entity.dart';

part 'driver_model.g.dart';

@JsonSerializable(createToJson: false)
final class DriverModel extends DriverEntity {
  const DriverModel({
    this.id = '',
     this.image = '',
     this.name = '',
     this.birthday = '',
     this.licenseNumber = '',
     this.licenseType = '',
     this.experienceYears = 3,
     this.address = const AddressModel(),
  });

  @override
  final String id;
  @override
  final String image;
  @override
  final String name;
  @override
  final String birthday;
  @override
  final String licenseNumber;
  @override
  final String licenseType;
  @override
  final int experienceYears;
  @override
  final AddressModel address;

  factory DriverModel.fromJson(Map<String, dynamic> data) => _$DriverModelFromJson(data);
}
