import 'package:injectable/injectable.dart';
import 'package:levy/features/driver/driver.dart';

@Injectable(as: GetDriverUseCase)
final class GetDriverUseCaseImpl implements GetDriverUseCase {
  const GetDriverUseCaseImpl(this._repository);

  final DriverRepository _repository;

  @override
  Future<DriverEntity> call(String id) async {
    return _repository.get(id);
  }
}
