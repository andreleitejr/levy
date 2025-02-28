import 'package:auto_route/auto_route.dart';
import 'package:levy/core/router/app_router.gr.dart';

@AutoRouterConfig()
final class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: TimeRoute.page),
        AutoRoute(page: NotificationRoute.page),
        AutoRoute(page: BusRoute.page),
        AutoRoute(page: SeatRoute.page),
        AutoRoute(page: PaymentRoute.page),
        AutoRoute(page: PaymentMethodRoute.page),
        AutoRoute(page: ReservationRoute.page),
        AutoRoute(page: MapRoute.page),
        AutoRoute(page: UserRoute.page),
      ];
}
