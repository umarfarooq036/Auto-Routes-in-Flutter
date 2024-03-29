// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:autoroutes/screens/DashboardPage.dart' as _i1;
import 'package:autoroutes/screens/LoginPage.dart' as _i2;
import 'package:autoroutes/screens/LottieAnimation.dart' as _i3;
import 'package:autoroutes/screens/Register.dart' as _i4;
import 'package:autoroutes/screens/screenA.dart' as _i5;
import 'package:autoroutes/screens/screenB.dart' as _i6;
import 'package:autoroutes/screens/screenC.dart' as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    LottieAnimation.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LottieAnimation(),
      );
    },
    Registration.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Registration(),
      );
    },
    RouteA.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ScreenA(),
      );
    },
    RouteB.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ScreenB(),
      );
    },
    RouteC.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ScreenC(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i8.PageRouteInfo<void> {
  const DashboardRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LottieAnimation]
class LottieAnimation extends _i8.PageRouteInfo<void> {
  const LottieAnimation({List<_i8.PageRouteInfo>? children})
      : super(
          LottieAnimation.name,
          initialChildren: children,
        );

  static const String name = 'LottieAnimation';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Registration]
class Registration extends _i8.PageRouteInfo<void> {
  const Registration({List<_i8.PageRouteInfo>? children})
      : super(
          Registration.name,
          initialChildren: children,
        );

  static const String name = 'Registration';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ScreenA]
class RouteA extends _i8.PageRouteInfo<void> {
  const RouteA({List<_i8.PageRouteInfo>? children})
      : super(
          RouteA.name,
          initialChildren: children,
        );

  static const String name = 'RouteA';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ScreenB]
class RouteB extends _i8.PageRouteInfo<void> {
  const RouteB({List<_i8.PageRouteInfo>? children})
      : super(
          RouteB.name,
          initialChildren: children,
        );

  static const String name = 'RouteB';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ScreenC]
class RouteC extends _i8.PageRouteInfo<void> {
  const RouteC({List<_i8.PageRouteInfo>? children})
      : super(
          RouteC.name,
          initialChildren: children,
        );

  static const String name = 'RouteC';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
