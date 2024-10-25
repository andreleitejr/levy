//@GeneratedMicroModule;LevyPackageModule;package:levy/core/inject/inject.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:injectable/injectable.dart' as _i526;
import 'package:levy/features/address/data/datasources/address_datasource.dart'
    as _i255;
import 'package:levy/features/address/data/datasources/address_datasource_mock.dart'
    as _i845;
import 'package:levy/features/address/data/repositories/address_repository_impl.dart'
    as _i944;
import 'package:levy/features/address/domain/repositories/address_repository.dart'
    as _i834;
import 'package:levy/features/address/domain/usecases/get_address_usecase.dart'
    as _i757;
import 'package:levy/features/address/domain/usecases/get_address_usecase_impl.dart'
    as _i473;
import 'package:levy/features/bus/data/datasources/bus_datasource.dart' as _i63;
import 'package:levy/features/bus/data/datasources/bus_datasource_mock.dart'
    as _i142;
import 'package:levy/features/bus/data/repositories/bus_repository_impl.dart'
    as _i36;
import 'package:levy/features/bus/domain/repositories/bus_repository.dart'
    as _i452;
import 'package:levy/features/bus/domain/usecases/get_bus_usecase.dart'
    as _i245;
import 'package:levy/features/bus/domain/usecases/get_bus_usecase_impl.dart'
    as _i988;
import 'package:levy/features/notification/data/datasources/notification_datasource.dart'
    as _i746;
import 'package:levy/features/notification/data/datasources/notification_datasource_mock.dart'
    as _i23;
import 'package:levy/features/notification/data/repositories/notification_repository_impl.dart'
    as _i1035;
import 'package:levy/features/notification/domain/repositories/notification_repository.dart'
    as _i690;
import 'package:levy/features/notification/domain/usecases/get_notification_usecase.dart'
    as _i565;
import 'package:levy/features/notification/domain/usecases/get_notification_usecase_impl.dart'
    as _i420;
import 'package:levy/features/payment/data/datasources/payment_datasource.dart'
    as _i294;
import 'package:levy/features/payment/data/datasources/payment_datasource_mock.dart'
    as _i958;
import 'package:levy/features/payment/data/repositories/payment_repository_impl.dart'
    as _i913;
import 'package:levy/features/payment/domain/repositories/payment_repository.dart'
    as _i322;
import 'package:levy/features/payment/domain/usecases/process_payment_usecase.dart'
    as _i1050;
import 'package:levy/features/payment/domain/usecases/process_payment_usecase_impl.dart'
    as _i784;
import 'package:levy/features/reservation/data/datasources/reservation_datasource.dart'
    as _i580;
import 'package:levy/features/reservation/data/datasources/reservation_datasource_mock.dart'
    as _i660;
import 'package:levy/features/reservation/data/repositories/reservation_repository_impl.dart'
    as _i28;
import 'package:levy/features/reservation/domain/repositories/reservation_repository.dart'
    as _i426;
import 'package:levy/features/reservation/domain/usecases/create_reservation_usecase.dart'
    as _i125;
import 'package:levy/features/reservation/domain/usecases/create_reservation_usecase_impl.dart'
    as _i718;
import 'package:levy/features/reservation/domain/usecases/get_reservation_usecase.dart'
    as _i243;
import 'package:levy/features/reservation/domain/usecases/get_reservation_usecase_impl.dart'
    as _i1024;

const String _mock = 'mock';

class LevyPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i746.NotificationDataSource>(
      () => _i23.NotificationDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i580.ReservationDataSource>(
      () => _i660.ReservationDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i63.BusDataSource>(
      () => _i142.BusDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i690.NotificationRepository>(() =>
        _i1035.NotificationRepositoryImpl(gh<_i746.NotificationDataSource>()));
    gh.factory<_i294.PaymentDataSource>(
      () => _i958.PaymentDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i255.AddressDataSource>(
      () => _i845.AddressDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i565.GetNotificationUseCase>(() =>
        _i420.GetNotificationUseCaseImpl(gh<_i690.NotificationRepository>()));
    gh.factory<_i834.AddressRepository>(
        () => _i944.AddressRepositoryImpl(gh<_i255.AddressDataSource>()));
    gh.factory<_i322.PaymentRepository>(
        () => _i913.PaymentRepositoryImpl(gh<_i294.PaymentDataSource>()));
    gh.factory<_i757.GetAddressUseCase>(
        () => _i473.GetAddressUseCaseImpl(gh<_i834.AddressRepository>()));
    gh.factory<_i1050.ProcessPaymentUseCase>(
        () => _i784.ProcessPaymentUseCaseImpl(gh<_i322.PaymentRepository>()));
    gh.factory<_i426.ReservationRepository>(() =>
        _i28.ReservationRepositoryImpl(gh<_i580.ReservationDataSource>()));
    gh.factory<_i452.BusRepository>(
        () => _i36.BusRepositoryImpl(gh<_i63.BusDataSource>()));
    gh.factory<_i125.CreateReservationUseCase>(() =>
        _i718.CreateReservationUseCaseImpl(gh<_i426.ReservationRepository>()));
    gh.factory<_i243.GetReservationUseCase>(() =>
        _i1024.GetReservationUseCaseImpl(gh<_i426.ReservationRepository>()));
    gh.factory<_i245.GetBusUseCase>(
        () => _i988.GetBusUseCaseImpl(gh<_i452.BusRepository>()));
  }
}
