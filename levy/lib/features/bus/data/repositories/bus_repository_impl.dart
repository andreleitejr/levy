import 'package:injectable/injectable.dart';
import 'package:levy/features/bus/bus.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

@Injectable(as: BusRepository)
final class BusRepositoryImpl implements BusRepository {
  const BusRepositoryImpl(this._datasource);

  final BusDataSource _datasource;

  @override
  Future<List<BusEntity>> get(SearchEntity search) async {
    return _datasource.get(search);
  }
}
