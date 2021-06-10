import 'package:homs/src/utils/constants.dart';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
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
        child: Column(
          children: [
            child,
          ],
        ),
      ),
    );
  }
}
