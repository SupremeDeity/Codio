///
/// Level1Index.dart - SupremeDeity (https://github.com/SupremeDeity
///

import 'package:Codio/Courses/CPP/Level1/BasicProgram/BasicProgram.dart';
import 'package:Codio/Courses/CPP/Level1/HelloWorld/HelloWorld.dart';
import 'package:Codio/Courses/CPP/Level1/Intro/Intro.dart';
import 'package:Codio/Courses/CPP/Level1/IDE/IDE.dart';
import 'package:Codio/Courses/CPP/Level1/PrimitiveTypes/PrimitiveTypes.dart';
import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Cards.dart';
import 'package:Codio/Components/CustomColors.dart';
import 'package:Codio/Components/PremadeStyle.dart';
import 'package:Codio/Courses/CPP/Level1/Variables/Variables.dart';
import 'package:Codio/SplashScreen.dart';
import 'package:flutter/material.dart';

void navigate(BuildContext context, Widget navTo) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => navTo));
}

var info = [
  {"name": "Introduction", "nav": CPPIntro()},
  {"name": "IDE", "nav": CppIDE()},
  {"name": "Basic Program", "nav": CppBasicProgram()},
  {"name": "Primitive Types", "nav": CppPTypes()},
  {"name": "Variables", "nav": CppVariables()},
  {"name": "Printing Hello World", "nav": CppHelloWorld()},
  {"name": "Comments", "nav": MaterialApp()},
  {"name": "Linker & Compiler", "nav": MaterialApp()},
];

List<Widget> _createWidgets(context) {
  List<Widget> widgets = [];

  for (var i = 0; i < info.length; i++) {
    widgets.add(ButtonCard(
        onTap: () => navigate(context, SplashScreen(info[i]['nav'])),
        content: [
          textstyle1(
              text: (i + 1).toString() + "/" + info.length.toString(),
              color: Colors.amber),
          Container(
            padding: EdgeInsets.all(2),
          ),
          textstyle1(text: info[i]['name'])
        ]));
  }
  return widgets;
}

class Level1Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: header(),
      backgroundColor: CustomColors.darker,
      body: GridView.count(
        crossAxisCount: 3,
        children: _createWidgets(context),
      ),
      bottomNavigationBar: footer(),
    ));
  }
}
