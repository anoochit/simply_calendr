import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 360,
          child: signupForm(),
        ),
      ),
    );
  }

  LayoutBuilder signupForm() {
    return LayoutBuilder(builder: (context, constraints) {
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
                    'Sign Up',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: controller.displayName,
                    decoration: const InputDecoration(
                      hintText: 'Display Name',
                      label: Text('Display Name'),
                      prefixIcon: Icon(Icons.account_circle_outlined),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter display name';
                      }

                      return null;
                    },
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
                        return 'Email is invalid';
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
                          log('signup');
                        }
                      },
                      child: const Text('Sign Up'),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                ],
              )),
        ),
      );
    });
  }
}
