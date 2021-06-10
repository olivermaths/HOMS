import 'package:flutter/material.dart';
import 'package:homs/src/components/background.dart';
import 'package:homs/src/utils/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = "/profileScreen";
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SafeArea(
            child: Column(
          children: [
            Container(
              color: kPrimaryDarkColor,
              width: double.infinity,
              height: size.height * .1,
              child: Row(
                children: [
                  GestureDetector(
                      child: Container(
                          color: Colors.green,
                          height: size.height * .1,
                          width: size.width / 3,
                          child: Icon(Icons.settings))),
                  GestureDetector(
                      child: Container(
                          color: Colors.green,
                          height: size.height * .1,
                          width: size.width / 3,
                          child: Icon(Icons.home))),
                  GestureDetector(
                      child: Container(
                          color: Colors.green,
                          height: size.height * .1,
                          width: size.width / 3,
                          child: Icon(Icons.person))),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
