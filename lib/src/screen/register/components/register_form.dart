import 'package:flutter/material.dart';
import 'package:homs/src/screen/register/components/register_theme.dart';
import 'package:homs/src/utils/constants.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({
    Key? key,
  }) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Form(
        key: _formKey,
        child: Column(
          children: [
            BuildNameFormField(),
            SizedBox(
              height: size.height * 0.02,
            ),
            BuildEmailFormField(),
            SizedBox(
              height: size.height * 0.02,
            ),
            BuildCPFFormField(),
            SizedBox(
              height: size.height * 0.02,
            ),
            BuildAgeFormField(),
            SizedBox(
              height: size.height * 0.02,
            ),
            BuildPasswordFormField(),
            SizedBox(
              height: size.height * 0.02,
            ),
            GestureDetector(
              onTap: () {},
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 30),
                height: size.height * .08,
                width: size.width * .9,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: kSecondColor,
                    borderRadius: BorderRadius.circular(29)),
                child: Center(
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kTextColor),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class BuildNameFormField extends StatefulWidget {
  BuildNameFormField({
    Key? key,
  }) : super(key: key);

  @override
  State<BuildNameFormField> createState() => _BuildNameFormFieldState();
}

class _BuildNameFormFieldState extends State<BuildNameFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormFieldTheme(
      hint: "Enter your Name",
      labelText: "Name",
      icon: Icons.person,
      inputType: TextInputType.emailAddress,
      obscureText: false,
    );
  }
}

class BuildEmailFormField extends StatelessWidget {
  const BuildEmailFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormFieldTheme(
      hint: "Enter your Email",
      labelText: "Email",
      icon: Icons.email,
      inputType: TextInputType.emailAddress,
      obscureText: false,
    );
  }
}

class BuildCPFFormField extends StatelessWidget {
  const BuildCPFFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CpfFormFieldTheme(
      hint: "Enter your CPF",
      labelText: "CPF",
      icon: Icons.person_add,
      inputType: TextInputType.number,
      obscureText: false,
    );
  }
}

class BuildAgeFormField extends StatelessWidget {
  const BuildAgeFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormFieldTheme(
      hint: "Enter your Age",
      labelText: "AGE",
      icon: Icons.date_range_rounded,
      inputType: TextInputType.number,
      obscureText: false,
    );
  }
}

class BuildPasswordFormField extends StatelessWidget {
  const BuildPasswordFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormFieldTheme(
      icon: Icons.visibility,
      hint: "Enter your Password",
      labelText: "Password",
      inputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }
}
