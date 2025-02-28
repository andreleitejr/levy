import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/user/data/datasources/user_datasource.dart';
import 'package:levy/features/user/data/datasources/user_datasource_mock.dart';

final userDataSourceProvider = Provider<UserDataSource>((ref) {
  return UserDataSourceMock();
});
