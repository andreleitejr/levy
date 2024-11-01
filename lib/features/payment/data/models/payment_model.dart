import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/payment/domain/entities/payment_entity.dart';

part 'payment_model.g.dart';

@JsonSerializable(createToJson: false)
final class PaymentModel extends PaymentEntity {
  const PaymentModel({
    this.id = '',
    this.amount = 0,
    this.method = '',
    this.currency = '',
    this.description = '',
    this.datetime = '',
  });

  @override
  final String id;

  @override
  final double amount;

  @override
  final String method;

  @override
  final String currency;

  @override
  final String description;

  @override
  final String datetime;

  factory PaymentModel.fromJson(Map<String, dynamic> data) => _$PaymentModelFromJson(data);
}
