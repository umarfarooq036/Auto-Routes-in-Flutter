import 'package:auto_route/auto_route.dart';
import 'package:autoroutes/screens/DashboardPage.dart';
import 'package:autoroutes/screens/LoginPage.dart';
import 'package:flutter/cupertino.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // AutoRoute(page: RouteA.page, initial: true),
        // CustomRoute(
        //     page: RouteB.page, transitionsBuilder: TransitionsBuilders.fadeIn),
        // CustomRoute(
        //     page: RouteC.page, transitionsBuilder: TransitionsBuilders.zoomIn)

        AutoRoute(page: LottieAnimation.page, initial: true),
        CustomRoute(page: LoginRoute.page),
        AutoRoute(page: Registration.page),
        CustomRoute(
            page: DashboardRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn)
      ];
}
