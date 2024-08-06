import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../services/auth_service.dart';
import '../routes/app_pages.dart';

class RouteGuard extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (AuthService.to.isLoggedInValue) {
      return null;
    } else {
      return const RouteSettings(name: Routes.SIGNIN);
    }
  }
}
