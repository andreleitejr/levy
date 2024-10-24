import 'package:levy/features/address/domain/entities/address_entity.dart';

abstract class GetAddressUseCase {
  Future<List<AddressEntity>> call();
}
