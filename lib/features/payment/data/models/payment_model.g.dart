// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) => PaymentModel(
      transaction: json['transaction'] as String? ?? '',
      amount: (json['amount'] as num?)?.toDouble() ?? 0,
      method: json['method'] as String? ?? '',
      currency: json['currency'] as String? ?? '',
      description: json['description'] as String? ?? '',
      datetime: json['datetime'] as String? ?? '',
      isSuccessful: json['isSuccessful'] as bool? ?? false,
    );
