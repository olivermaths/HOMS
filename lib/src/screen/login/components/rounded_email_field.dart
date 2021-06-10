import 'package:flutter/material.dart';
import 'package:homs/src/utils/constants.dart';

//The widget that go inside the structure of the Container Field.
class RoundedEmailField extends StatefulWidget {
  final TextInputType keyboardType;
  final String hintText;
  final IconData icon;
  final double fontSize;
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  const RoundedEmailField({
    Key? key,
    this.icon = Icons.person,
    required this.hintText,
    required this.controller,
    required this.onChanged,
    this.keyboardType = TextInputType.emailAddress,
    required this.fontSize,
  }) : super(key: key);

  @override
  State<RoundedEmailField> createState() => _RoundedEmailFieldState();
}

class _RoundedEmailFieldState extends State<RoundedEmailField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      style: TextStyle(fontSize: widget.fontSize),
      decoration: InputDecoration(
          hintText: widget.hintText,
          icon: Icon(
            widget.icon,
            color: kSecondColor,
          ),
          border: InputBorder.none),
    );
  }
}
