import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';
import 'package:levy_shared_entities/entities.dart';

part 'user_model.g.dart';

@JsonSerializable(createToJson: true)
final class UserModel extends UserEntity {
  const UserModel({
    this.id = '',
    this.name = '',
    this.lastName = '',
    this.age = 0,
    this.email = '',
    this.phoneNumber = '',
    this.birthday = '',
    this.image = '',
    this.address = const AddressModel(),
  });

  @override
  final String id;

  @override
  final String name;

  @override
  final String lastName;

  @override
  final int age;

  @override
  final String email;

  @override
  final String phoneNumber;

  @override
  final String birthday;

  @override
  final String image;

  @override
  final AddressModel address;

  factory UserModel.fromJson(Map<String, dynamic> data) => _$UserModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
