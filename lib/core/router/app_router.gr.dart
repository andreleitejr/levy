// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:levy/features/home/presentation/pages/home_page.dart' as _i1;
import 'package:levy/features/map/presentation/pages/map_page.dart' as _i2;
import 'package:levy/features/payment/presentation/pages/payment_page.dart'
    as _i4;
import 'package:levy/features/payment_method/presentation/pages/payment_method_page.dart'
    as _i3;
import 'package:levy/features/reservation/presentation/pages/reservation_page.dart'
    as _i5;
import 'package:levy/features/splash/presentation/pages/splash_page.dart'
    as _i6;
import 'package:levy/features/time/presentation/pages/time_page.dart' as _i7;
import 'package:levy/features/user/presentation/pages/user_page.dart' as _i8;
import 'package:levy_shared_entities/entities.dart' as _i11;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomePage();
    },
  );
}

/// generated route for
/// [_i2.MapPage]
class MapRoute extends _i9.PageRouteInfo<MapRouteArgs> {
  MapRoute({
    _i10.Key? key,
    bool isReturnBus = false,
    bool isTargetBus = false,
    List<_i9.PageRouteInfo>? children,
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

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<MapRouteArgs>(orElse: () => const MapRouteArgs());
      return _i2.MapPage(
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

  final _i10.Key? key;

  final bool isReturnBus;

  final bool isTargetBus;

  @override
  String toString() {
    return 'MapRouteArgs{key: $key, isReturnBus: $isReturnBus, isTargetBus: $isTargetBus}';
  }
}

/// generated route for
/// [_i3.PaymentMethodPage]
class PaymentMethodRoute extends _i9.PageRouteInfo<void> {
  const PaymentMethodRoute({List<_i9.PageRouteInfo>? children})
      : super(
          PaymentMethodRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentMethodRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.PaymentMethodPage();
    },
  );
}

/// generated route for
/// [_i4.PaymentPage]
class PaymentRoute extends _i9.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    _i10.Key? key,
    required _i11.BusEntity departureBus,
    required _i11.BusEntity returnBus,
    List<_i9.PageRouteInfo>? children,
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

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentRouteArgs>();
      return _i4.PaymentPage(
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

  final _i10.Key? key;

  final _i11.BusEntity departureBus;

  final _i11.BusEntity returnBus;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, departureBus: $departureBus, returnBus: $returnBus}';
  }
}

/// generated route for
/// [_i5.ReservationPage]
class ReservationRoute extends _i9.PageRouteInfo<void> {
  const ReservationRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ReservationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReservationRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.ReservationPage();
    },
  );
}

/// generated route for
/// [_i6.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.SplashPage();
    },
  );
}

/// generated route for
/// [_i7.TimePage]
class TimeRoute extends _i9.PageRouteInfo<void> {
  const TimeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          TimeRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i7.TimePage();
    },
  );
}

/// generated route for
/// [_i8.UserPage]
class UserRoute extends _i9.PageRouteInfo<void> {
  const UserRoute({List<_i9.PageRouteInfo>? children})
      : super(
          UserRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.UserPage();
    },
  );
}
