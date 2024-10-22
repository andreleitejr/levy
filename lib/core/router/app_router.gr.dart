// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:levy/features/address/presentation/pages/address_page.dart'
    as _i1;
import 'package:levy/features/bus/domain/entities/bus_entity.dart' as _i11;
import 'package:levy/features/bus/enums/bus_result_type.dart' as _i10;
import 'package:levy/features/bus/presentation/pages/bus_page.dart' as _i2;
import 'package:levy/features/notification/presentation/pages/notification_page.dart'
    as _i3;
import 'package:levy/features/search/domain/entities/search_entity.dart' as _i9;
import 'package:levy/features/search/presentation/pages/search_page.dart'
    as _i4;
import 'package:levy/features/seat/domain/entities/seat_entity.dart' as _i12;
import 'package:levy/features/seat/presentation/pages/seat_page.dart' as _i5;
import 'package:levy/features/time/presentation/pages/time_page.dart' as _i6;

/// generated route for
/// [_i1.AddressPage]
class AddressRoute extends _i7.PageRouteInfo<void> {
  const AddressRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AddressRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddressRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddressPage();
    },
  );
}

/// generated route for
/// [_i2.BusPage]
class BusRoute extends _i7.PageRouteInfo<BusRouteArgs> {
  BusRoute({
    _i8.Key? key,
    required _i9.SearchEntity search,
    required _i10.BusResultType resultType,
    _i11.BusEntity? departureBus,
    _i12.SeatEntity? departureSeat,
    List<_i7.PageRouteInfo>? children,
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

  static _i7.PageInfo page = _i7.PageInfo(
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

  final _i8.Key? key;

  final _i9.SearchEntity search;

  final _i10.BusResultType resultType;

  final _i11.BusEntity? departureBus;

  final _i12.SeatEntity? departureSeat;

  @override
  String toString() {
    return 'BusRouteArgs{key: $key, search: $search, resultType: $resultType, departureBus: $departureBus, departureSeat: $departureSeat}';
  }
}

/// generated route for
/// [_i3.NotificationPage]
class NotificationRoute extends _i7.PageRouteInfo<void> {
  const NotificationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.NotificationPage();
    },
  );
}

/// generated route for
/// [_i4.SearchPage]
class SearchRoute extends _i7.PageRouteInfo<void> {
  const SearchRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.SearchPage();
    },
  );
}

/// generated route for
/// [_i5.SeatPage]
class SeatRoute extends _i7.PageRouteInfo<SeatRouteArgs> {
  SeatRoute({
    _i8.Key? key,
    required List<_i12.SeatEntity> seats,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          SeatRoute.name,
          args: SeatRouteArgs(
            key: key,
            seats: seats,
          ),
          initialChildren: children,
        );

  static const String name = 'SeatRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SeatRouteArgs>();
      return _i5.SeatPage(
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

  final _i8.Key? key;

  final List<_i12.SeatEntity> seats;

  @override
  String toString() {
    return 'SeatRouteArgs{key: $key, seats: $seats}';
  }
}

/// generated route for
/// [_i6.TimePage]
class TimeRoute extends _i7.PageRouteInfo<void> {
  const TimeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          TimeRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.TimePage();
    },
  );
}
