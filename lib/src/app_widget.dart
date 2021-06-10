import 'package:homs/src/screen/profile/profile_screen.dart';
import 'package:homs/src/screen/register/register_screen.dart';
import 'package:homs/src/utils/routes.dart';
import 'package:flutter/material.dart';
import 'screen/login/login_screen.dart';
import 'utils/constants.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HOMS',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          primaryColorLight: kPrimaryColor,
          focusColor: kPrimaryColor,
          fontFamily: 'Poppins',
          backgroundColor: kBackgroundColor,
          brightness: Brightness.light),
      initialRoute: RegisterScreen.routeName,
      routes: routes,
    );
  }
}
