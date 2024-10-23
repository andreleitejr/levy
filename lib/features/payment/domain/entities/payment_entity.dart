abstract class PaymentEntity {
  const PaymentEntity();

  String get transaction;
  double get amount;
  String get method;
  String get currency;
  String get description;
  String get datetime;
  bool get isSuccessful;
}