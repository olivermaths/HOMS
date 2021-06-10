import 'package:homs/src/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginButtonController {
  Color buttonColor = kPrimaryDarkColor;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void changeColor() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      buttonColor = kSecondColor;
    } else {
      buttonColor = kPrimaryDarkColor;
    }
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }
}
