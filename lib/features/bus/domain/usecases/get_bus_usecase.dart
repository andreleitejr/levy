import 'package:levy/features/bus/bus.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

abstract class GetBusUseCase {
  Future<List<BusEntity>> call(SearchEntity search);
}
