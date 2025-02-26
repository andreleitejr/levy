import 'package:levy/features/bus/external/bus_mock.dart';

final class ReservationMock {
  const ReservationMock._();

  static Map<String, dynamic> getBusById(String id) {
    return BusMock.response.firstWhere((bus) => bus['id'] == id);
  }
  static final response = {
    'reservationId': 'reservation_001',
    'userId': 'user_001',
    'paymentId': 'payment_001',
    'date': '2023-10-10',
    'departureBus': getBusById('f29781f4-85d2-4511-bb8c-b2a151267cb0'),
    'returnBus': getBusById('49471e6f-3f57-48e2-a9e0-6b21c6d3b3d4'),
  };
}
