import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:levy/features/reservation/data/datasources/reservation_datasource.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

@Injectable(as: ReservationDataSource)
final class ReservationDataSourceImpl implements ReservationDataSource {
  late Database _database;

  Future<void> _initializeDatabase() async {
    final dbPath = await getDatabasesPath();

    debugPrint('Initializing Database...');
    _database = await openDatabase(join(dbPath, 'reservation.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE reservations('
              'reservationId TEXT PRIMARY KEY, '
              'userId TEXT, '
              'paymentId TEXT, '
              'date TEXT, '
              'departureBusId TEXT, '
              'returnBusId TEXT'
              ')',
        );
      },
      version: 1,
    );

    debugPrint('Database is initialized...');
  }

  ReservationDataSourceImpl() {
    _initializeDatabase();
  }

  @override
  Future<bool> createReservation(ReservationModel reservation) async {
    try {
      await _database.insert(
        'reservations',
        reservation.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<ReservationModel?> getReservation(String userId) async {
    try {

      await _initializeDatabase();
      final List<Map<String, dynamic>> maps = await _database.query(
        'reservations',
        where: 'userId = ?',
        whereArgs: [userId],
      );

      return List<ReservationModel>.from(
        maps.map((reservation) => ReservationModel.fromJson(reservation)),
      ).first;
    } catch (e) {
      debugPrint('Failed to get Reservations in internal DataBase: $e');
      return null;
    }
  }
}

