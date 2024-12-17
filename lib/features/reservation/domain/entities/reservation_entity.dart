import 'package:levy/features/bus/domain/entities/bus_entity.dart';

abstract class ReservationEntity {
  const ReservationEntity();

  String get reservationId;
  String get userId;
  String get paymentId;
  String get date;
  String get departureBusId;
  String get returnBusId;

  BusEntity? get departureBus;
  BusEntity? get returnBus;
}