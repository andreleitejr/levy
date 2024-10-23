final class PaymentMock {
  const PaymentMock._();

  static final response = {
    'transaction': 'trx_001',
    'amount': 399.90,
    'method': 'Credit Card',
    'currency': 'BRL',
    'description': 'Reservation at Hotel ABC',
    'datetime': '2023-10-23 10:00:00',
    'isSuccessful': true,
  };
}
