import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../services/auth_service.dart';
import '../../../routes/app_pages.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 360,
          child: LayoutBuilder(builder: (context, constraints) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: controller.fromKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 16.0),
                      Text(
                        'Sign In',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      const SizedBox(height: 16.0),
                      TextFormField(
                        controller: controller.email,
                        decoration: const InputDecoration(
                          hintText: 'Email',
                          label: Text('Email'),
                          prefixIcon: Icon(Icons.email_outlined),
                        ),
                        validator: (value) {
                          if (!value!.isEmail) {
                            return 'Enter valid email';
                          }

                          return null;
                        },
                      ),
                      const SizedBox(height: 16.0),
                      TextFormField(
                        controller: controller.password,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          label: Text('Password'),
                          prefixIcon: Icon(Icons.password_outlined),
                        ),
                        validator: (value) {
                          if (value!.length < 6) {
                            return 'Password should more the 6 charactors';
                          }

                          return null;
                        },
                      ),
                      const SizedBox(height: 16.0),
                      SizedBox(
                        width: constraints.maxWidth,
                        child: FilledButton(
                          onPressed: () {
                            // sign up
                            if (controller.fromKey.currentState!.validate()) {
                              //
                              log('signin');
                              AuthService.to.login();
                              Get.offAllNamed(Routes.DASHBOARD);
                            }
                          },
                          child: const Text('Sign In'),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
