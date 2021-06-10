import 'package:flutter/material.dart';
import 'package:homs/src/components/background.dart';
import 'package:homs/src/screen/register/components/register_form.dart';
import 'package:homs/src/utils/constants.dart';

class Body extends StatelessWidget {
  Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * .05,
            ),
            Image.asset(
              "assets/images/logo.png",
              width: size.width * .8,
            ),
            Divider(
              height: 20,
              color: kTextColor,
              thickness: size.height * .005,
              indent: size.width * .05,
              endIndent: size.width * .05,
            ),
            const Text(
              "Bem Vindo\nFaça o seu Registro para continuar",
              style: TextStyle(color: kTextColor, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RegisterForm(),
            Container(
              child: const Text(
                "Tem uma conta? Faça o Login",
                style:
                    TextStyle(color: kTextColor, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
