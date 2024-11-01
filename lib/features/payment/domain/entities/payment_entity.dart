abstract class PaymentEntity {
  const PaymentEntity();

  String get id;
  double get amount;
  String get method;
  String get currency;
  String get description;
  String get datetime;
}