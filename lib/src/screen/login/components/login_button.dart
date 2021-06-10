import 'package:flutter/material.dart';
import 'package:homs/src/utils/constants.dart';

class RoundedLoginButton extends StatefulWidget {
  const RoundedLoginButton({
    Key? key,
    required this.buttonColor,
  }) : super(key: key);

  final Color buttonColor;

  @override
  State<RoundedLoginButton> createState() => _RoundedLoginButtonState();
}

class _RoundedLoginButtonState extends State<RoundedLoginButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 30),
        height: size.height * .08,
        width: size.width * .9,
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: widget.buttonColor, borderRadius: BorderRadius.circular(29)),
        child: Center(
          child: Text(
            "SIGN IN",
            style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
          ),
        ),
      ),
    );
  }
}
