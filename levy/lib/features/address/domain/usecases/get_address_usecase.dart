import 'package:levy/features/address/address.dart';

abstract class GetAddressUseCase {
  Future<List<AddressEntity>> call();
}
