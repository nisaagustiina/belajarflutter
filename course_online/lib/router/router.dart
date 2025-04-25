import 'package:auto_route/annotations.dart';
import 'package:course_online/presentation/dashboard/dashboard.dart';
import 'package:course_online/presentation/home/home.dart';

// flutter packages pub run build_runner watch --delete-conflicting-outputs
@MaterialAutoRouter(
    replaceInRouteName: 'Page, Route',
    routes: [AutoRoute(page: Dashboard, initial: true), AutoRoute(page: Home)])
class $AppRouter {}
