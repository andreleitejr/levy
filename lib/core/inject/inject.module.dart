//@GeneratedMicroModule;LevyPackageModule;package:levy/core/inject/inject.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:injectable/injectable.dart' as _i526;
import 'package:levy/features/bus/bus.dart' as _i402;
import 'package:levy/features/bus/data/datasources/bus_datasource_impl.dart'
    as _i38;
import 'package:levy/features/bus/data/datasources/bus_datasource_mock.dart'
    as _i142;
import 'package:levy/features/bus/data/repositories/bus_repository_impl.dart'
    as _i36;
import 'package:levy/features/bus/domain/usecases/get_bus_usecase_impl.dart'
    as _i988;
import 'package:levy/features/driver/data/datasources/driver_datasource.dart'
    as _i28;
import 'package:levy/features/driver/data/datasources/driver_datasource_impl.dart'
    as _i902;
import 'package:levy/features/driver/data/datasources/driver_datasource_mock.dart'
    as _i220;
import 'package:levy/features/driver/data/repositories/driver_repository_impl.dart'
    as _i450;
import 'package:levy/features/driver/domain/usecases/get_driver_usecase_impl.dart'
    as _i815;
import 'package:levy/features/driver/driver.dart' as _i1057;
import 'package:levy/features/notification/data/datasources/notification_datasource_impl.dart'
    as _i208;
import 'package:levy/features/notification/data/datasources/notification_datasource_mock.dart'
    as _i23;
import 'package:levy/features/notification/data/repositories/notification_repository_impl.dart'
    as _i1035;
import 'package:levy/features/notification/domain/usecases/get_notification_usecase_impl.dart'
    as _i420;
import 'package:levy/features/notification/notification.dart' as _i460;
import 'package:levy/features/payment/data/datasources/payment_datasource_impl.dart'
    as _i731;
import 'package:levy/features/payment/data/datasources/payment_datasource_mock.dart'
    as _i958;
import 'package:levy/features/payment/data/repositories/payment_repository_impl.dart'
    as _i913;
import 'package:levy/features/payment/domain/usecases/process_payment_usecase_impl.dart'
    as _i784;
import 'package:levy/features/payment/payment.dart' as _i562;
import 'package:levy/features/payment_method/data/datasources/payment_method_datasource.dart'
    as _i370;
import 'package:levy/features/payment_method/data/datasources/payment_method_datasource_impl.dart'
    as _i29;
import 'package:levy/features/payment_method/data/datasources/payment_method_datasource_mock.dart'
    as _i127;
import 'package:levy/features/payment_method/data/repositories/payment_method_repository_impl.dart'
    as _i1058;
import 'package:levy/features/payment_method/domain/repositories/payment_method_repository.dart'
    as _i438;
import 'package:levy/features/payment_method/domain/usecases/get_payment_method_usecase.dart'
    as _i177;
import 'package:levy/features/payment_method/domain/usecases/get_payment_method_usecase_impl.dart'
    as _i805;
import 'package:levy/features/reservation/data/datasources/reservation_datasource.dart'
    as _i580;
import 'package:levy/features/reservation/data/datasources/reservation_datasource_impl.dart'
    as _i990;
import 'package:levy/features/reservation/data/datasources/reservation_datasource_mock.dart'
    as _i660;
import 'package:levy/features/reservation/data/repositories/reservation_repository_impl.dart'
    as _i28;
import 'package:levy/features/reservation/domain/repositories/reservation_repository.dart'
    as _i426;
import 'package:levy/features/reservation/domain/usecases/get_reservation_usecase.dart'
    as _i243;
import 'package:levy/features/reservation/domain/usecases/get_reservation_usecase_impl.dart'
    as _i1024;
import 'package:levy/features/reservation/domain/usecases/set_reservation_usecase.dart'
    as _i569;
import 'package:levy/features/reservation/domain/usecases/set_reservation_usecase_impl.dart'
    as _i695;
import 'package:levy/features/route/data/datasources/route_datasource.dart'
    as _i596;
import 'package:levy/features/route/data/datasources/route_datasource_impl.dart'
    as _i137;
import 'package:levy/features/route/data/datasources/route_datasource_mock.dart'
    as _i931;
import 'package:levy/features/user/data/datasources/user_datasource.dart'
    as _i717;
import 'package:levy/features/user/data/datasources/user_datasource_impl.dart'
    as _i11;
import 'package:levy/features/user/data/datasources/user_datasource_mock.dart'
    as _i968;
import 'package:levy/features/user/data/repositories/user_repository_impl.dart'
    as _i496;
import 'package:levy/features/user/domain/repositories/user_repository.dart'
    as _i902;
import 'package:levy/features/user/domain/usecases/get_user_usecase.dart'
    as _i817;
import 'package:levy/features/user/domain/usecases/get_user_usecase_impl.dart'
    as _i48;

const String _impl = 'impl';
const String _mock = 'mock';

class LevyPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i460.NotificationDataSource>(
      () => _i208.NotificationDataSourceImpl(),
      registerFor: {_impl},
    );
    gh.factory<_i460.NotificationRepository>(() =>
        _i1035.NotificationRepositoryImpl(gh<_i460.NotificationDataSource>()));
    gh.factory<_i28.DriverDataSource>(
      () => _i220.DriverDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i460.NotificationDataSource>(
      () => _i23.NotificationDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i717.UserDataSource>(
      () => _i11.UserDataSourceImpl(),
      registerFor: {_impl},
    );
    gh.factory<_i717.UserDataSource>(
      () => _i968.UserDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i460.GetNotificationUseCase>(() =>
        _i420.GetNotificationUseCaseImpl(gh<_i460.NotificationRepository>()));
    gh.factory<_i580.ReservationDataSource>(
      () => _i660.ReservationDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i562.PaymentDataSource>(
      () => _i958.PaymentDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i596.RouteDataSource>(
      () => _i137.RouteDataSourceImpl(),
      registerFor: {_impl},
    );
    gh.factory<_i580.ReservationDataSource>(
      () => _i990.ReservationDataSourceImpl(),
      registerFor: {_impl},
    );
    gh.factory<_i370.PaymentMethodDataSource>(
      () => _i29.PaymentMethodDataSourceImpl(),
      registerFor: {_impl},
    );
    gh.factory<_i562.PaymentDataSource>(
      () => _i731.PaymentDataSourceImpl(),
      registerFor: {_impl},
    );
    gh.factory<_i902.UserRepository>(
        () => _i496.UserRepositoryImpl(gh<_i717.UserDataSource>()));
    gh.factory<_i370.PaymentMethodDataSource>(
      () => _i127.PaymentMethodDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i438.PaymentMethodRepository>(() =>
        _i1058.PaymentMethodRepositoryImpl(
            gh<_i370.PaymentMethodDataSource>()));
    gh.factory<_i817.GetUserUseCase>(
        () => _i48.GetUserUseCaseImpl(gh<_i902.UserRepository>()));
    gh.factory<_i596.RouteDataSource>(
      () => _i931.RouteDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i1057.DriverRepository>(
        () => _i450.DriverRepositoryImpl(gh<_i1057.DriverDataSource>()));
    gh.factory<_i402.BusDataSource>(
      () => _i142.BusDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i402.BusRepository>(
        () => _i36.BusRepositoryImpl(gh<_i402.BusDataSource>()));
    gh.factory<_i402.BusDataSource>(
      () => _i38.BusDataSourceImpl(),
      registerFor: {_impl},
    );
    gh.factory<_i177.GetPaymentMethodUseCase>(() =>
        _i805.GetPaymentMethodUseCaseImpl(gh<_i438.PaymentMethodRepository>()));
    gh.factory<_i562.PaymentRepository>(
        () => _i913.PaymentRepositoryImpl(gh<_i562.PaymentDataSource>()));
    gh.factory<_i28.DriverDataSource>(
      () => _i902.DriverDataSourceImpl(),
      registerFor: {_impl},
    );
    gh.factory<_i1057.GetDriverUseCase>(
        () => _i815.GetDriverUseCaseImpl(gh<_i1057.DriverRepository>()));
    gh.factory<_i402.GetBusUseCase>(
        () => _i988.GetBusUseCaseImpl(gh<_i402.BusRepository>()));
    gh.factory<_i562.ProcessPaymentUseCase>(
        () => _i784.ProcessPaymentUseCaseImpl(gh<_i562.PaymentRepository>()));
    gh.factory<_i426.ReservationRepository>(() =>
        _i28.ReservationRepositoryImpl(gh<_i580.ReservationDataSource>()));
    gh.factory<_i569.SetReservationUseCase>(() =>
        _i695.SetReservationUseCaseImpl(gh<_i426.ReservationRepository>()));
    gh.factory<_i243.GetReservationUseCase>(() =>
        _i1024.GetReservationUseCaseImpl(gh<_i426.ReservationRepository>()));
  }
}
