import 'package:injectable/injectable.dart';
import 'package:levy/features/driver/domain/entities/driver_entity.dart';
import 'package:levy/features/driver/domain/repositories/driver_repository.dart';
import 'package:levy/features/driver/domain/usecases/get_driver_usecase.dart';

@Injectable(as: GetDriverUseCase)
final class GetDriverUseCaseImpl implements GetDriverUseCase {
  const GetDriverUseCaseImpl(this._repository);

  final DriverRepository _repository;

  @override
  Future<DriverEntity> call(String id) async {
    return _repository.get(id);
  }
}
