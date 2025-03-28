import 'package:injectable/injectable.dart';
import 'package:levy/core/commons/domain/enums/inject_env.dart';
import 'package:levy/features/route/data/datasources/route_datasource.dart';
import 'package:levy/features/route/data/models/route_model.dart';
import 'package:levy/features/route/external/route_mock.dart';

@Injectable(as: RouteDataSource, env: [InjectEnv.mock])
final class RouteDataSourceMock implements RouteDataSource {
  @override
  Future<List<RouteModel>> get(List<String> ids) async {
    await Future.delayed(const Duration(milliseconds: 600));

    return RouteMock.response.map<RouteModel>((route) {
      return RouteModel.fromJson(route);
    }).toList();
  }
}
