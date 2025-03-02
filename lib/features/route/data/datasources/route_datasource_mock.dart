import 'package:injectable/injectable.dart';
import 'package:levy/features/route/data/datasources/route_datasource.dart';
import 'package:levy/features/route/data/models/route_model.dart';
import 'package:levy/features/route/mock/route_mock.dart';
import 'package:levy_core/core.dart';

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
