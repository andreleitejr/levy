// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:levy/features/address/presentation/pages/address_page.dart'
    as _i1;
import 'package:levy/features/bus/presentation/pages/bus_page.dart' as _i2;
import 'package:levy/features/notification/presentation/pages/notification_page.dart'
    as _i3;
import 'package:levy/features/payment/presentation/pages/payment_page.dart'
    as _i4;
import 'package:levy/features/reservation/presentation/pages/reservation_page.dart'
    as _i5;
import 'package:levy/features/search/data/models/search_model.dart' as _i11;
import 'package:levy/features/search/presentation/pages/search_page.dart'
    as _i6;
import 'package:levy/features/seat/domain/entities/seat_entity.dart' as _i12;
import 'package:levy/features/seat/presentation/pages/seat_page.dart' as _i7;
import 'package:levy/features/time/presentation/pages/time_page.dart' as _i8;

/// generated route for
/// [_i1.AddressPage]
class AddressRoute extends _i9.PageRouteInfo<void> {
  const AddressRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AddressRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddressRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddressPage();
    },
  );
}

/// generated route for
/// [_i2.BusPage]
class BusRoute extends _i9.PageRouteInfo<BusRouteArgs> {
  BusRoute({
    _i10.Key? key,
    required _i11.SearchModel search,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          BusRoute.name,
          args: BusRouteArgs(
            key: key,
            search: search,
          ),
          initialChildren: children,
        );

  static const String name = 'BusRoute';

  static _i9.PageInfo page = _i9.PageInfo(
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

  final _i10.Key? key;

  final _i11.SearchModel search;

  @override
  String toString() {
    return 'BusRouteArgs{key: $key, search: $search}';
  }
}

/// generated route for
/// [_i3.NotificationPage]
class NotificationRoute extends _i9.PageRouteInfo<void> {
  const NotificationRoute({List<_i9.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.NotificationPage();
    },
  );
}

/// generated route for
/// [_i4.PaymentPage]
class PaymentRoute extends _i9.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    _i10.Key? key,
    required String transactionId,
    required _i10.VoidCallback onPaymentSuccess,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            key: key,
            transactionId: transactionId,
            onPaymentSuccess: onPaymentSuccess,
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
        transactionId: args.transactionId,
        onPaymentSuccess: args.onPaymentSuccess,
      );
    },
  );
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    this.key,
    required this.transactionId,
    required this.onPaymentSuccess,
  });

  final _i10.Key? key;

  final String transactionId;

  final _i10.VoidCallback onPaymentSuccess;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, transactionId: $transactionId, onPaymentSuccess: $onPaymentSuccess}';
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
/// [_i6.SearchPage]
class SearchRoute extends _i9.PageRouteInfo<void> {
  const SearchRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.SearchPage();
    },
  );
}

/// generated route for
/// [_i7.SeatPage]
class SeatRoute extends _i9.PageRouteInfo<SeatRouteArgs> {
  SeatRoute({
    _i10.Key? key,
    required List<_i12.SeatEntity> seats,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          SeatRoute.name,
          args: SeatRouteArgs(
            key: key,
            seats: seats,
          ),
          initialChildren: children,
        );

  static const String name = 'SeatRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SeatRouteArgs>();
      return _i7.SeatPage(
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

  final _i10.Key? key;

  final List<_i12.SeatEntity> seats;

  @override
  String toString() {
    return 'SeatRouteArgs{key: $key, seats: $seats}';
  }
}

/// generated route for
/// [_i8.TimePage]
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
      return const _i8.TimePage();
    },
  );
}
