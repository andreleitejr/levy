import 'package:levy/features/bus/domain/entities/bus_entity.dart';

abstract class ReservationEntity {
  const ReservationEntity();

  String get reservationId;
  String get userId;
  String get paymentId;
  String get date;
  BusEntity? get departureBus;
  BusEntity? get returnBus;
}