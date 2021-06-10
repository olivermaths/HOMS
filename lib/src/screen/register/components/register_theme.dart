import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homs/src/utils/constants.dart';

class CpfFormFieldTheme extends StatefulWidget {
  final String hint;
  final String labelText;
  final IconData icon;
  final TextInputType inputType;
  final bool obscureText;

  const CpfFormFieldTheme({
    Key? key,
    required this.hint,
    required this.labelText,
    required this.icon,
    required this.inputType,
    required this.obscureText,
  }) : super(key: key);

  @override
  State<CpfFormFieldTheme> createState() => _CpfFormFieldThemeState();
}

class _CpfFormFieldThemeState extends State<CpfFormFieldTheme> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (val) {
          bool cpfValidor = UtilBrasilFields.isCPFValido(val);
          if (val == null ||
              val.isEmpty ||
              cpfValidor == false ||
              val.length < 11 ||
              val.length > 12) {
            return "";
          }
          return null;
        },
        inputFormatters: [
          CpfInputFormatter(),
          FilteringTextInputFormatter.digitsOnly
        ],
        maxLines: 1,
        keyboardType: widget.inputType,
        obscureText: widget.obscureText,
        decoration:
            buildInputDecoration(widget.hint, widget.labelText, widget.icon));
  }
}

class TextFormFieldTheme extends StatefulWidget {
  final String hint;
  final String labelText;
  final IconData icon;
  final TextInputType inputType;
  final bool obscureText;
  const TextFormFieldTheme({
    Key? key,
    required this.hint,
    required this.labelText,
    required this.icon,
    required this.inputType,
    required this.obscureText,
  }) : super(key: key);

  @override
  State<TextFormFieldTheme> createState() => _TextFormFieldThemeState();
}

class _TextFormFieldThemeState extends State<TextFormFieldTheme> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (val) {
          if (val == null || val.isEmpty || val.length < 2) {
            return "";
          }
          return null;
        },
        maxLines: 1,
        keyboardType: widget.inputType,
        obscureText: widget.obscureText,
        decoration:
            buildInputDecoration(widget.hint, widget.labelText, widget.icon));
  }
}

InputDecoration buildInputDecoration(
    final String hint, final String labelText, final IconData icon) {
  return InputDecoration(
    errorText: null,
    errorStyle: const TextStyle(height: 0),
    suffixIcon: Icon(
      icon,
      color: kSecondDarkColor,
    ),
    labelText: labelText,
    hintText: hint,
    labelStyle:
        const TextStyle(color: kSecondDarkColor, fontWeight: FontWeight.w500),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
    //Borders Configs

    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: const BorderSide(color: Colors.red),
        gapPadding: 10),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: const BorderSide(color: Colors.redAccent),
        gapPadding: 10),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: const BorderSide(color: kTextColor),
        gapPadding: 10),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: const BorderSide(color: kTextColor),
        gapPadding: 10),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: const BorderSide(color: kTextColor),
        gapPadding: 10),
  );
}
