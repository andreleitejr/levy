import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/domain/usecases/get_address_usecase.dart';
import 'package:levy/features/address/domain/usecases/get_address_usecase_impl.dart';
import 'package:levy/features/address/presentation/providers/address_repository_provider.dart';

final addressUseCaseProvider = Provider<GetAddressUseCase>((ref) {
  return GetAddressUseCaseImpl(ref.read(addressRepositoryProvider));
});
