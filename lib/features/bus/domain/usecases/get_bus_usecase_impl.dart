import 'package:injectable/injectable.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/bus/domain/repositories/bus_repository.dart';
import 'package:levy/features/bus/domain/usecases/get_bus_usecase.dart';
import 'package:levy/features/search/data/models/search_model.dart';

@Injectable(as: GetBusUseCase)
final class GetBusUseCaseImpl implements GetBusUseCase {
  const GetBusUseCaseImpl(this._repository);

  final BusRepository _repository;

  @override
  Future<List<BusEntity>> call(SearchModel search,) async {
    return _repository.get(search);
  }
}
