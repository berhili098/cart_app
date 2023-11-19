import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AdaptiveRoute(
          page: CheckoutRoute.page,
          path: '/checkout',
          maintainState: true,
        ),
        AdaptiveRoute(
            page: WrapperRoute.page,
            path: '/wrapper',
            initial: true,
            children: [
              AutoRoute(
                page: HomeRoute.page,
                path: 'home',
                maintainState: true,
              ),
              AutoRoute(
                page: ProductRoute.page,
                path: 'product',
                maintainState: true,
              ),
              AutoRoute(
                page: FavoriteRoute.page,
                path: 'favorites',
                maintainState: true,
              ),
              AutoRoute(
                page: NotificationRoute.page,
                path: 'notifications',
                maintainState: true,
              ),
              AutoRoute(
                page: ProfileRoute.page,
                path: 'profile',
                maintainState: true,
              ),
            ]),
      ];
}
