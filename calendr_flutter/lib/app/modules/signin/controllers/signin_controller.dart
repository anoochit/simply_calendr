import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  //

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> fromKey = GlobalKey<FormState>();
}
