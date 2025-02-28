import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/address.dart';

final addressUseCaseProvider = Provider<GetAddressUseCase>((ref) {
  return GetAddressUseCaseImpl(ref.read(addressRepositoryProvider));
});
