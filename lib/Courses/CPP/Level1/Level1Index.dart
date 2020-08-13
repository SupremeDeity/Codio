///
/// Level1Index.dart - SupremeDeity (https://github.com/SupremeDeity
///

import 'package:Codio/Courses/CPP/Level1/BasicProgram/BasicProgram.dart';
import 'package:Codio/Courses/CPP/Level1/Comments/Comments.dart';
import 'package:Codio/Courses/CPP/Level1/HelloWorld/HelloWorld.dart';
import 'package:Codio/Courses/CPP/Level1/Intro/Intro.dart';
import 'package:Codio/Courses/CPP/Level1/IDE/IDE.dart';
import 'package:Codio/Courses/CPP/Level1/Compiler/Compiler.dart';
import 'package:Codio/Courses/CPP/Level1/PrimitiveTypes/PrimitiveTypes.dart';
import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Cards.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:Codio/Courses/CPP/Level1/Variables/Variables.dart';
import 'package:Codio/RouteGenerator.dart';
import 'package:Codio/SplashScreen.dart';
import 'package:flutter/material.dart';

var info = [
  {"name": "Introduction", "nav": CPPIntro()},
  {"name": "IDE", "nav": CppIDE()},
  {"name": "Basic Program", "nav": CppBasicProgram()},
  {"name": "Primitive Types", "nav": CppPTypes()},
  {"name": "Variables", "nav": CppVariables()},
  {"name": "Printing Hello World", "nav": CppHelloWorld()},
  {"name": "Comments", "nav": CppComments()},
  {"name": "Compiler", "nav": CppCompiler()},
];

List<Widget> _createWidgets(BuildContext context) {
  List<Widget> widgets = [];

  for (var i = 0; i < info.length; i++) {
    widgets.add(ButtonCard(
        onTap: () =>
            RouteGenerator.navigate(context, SplashScreen(info[i]['nav'])),
        content: [
          textstyle4(
              text: (i + 1).toString() + "/" + info.length.toString(),
              color: Colors.amber),
          Container(
            padding: EdgeInsets.all(2),
          ),
          textstyle4(
              text: info[i]['name'], color: Theme.of(context).primaryColorLight)
        ]));
  }
  return widgets;
}

class Level1Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context),
      backgroundColor: Theme.of(context).backgroundColor,
      body: GridView.count(
        crossAxisCount: 3, // Items per row
        children: _createWidgets(context),
      ),
      bottomNavigationBar: footer(context),
    );
  }
}
