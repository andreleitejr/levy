import 'package:injectable/injectable.dart';
import 'package:levy/features/bus/bus.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';
import 'package:levy_core/core.dart';

@Injectable(as: BusDataSource, env: [InjectEnv.impl])
final class BusDataSourceImpl implements BusDataSource {
  @override
  Future<List<BusModel>> get(SearchEntity search) async {
    return [];
  }
}
