import 'package:injectable/injectable.dart';
import 'package:levy/features/bus/bus.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

@Injectable(as: GetBusUseCase)
final class GetBusUseCaseImpl implements GetBusUseCase {
  const GetBusUseCaseImpl(this._repository);

  final BusRepository _repository;

  @override
  Future<List<BusEntity>> call(SearchEntity search) async {
    return _repository.get(search);
  }
}
