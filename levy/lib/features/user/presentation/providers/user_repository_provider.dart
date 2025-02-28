import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/user/data/repositories/user_repository_impl.dart';
import 'package:levy/features/user/domain/repositories/user_repository.dart';
import 'package:levy/features/user/presentation/providers/user_datasource_provider.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepositoryImpl(ref.read(userDataSourceProvider));
});
