import 'package:levy/features/route/data/models/route_model.dart';

abstract class RouteDataSource {
  Future<List<RouteModel>> get(List<String> ids);
}