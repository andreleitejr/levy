import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/bus/enums/bus_result_type.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

abstract class GetBusUseCase {
  Future<List<BusEntity>> get({
    required SearchEntity search,
    required BusResultType resultType,
  });
}
