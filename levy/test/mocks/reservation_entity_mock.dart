import 'package:levy/features/bus/bus.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:mocktail/mocktail.dart';

import 'entities_mocks.dart';

final class ReservationEntityMock extends Mock implements ReservationEntity {
  @override
  String get reservationId => 'reservation_001';

  @override
  String get userId => 'user_001';

  @override
  String get paymentId => 'payment_001';

  @override
  String get date => '2023-10-10';

  @override
  BusEntity? get departureBus => BusEntityMock();

  @override
  BusEntity? get returnBus => BusEntityMock();
}
