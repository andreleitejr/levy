import 'package:injectable/injectable.dart';
import 'package:levy/core/inject/inject_env.dart';
import 'package:levy/features/route/data/datasources/route_datasource.dart';
import 'package:levy/features/route/data/models/route_model.dart';

@Injectable(as: RouteDataSource, env: [InjectEnv.impl])
final class RouteDataSourceImpl implements RouteDataSource {
  @override
  Future<List<RouteModel>> get(List<String> ids) async {
    return [];
  }
}
