import 'package:levy/features/commons/entities/departure_entity.dart';

abstract class SearchEntity {
  const SearchEntity();

  DepartureEntity get homeDeparture;
  DepartureEntity get workDeparture;
}
