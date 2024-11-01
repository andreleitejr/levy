// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:levy/features/address/presentation/pages/address_page.dart'
    as _i1;
import 'package:levy/features/bus/presentation/pages/bus_page.dart' as _i2;
import 'package:levy/features/notification/presentation/pages/notification_page.dart'
    as _i3;
import 'package:levy/features/payment/presentation/pages/payment_page.dart'
    as _i5;
import 'package:levy/features/payment_method/presentation/pages/payment_method_page.dart'
    as _i4;
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart'
    as _i13;
import 'package:levy/features/reservation/presentation/pages/reservation_page.dart'
    as _i6;
import 'package:levy/features/search/domain/entities/search_entity.dart'
    as _i12;
import 'package:levy/features/search/presentation/pages/search_page.dart'
    as _i7;
import 'package:levy/features/seat/domain/entities/seat_entity.dart' as _i14;
import 'package:levy/features/seat/presentation/pages/seat_page.dart' as _i8;
import 'package:levy/features/time/presentation/pages/time_page.dart' as _i9;

/// generated route for
/// [_i1.AddressPage]
class AddressRoute extends _i10.PageRouteInfo<void> {
  const AddressRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AddressRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddressRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddressPage();
    },
  );
}

/// generated route for
/// [_i2.BusPage]
class BusRoute extends _i10.PageRouteInfo<BusRouteArgs> {
  BusRoute({
    _i11.Key? key,
    required _i12.SearchEntity search,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          BusRoute.name,
          args: BusRouteArgs(
            key: key,
            search: search,
          ),
          initialChildren: children,
        );

  static const String name = 'BusRoute';

  static _i10.PageInfo page = _i10.PageInfo(
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

  final _i11.Key? key;

  final _i12.SearchEntity search;

  @override
  String toString() {
    return 'BusRouteArgs{key: $key, search: $search}';
  }
}

/// generated route for
/// [_i3.NotificationPage]
class NotificationRoute extends _i10.PageRouteInfo<void> {
  const NotificationRoute({List<_i10.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i3.NotificationPage();
    },
  );
}

/// generated route for
/// [_i4.PaymentMethodPage]
class PaymentMethodRoute extends _i10.PageRouteInfo<void> {
  const PaymentMethodRoute({List<_i10.PageRouteInfo>? children})
      : super(
          PaymentMethodRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentMethodRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i4.PaymentMethodPage();
    },
  );
}

/// generated route for
/// [_i5.PaymentPage]
class PaymentRoute extends _i10.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    _i11.Key? key,
    required _i13.ReservationEntity reservation,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            key: key,
            reservation: reservation,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentRouteArgs>();
      return _i5.PaymentPage(
        key: args.key,
        reservation: args.reservation,
      );
    },
  );
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    this.key,
    required this.reservation,
  });

  final _i11.Key? key;

  final _i13.ReservationEntity reservation;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, reservation: $reservation}';
  }
}

/// generated route for
/// [_i6.ReservationPage]
class ReservationRoute extends _i10.PageRouteInfo<void> {
  const ReservationRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ReservationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReservationRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i6.ReservationPage();
    },
  );
}

/// generated route for
/// [_i7.SearchPage]
class SearchRoute extends _i10.PageRouteInfo<void> {
  const SearchRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i7.SearchPage();
    },
  );
}

/// generated route for
/// [_i8.SeatPage]
class SeatRoute extends _i10.PageRouteInfo<SeatRouteArgs> {
  SeatRoute({
    _i11.Key? key,
    required List<_i14.SeatEntity> items,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          SeatRoute.name,
          args: SeatRouteArgs(
            key: key,
            items: items,
          ),
          initialChildren: children,
        );

  static const String name = 'SeatRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SeatRouteArgs>();
      return _i8.SeatPage(
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

  final _i11.Key? key;

  final List<_i14.SeatEntity> items;

  @override
  String toString() {
    return 'SeatRouteArgs{key: $key, items: $items}';
  }
}

/// generated route for
/// [_i9.TimePage]
class TimeRoute extends _i10.PageRouteInfo<void> {
  const TimeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          TimeRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimeRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i9.TimePage();
    },
  );
}
