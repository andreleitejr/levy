import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';

part 'payment_method_model.g.dart';

@JsonSerializable(createToJson: true)
final class PaymentMethodModel extends PaymentMethodEntity {
  const PaymentMethodModel({
    this.methodType = '',
    this.brand = '',
    this.image = '',
    this.cardHolderName = '',
    this.cardNumber = '',
    this.expiryDate = '',
    this.cvv = '',
    this.currency = '',
    this.billingAddress = '',
    this.preferred = false,
  });

  @override
  final String methodType;

  @override
  final String brand;

  @override
  final String image;

  @override
  final String cardHolderName;

  @override
  final String cardNumber;

  @override
  final String expiryDate;

  @override
  final String cvv;

  @override
  final String currency;

  @override
  final String billingAddress;

  @override
  final bool preferred;

  factory PaymentMethodModel.fromJson(Map<String, dynamic> data) => _$PaymentMethodModelFromJson(data);

  Map<String, dynamic> toJson() => _$PaymentMethodModelToJson(this);
}