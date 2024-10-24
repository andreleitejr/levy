import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/payment/domain/entities/payment_entity.dart';

part 'payment_model.g.dart';

@JsonSerializable(createToJson: false)
final class PaymentModel extends PaymentEntity {
  const PaymentModel({
    this.transaction = '',
    this.amount = 0,
    this.method = '',
    this.currency = '',
    this.description = '',
    this.datetime = '',
    this.isSuccessful = false,
  });

  @override
  final String transaction;

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

  @override
  final bool isSuccessful;

  factory PaymentModel.fromJson(Map<String, dynamic> data) => _$PaymentModelFromJson(data);
}
