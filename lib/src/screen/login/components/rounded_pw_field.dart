import 'package:flutter/material.dart';
import 'package:homs/src/utils/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final ValueChanged<String> onChanged;
  final double fontSize;
  const RoundedPasswordField({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.fontSize,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textAlignVertical: TextAlignVertical.center,
      onChanged: onChanged,
      obscureText: true,
      style: TextStyle(fontSize: fontSize),
      decoration: InputDecoration(
          hintText: hintText,
          icon: const Icon(
            Icons.lock,
            color: kSecondColor,
          ),
          suffixIcon: const Icon(
            Icons.visibility,
            color: kSecondColor,
          ),
          border: InputBorder.none),
    );
  }
}
