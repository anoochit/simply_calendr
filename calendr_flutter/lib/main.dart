import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';
import 'app/bindings/root_binding.dart';
import 'app/routes/app_pages.dart';

void main() {
  setPathUrlStrategy();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calendr",
      initialRoute: AppPages.INITIAL,
      initialBinding: RootBinding(),
      getPages: AppPages.routes,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
    ),
  );
}
