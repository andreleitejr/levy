import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/user/domain/usecases/get_user_usecase.dart';
import 'package:levy/features/user/domain/usecases/get_user_usecase_impl.dart';
import 'package:levy/features/user/presentation/providers/user_repository_provider.dart';

final userUseCaseProvider = Provider<GetUserUseCase>((ref) {
  return GetUserUseCaseImpl(ref.read(userRepositoryProvider));
});
