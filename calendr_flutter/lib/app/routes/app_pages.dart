import 'package:get/get.dart';

import '../middleware/route_guard.dart';
import '../modules/calendar/bindings/calendar_binding.dart';
import '../modules/calendar/views/calendar_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/signin/bindings/signin_binding.dart';
import '../modules/signin/views/signin_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => const HomeView(),
        binding: HomeBinding(),
        children: [
          GetPage(
            name: _Paths.SIGNIN,
            page: () => const SigninView(),
            binding: SigninBinding(),
          ),
          GetPage(
            name: _Paths.DASHBOARD,
            page: () => const DashboardView(),
            binding: DashboardBinding(),
            middlewares: [
              RouteGuard(),
            ],
          ),
          GetPage(
            name: _Paths.CALENDAR,
            page: () => const CalendarView(),
            binding: CalendarBinding(),
            middlewares: [
              RouteGuard(),
            ],
          ),
        ]),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
  ];
}
