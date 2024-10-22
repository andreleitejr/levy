// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:levy/features/address/presentation/pages/address_page.dart'
    as _i1;
import 'package:levy/features/bus/enums/bus_result_type.dart' as _i8;
import 'package:levy/features/bus/presentation/pages/bus_page.dart' as _i2;
import 'package:levy/features/notification/presentation/pages/notification_page.dart'
    as _i3;
import 'package:levy/features/search/domain/entities/search_entity.dart' as _i7;
import 'package:levy/features/search/presentation/pages/search_page.dart'
    as _i4;

/// generated route for
/// [_i1.AddressPage]
class AddressRoute extends _i5.PageRouteInfo<void> {
  const AddressRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AddressRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddressRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddressPage();
    },
  );
}

/// generated route for
/// [_i2.BusPage]
class BusRoute extends _i5.PageRouteInfo<BusRouteArgs> {
  BusRoute({
    _i6.Key? key,
    required _i7.SearchEntity search,
    required _i8.BusResultType resultType,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          BusRoute.name,
          args: BusRouteArgs(
            key: key,
            search: search,
            resultType: resultType,
          ),
          initialChildren: children,
        );

  static const String name = 'BusRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BusRouteArgs>();
      return _i2.BusPage(
        key: args.key,
        search: args.search,
        resultType: args.resultType,
      );
    },
  );
}

class BusRouteArgs {
  const BusRouteArgs({
    this.key,
    required this.search,
    required this.resultType,
  });

  final _i6.Key? key;

  final _i7.SearchEntity search;

  final _i8.BusResultType resultType;

  @override
  String toString() {
    return 'BusRouteArgs{key: $key, search: $search, resultType: $resultType}';
  }
}

/// generated route for
/// [_i3.NotificationPage]
class NotificationRoute extends _i5.PageRouteInfo<void> {
  const NotificationRoute({List<_i5.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.NotificationPage();
    },
  );
}

/// generated route for
/// [_i4.SearchPage]
class SearchRoute extends _i5.PageRouteInfo<void> {
  const SearchRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SearchPage();
    },
  );
}
