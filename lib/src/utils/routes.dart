import 'package:homs/src/screen/login/login_screen.dart';
import 'package:homs/src/screen/profile/profile_screen.dart';
import 'package:homs/src/screen/register/register_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  RegisterScreen.routeName: (context) => const RegisterScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
