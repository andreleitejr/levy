import 'package:injectable/injectable.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/address/domain/repositories/address_repository.dart';
import 'package:levy/features/address/domain/usecases/get_address_usecase.dart';

@Injectable(as: GetAddressUseCase)
final class GetAddressUseCaseImpl implements GetAddressUseCase {
  const GetAddressUseCaseImpl(this._repository);

  final AddressRepository _repository;

  @override
  Future<List<AddressEntity>> execute() async => _repository.get();
}
