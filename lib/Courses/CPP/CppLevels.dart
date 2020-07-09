import 'package:Codio/Courses/CPP/Level1/Level1Index.dart';
import 'package:Codio/Courses/CPP/Level2/Level2Index.dart';
import 'package:Codio/Custom/Cards.dart';
import 'package:Codio/Custom/CustomColors.dart';
import 'package:flutter/material.dart';
import '../../Custom/Bars.dart';
import '../../Custom/Buttons.dart';

class CppLevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: CustomColors.darker,
        appBar: header(),
        body: Center(
          child: CustomCard(widgets: [
            Text(
              "C++",
              style: TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            CourseButon(
              "Level 1",
              "assets/icons/cpp-icon.png",
              Level1Index(),
              context,
            ),
            CourseButon(
              "Level 2",
              "assets/icons/cpp-icon.png",
              Level2Index(),
              context,
            ),
          ]),
        ),
        bottomNavigationBar: footer(),
      ),
    );
  }
}
