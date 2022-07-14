// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../presentation/dashboard/dashboard.dart' as _i1;
import '../presentation/home/home.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    Dashboard.name: (routeData) {
      final args = routeData.argsAs<DashboardArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.Dashboard(args.title));
    },
    Home.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Home());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(Dashboard.name, path: '/'),
        _i3.RouteConfig(Home.name, path: '/Home')
      ];
}

/// generated route for
/// [_i1.Dashboard]
class Dashboard extends _i3.PageRouteInfo<DashboardArgs> {
  Dashboard({required String title})
      : super(Dashboard.name, path: '/', args: DashboardArgs(title: title));

  static const String name = 'Dashboard';
}

class DashboardArgs {
  const DashboardArgs({required this.title});

  final String title;

  @override
  String toString() {
    return 'DashboardArgs{title: $title}';
  }
}

/// generated route for
/// [_i2.Home]
class Home extends _i3.PageRouteInfo<void> {
  const Home() : super(Home.name, path: '/Home');

  static const String name = 'Home';
}
