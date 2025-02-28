abstract class PaymentMethodEntity {
  const PaymentMethodEntity();

  String get methodType;
  String get brand;
  String get image;
  String get cardHolderName;
  String get cardNumber;
  String get expiryDate;
  String get cvv;
  String get currency;
  String get billingAddress;
  bool get preferred;
}
