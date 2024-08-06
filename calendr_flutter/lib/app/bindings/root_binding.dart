import 'package:get/get.dart';

import '../../services/auth_service.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthService());
  }
}
