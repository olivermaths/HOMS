//Container, structure  of the Input.
import 'package:homs/src/utils/constants.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        height: size.height * .08,
        width: size.width * .9,
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            border: Border.all(color: kTextColor),
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(28)),
        child: Center(child: child));
  }
}
