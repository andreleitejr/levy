// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodModel _$PaymentMethodModelFromJson(Map<String, dynamic> json) =>
    PaymentMethodModel(
      methodType: json['methodType'] as String? ?? '',
      brand: json['brand'] as String? ?? '',
      image: json['image'] as String? ?? '',
      cardHolderName: json['cardHolderName'] as String? ?? '',
      cardNumber: json['cardNumber'] as String? ?? '',
      expiryDate: json['expiryDate'] as String? ?? '',
      cvv: json['cvv'] as String? ?? '',
      currency: json['currency'] as String? ?? '',
      billingAddress: json['billingAddress'] as String? ?? '',
      preferred: json['preferred'] as bool? ?? false,
    );

Map<String, dynamic> _$PaymentMethodModelToJson(PaymentMethodModel instance) =>
    <String, dynamic>{
      'methodType': instance.methodType,
      'brand': instance.brand,
      'image': instance.image,
      'cardHolderName': instance.cardHolderName,
      'cardNumber': instance.cardNumber,
      'expiryDate': instance.expiryDate,
      'cvv': instance.cvv,
      'currency': instance.currency,
      'billingAddress': instance.billingAddress,
      'preferred': instance.preferred,
    };
