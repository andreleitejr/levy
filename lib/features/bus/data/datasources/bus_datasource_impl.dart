import 'package:injectable/injectable.dart';
import 'package:levy/core/inject/inject_env.dart';
import 'package:levy/features/bus/bus.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

@Injectable(as: BusDataSource, env: [InjectEnv.impl])
final class BusDataSourceImpl implements BusDataSource {
  @override
  Future<List<BusModel>> get(SearchEntity search) async {
    return [];
  }
}
