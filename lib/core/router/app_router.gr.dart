// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:levy/features/address/presentation/pages/address_page.dart'
    as _i1;
import 'package:levy/features/bus/domain/entities/bus_entity.dart' as _i16;
import 'package:levy/features/bus/presentation/pages/bus_page.dart' as _i2;
import 'package:levy/features/home/presentation/pages/home_page.dart' as _i3;
import 'package:levy/features/map/presentation/pages/map_page.dart' as _i4;
import 'package:levy/features/notification/presentation/pages/notification_page.dart'
    as _i5;
import 'package:levy/features/payment/presentation/pages/payment_page.dart'
    as _i7;
import 'package:levy/features/payment_method/presentation/pages/payment_method_page.dart'
    as _i6;
import 'package:levy/features/reservation/presentation/pages/reservation_page.dart'
    as _i8;
import 'package:levy/features/search/domain/entities/search_entity.dart'
    as _i15;
import 'package:levy/features/seat/domain/entities/seat_entity.dart' as _i17;
import 'package:levy/features/seat/presentation/pages/seat_page.dart' as _i9;
import 'package:levy/features/splash/presentation/pages/splash_page.dart'
    as _i10;
import 'package:levy/features/time/presentation/pages/time_page.dart' as _i11;
import 'package:levy/features/user/presentation/pages/user_page.dart' as _i12;

/// generated route for
/// [_i1.AddressPage]
class AddressRoute extends _i13.PageRouteInfo<void> {
  const AddressRoute({List<_i13.PageRouteInfo>? children})
      : super(
          AddressRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddressRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddressPage();
    },
  );
}

/// generated route for
/// [_i2.BusPage]
class BusRoute extends _i13.PageRouteInfo<BusRouteArgs> {
  BusRoute({
    _i14.Key? key,
    required _i15.SearchEntity search,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          BusRoute.name,
          args: BusRouteArgs(
            key: key,
            search: search,
          ),
          initialChildren: children,
        );

  static const String name = 'BusRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BusRouteArgs>();
      return _i2.BusPage(
        key: args.key,
        search: args.search,
      );
    },
  );
}

class BusRouteArgs {
  const BusRouteArgs({
    this.key,
    required this.search,
  });

  final _i14.Key? key;

  final _i15.SearchEntity search;

  @override
  String toString() {
    return 'BusRouteArgs{key: $key, search: $search}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.MapPage]
class MapRoute extends _i13.PageRouteInfo<MapRouteArgs> {
  MapRoute({
    _i14.Key? key,
    bool isReturnBus = false,
    bool isTargetBus = false,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          MapRoute.name,
          args: MapRouteArgs(
            key: key,
            isReturnBus: isReturnBus,
            isTargetBus: isTargetBus,
          ),
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<MapRouteArgs>(orElse: () => const MapRouteArgs());
      return _i4.MapPage(
        key: args.key,
        isReturnBus: args.isReturnBus,
        isTargetBus: args.isTargetBus,
      );
    },
  );
}

class MapRouteArgs {
  const MapRouteArgs({
    this.key,
    this.isReturnBus = false,
    this.isTargetBus = false,
  });

  final _i14.Key? key;

  final bool isReturnBus;

  final bool isTargetBus;

  @override
  String toString() {
    return 'MapRouteArgs{key: $key, isReturnBus: $isReturnBus, isTargetBus: $isTargetBus}';
  }
}

/// generated route for
/// [_i5.NotificationPage]
class NotificationRoute extends _i13.PageRouteInfo<void> {
  const NotificationRoute({List<_i13.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i5.NotificationPage();
    },
  );
}

/// generated route for
/// [_i6.PaymentMethodPage]
class PaymentMethodRoute extends _i13.PageRouteInfo<void> {
  const PaymentMethodRoute({List<_i13.PageRouteInfo>? children})
      : super(
          PaymentMethodRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentMethodRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i6.PaymentMethodPage();
    },
  );
}

/// generated route for
/// [_i7.PaymentPage]
class PaymentRoute extends _i13.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    _i14.Key? key,
    required _i16.BusEntity departureBus,
    required _i16.BusEntity returnBus,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            key: key,
            departureBus: departureBus,
            returnBus: returnBus,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentRouteArgs>();
      return _i7.PaymentPage(
        key: args.key,
        departureBus: args.departureBus,
        returnBus: args.returnBus,
      );
    },
  );
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    this.key,
    required this.departureBus,
    required this.returnBus,
  });

  final _i14.Key? key;

  final _i16.BusEntity departureBus;

  final _i16.BusEntity returnBus;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, departureBus: $departureBus, returnBus: $returnBus}';
  }
}

/// generated route for
/// [_i8.ReservationPage]
class ReservationRoute extends _i13.PageRouteInfo<void> {
  const ReservationRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ReservationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReservationRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i8.ReservationPage();
    },
  );
}

/// generated route for
/// [_i9.SeatPage]
class SeatRoute extends _i13.PageRouteInfo<SeatRouteArgs> {
  SeatRoute({
    _i14.Key? key,
    required List<_i17.SeatEntity> items,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          SeatRoute.name,
          args: SeatRouteArgs(
            key: key,
            items: items,
          ),
          initialChildren: children,
        );

  static const String name = 'SeatRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SeatRouteArgs>();
      return _i9.SeatPage(
        key: args.key,
        items: args.items,
      );
    },
  );
}

class SeatRouteArgs {
  const SeatRouteArgs({
    this.key,
    required this.items,
  });

  final _i14.Key? key;

  final List<_i17.SeatEntity> items;

  @override
  String toString() {
    return 'SeatRouteArgs{key: $key, items: $items}';
  }
}

/// generated route for
/// [_i10.SplashPage]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i10.SplashPage();
    },
  );
}

/// generated route for
/// [_i11.TimePage]
class TimeRoute extends _i13.PageRouteInfo<void> {
  const TimeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          TimeRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimeRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i11.TimePage();
    },
  );
}

/// generated route for
/// [_i12.UserPage]
class UserRoute extends _i13.PageRouteInfo<void> {
  const UserRoute({List<_i13.PageRouteInfo>? children})
      : super(
          UserRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i12.UserPage();
    },
  );
}
