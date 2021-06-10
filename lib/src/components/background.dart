import 'package:flutter/material.dart';
import 'package:homs/src/utils/constants.dart';

class Background extends StatelessWidget {
  Widget child;
  Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        color: kBackgroundColor,
        height: size.height,
        width: double.infinity,
        child: child,
      ),
    );
  }
}
