import 'package:homs/src/screen/login/controllers/button_controller.dart';
import 'package:flutter/material.dart';
import 'login_button.dart';
import 'rounded_email_field.dart';
import 'rounded_pw_field.dart';
import 'text_field_container.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  LoginButtonController buttonControler = LoginButtonController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
        child: Column(
      children: [
        TextFieldContainer(
          child: RoundedEmailField(
            controller: buttonControler.emailController,
            fontSize: size.height * .023,
            hintText: "Your Email or CPF",
            onChanged: (value) {
              setState(() {
                buttonControler.changeColor();
              });
            },
          ),
        ),
        TextFieldContainer(
            child: RoundedPasswordField(
          controller: buttonControler.passwordController,
          fontSize: size.height * .023,
          hintText: "Password",
          onChanged: (value) {
            setState(() {
              buttonControler.changeColor();
            });
          },
        )),
        RoundedLoginButton(buttonColor: buttonControler.buttonColor)
      ],
    ));
  }
}
