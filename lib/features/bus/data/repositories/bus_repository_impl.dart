import 'package:injectable/injectable.dart';
import 'package:levy/features/bus/data/datasources/bus_datasource.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/bus/domain/repositories/bus_repository.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

@Injectable(as: BusRepository)
final class BusRepositoryImpl implements BusRepository {
  const BusRepositoryImpl(this._datasource);

  final BusDataSource _datasource;

  @override
  Future<List<BusEntity>> get(SearchEntity search,) async {
    return _datasource.get(search);
  }
}
