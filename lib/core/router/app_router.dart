import 'package:auto_route/auto_route.dart';
import 'package:levy/core/router/router.dart';

@AutoRouterConfig()
final class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: AddressRoute.page, path: '/address'),
        AutoRoute(page: BusRoute.page, path: '/bus'),
        AutoRoute(page: HomeRoute.page, path: '/home'),
        AutoRoute(page: MapRoute.page, path: '/map'),
        AutoRoute(page: NotificationRoute.page, path: '/notification'),
        AutoRoute(page: PaymentRoute.page, path: '/payment'),
        AutoRoute(page: PaymentMethodRoute.page, path: '/payment_method'),
        AutoRoute(page: ReservationRoute.page, path: '/reservation'),
        AutoRoute(page: SeatRoute.page, path: '/seat'),
        AutoRoute(page: TimeRoute.page, path: '/time'),
        AutoRoute(page: UserRoute.page, path: '/user'),
      ];
}
