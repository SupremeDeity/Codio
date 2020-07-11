///
/// Buttons.dart - SupremeDeity (https://github.com/SupremeDeity
/// Description: Customized Raised Buttons for showing courses
///

import './CustomColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void navigate(BuildContext context, Widget navTo) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => navTo));
}

class CourseButon extends StatelessWidget {
  final String courseName;
  final String courseImg;
  final Widget funcHandle;
  final BuildContext inputContext;
  CourseButon(
      this.courseName, this.courseImg, this.funcHandle, this.inputContext);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 200,
      child: RaisedButton.icon(
          color: CustomColors.primary,
          onPressed: () => {navigate(context, funcHandle)},
          icon: Image.asset(
            courseImg,
            fit: BoxFit.contain,
            width: 32,
            height: 32,
          ),
          label: Text(
            courseName,
            style: TextStyle(fontFamily: "Roboto", fontWeight: FontWeight.w800),
          )),
    );
  }
}
