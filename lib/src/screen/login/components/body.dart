import 'package:homs/src/screen/login/components/login_form.dart';
import 'package:flutter/material.dart';
import 'package:homs/src/utils/constants.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: size.height * .1),
            Image.asset(
              "assets/images/logo.png",
              width: size.width * .8,
            ),
            SizedBox(height: size.height * .01),
            Divider(
              height: 20,
              color: kTextColor,
              thickness: size.height * .005,
              indent: size.width * .05,
              endIndent: size.width * .05,
            ),
            const Text(
              "Bem Vindo\nFaça o seu Login para continuar",
              style: TextStyle(color: kTextColor, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
