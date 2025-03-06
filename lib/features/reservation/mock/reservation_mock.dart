import 'package:levy_shared_entities/entities.dart';

final class ReservationMock {
  const ReservationMock._();

  static Map<String, dynamic> getBusById(String id) {
    return BusMock.response.firstWhere((bus) => bus['id'] == id);
  }

  static final response = {
    'reservationId': '3176261a-a10d-4422-8371-f7d8b73d1086',
    'userId': 'f2c52cfd-c017-4491-b9b2-03f49fe64d68',
    'paymentId': '2eb6bb4e-dbef-4bb6-9d09-9c97ae51293b',
    'date': '2023-10-10',
    'departureBus': getBusById('f29781f4-85d2-4511-bb8c-b2a151267cb0'),
    'returnBus': getBusById('49471e6f-3f57-48e2-a9e0-6b21c6d3b3d4'),
  };
}
