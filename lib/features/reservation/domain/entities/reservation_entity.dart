import 'package:levy_shared_entities/entities.dart';

abstract class ReservationEntity {
  const ReservationEntity();

  String get reservationId;
  String get userId;
  String get paymentId;
  String get date;
  BusEntity? get departureBus;
  BusEntity? get returnBus;
}
