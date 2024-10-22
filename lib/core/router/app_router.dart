import 'package:auto_route/auto_route.dart';
import 'package:levy/core/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SearchRoute.page, initial: true),
        AutoRoute(page: AddressRoute.page),
        AutoRoute(page: TimeRoute.page),
        AutoRoute(page: NotificationRoute.page),
        AutoRoute(page: BusRoute.page),
        AutoRoute(page: SeatRoute.page),
      ];
}
