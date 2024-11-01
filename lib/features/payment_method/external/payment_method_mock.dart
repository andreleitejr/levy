final class PaymentMethodMock {
  const PaymentMethodMock._();

  static final response = [
    {
      'methodType': 'Credit Card',
      'brand': 'Visa',
      'cardHolderName': 'John Doe',
      'cardNumber': '4111111111111111',
      'expiryDate': '12/25',
      'cvv': '123',
      'currency': 'USD',
      'billingAddress': '123 First St, Metropolis, NY, 10001, USA',
      'preferred': true,
    },
    {
      'methodType': 'Credit Card',
      'brand': 'MasterCard',
      'cardHolderName': 'John Doe',
      'cardNumber': '5500000000000004',
      'expiryDate': '11/24',
      'cvv': '456',
      'currency': 'USD',
      'billingAddress': '123 First St, Metropolis, NY, 10001, USA',
      'preferred': false,
    },
    {
      'methodType': 'Debit Card',
      'brand': 'Visa',
      'cardHolderName': 'John Doe',
      'cardNumber': '4000000000000002',
      'expiryDate': '10/23',
      'cvv': '789',
      'currency': 'USD',
      'billingAddress': '123 First St, Metropolis, NY, 10001, USA',
      'preferred': false,
    },
  ];
}
