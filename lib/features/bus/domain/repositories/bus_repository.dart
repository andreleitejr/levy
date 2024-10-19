import 'package:levy/features/bus/domain/entities/bus_entity.dart';

abstract class BusRepository {
  Future<List<BusEntity>> get();
}
