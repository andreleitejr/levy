//
// import 'package:levy/apps_provisory/bus/data/datasources/bus_datasource.dart';
// import 'package:levy/apps_provisory/bus/data/models/bus_model.dart';
//
// class BusDataSourceImpl implements BusDataSource {
//   BusDataSourceImpl({required FirebaseFirestore firestore}) : _firestore = firestore;
//
//   final FirebaseFirestore _firestore;
//
//   @override
//   Future<List<BusModel>> get() async {
//     final snapshot = await _firestore.collection('buses').get();
//     return snapshot.docs
//         .map((doc) => BusModel.fromJson(doc.data() as Map<String, dynamic>))
//         .toList();
//   }
//
//   @override
//   Future<void> add(BusModel bus) async {
//     await _firestore.collection('buses').doc().set(bus.toJson());
//   }
//
//   @override
//   Future<void> edit(BusModel bus) async {
//     await _firestore.collection('buses').doc().update(bus.toJson());
//   }
// }