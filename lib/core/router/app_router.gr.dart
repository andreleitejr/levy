// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:levy/features/address/presentation/pages/address_page.dart'
    as _i1;
import 'package:levy/features/bus/domain/entities/bus_entity.dart' as _i12;
import 'package:levy/features/bus/enums/bus_result_type.dart' as _i11;
import 'package:levy/features/bus/presentation/pages/bus_page.dart' as _i2;
import 'package:levy/features/notification/presentation/pages/notification_page.dart'
    as _i3;
import 'package:levy/features/payment/presentation/pages/payment_page.dart'
    as _i4;
import 'package:levy/features/search/domain/entities/search_entity.dart'
    as _i10;
import 'package:levy/features/search/presentation/pages/search_page.dart'
    as _i5;
import 'package:levy/features/seat/domain/entities/seat_entity.dart' as _i13;
import 'package:levy/features/seat/presentation/pages/seat_page.dart' as _i6;
import 'package:levy/features/time/presentation/pages/time_page.dart' as _i7;

/// generated route for
/// [_i1.AddressPage]
class AddressRoute extends _i8.PageRouteInfo<void> {
  const AddressRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AddressRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddressRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddressPage();
    },
  );
}

/// generated route for
/// [_i2.BusPage]
class BusRoute extends _i8.PageRouteInfo<BusRouteArgs> {
  BusRoute({
    _i9.Key? key,
    required _i10.SearchEntity search,
    required _i11.BusResultType resultType,
    _i12.BusEntity? departureBus,
    _i13.SeatEntity? departureSeat,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          BusRoute.name,
          args: BusRouteArgs(
            key: key,
            search: search,
            resultType: resultType,
            departureBus: departureBus,
            departureSeat: departureSeat,
          ),
          initialChildren: children,
        );

  static const String name = 'BusRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BusRouteArgs>();
      return _i2.BusPage(
        key: args.key,
        search: args.search,
        resultType: args.resultType,
        departureBus: args.departureBus,
        departureSeat: args.departureSeat,
      );
    },
  );
}

class BusRouteArgs {
  const BusRouteArgs({
    this.key,
    required this.search,
    required this.resultType,
    this.departureBus,
    this.departureSeat,
  });

  final _i9.Key? key;

  final _i10.SearchEntity search;

  final _i11.BusResultType resultType;

  final _i12.BusEntity? departureBus;

  final _i13.SeatEntity? departureSeat;

  @override
  String toString() {
    return 'BusRouteArgs{key: $key, search: $search, resultType: $resultType, departureBus: $departureBus, departureSeat: $departureSeat}';
  }
}

/// generated route for
/// [_i3.NotificationPage]
class NotificationRoute extends _i8.PageRouteInfo<void> {
  const NotificationRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.NotificationPage();
    },
  );
}

/// generated route for
/// [_i4.PaymentPage]
class PaymentRoute extends _i8.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    _i9.Key? key,
    required String reservationId,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            key: key,
            reservationId: reservationId,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentRouteArgs>();
      return _i4.PaymentPage(
        key: args.key,
        transactionId: args.reservationId,
      );
    },
  );
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    this.key,
    required this.reservationId,
  });

  final _i9.Key? key;

  final String reservationId;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, reservationId: $reservationId}';
  }
}

/// generated route for
/// [_i5.SearchPage]
class SearchRoute extends _i8.PageRouteInfo<void> {
  const SearchRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.SearchPage();
    },
  );
}

/// generated route for
/// [_i6.SeatPage]
class SeatRoute extends _i8.PageRouteInfo<SeatRouteArgs> {
  SeatRoute({
    _i9.Key? key,
    required List<_i13.SeatEntity> seats,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          SeatRoute.name,
          args: SeatRouteArgs(
            key: key,
            seats: seats,
          ),
          initialChildren: children,
        );

  static const String name = 'SeatRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SeatRouteArgs>();
      return _i6.SeatPage(
        key: args.key,
        seats: args.seats,
      );
    },
  );
}

class SeatRouteArgs {
  const SeatRouteArgs({
    this.key,
    required this.seats,
  });

  final _i9.Key? key;

  final List<_i13.SeatEntity> seats;

  @override
  String toString() {
    return 'SeatRouteArgs{key: $key, seats: $seats}';
  }
}

/// generated route for
/// [_i7.TimePage]
class TimeRoute extends _i8.PageRouteInfo<void> {
  const TimeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          TimeRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.TimePage();
    },
  );
}
