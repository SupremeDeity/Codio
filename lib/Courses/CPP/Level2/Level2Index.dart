import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Cards.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:Codio/Courses/CPP/Level2/Arithmetics/Arithmetics.dart';
import 'package:Codio/Courses/CPP/Level2/Array/Array.dart';
import 'package:Codio/Courses/CPP/Level2/ConditionalStatements/ConditionalStatements.dart';
import 'package:Codio/Courses/CPP/Level2/Functions/Functions.dart';
import 'package:Codio/Courses/CPP/Level2/Input/Input.dart';
import 'package:Codio/Courses/CPP/Level2/Loops/Loops.dart';
import 'package:Codio/Courses/CPP/Level2/Namespace/Namespace.dart';
import 'package:Codio/Courses/CPP/Level2/PreprocessorDirectives/PreprocessorDirectives.dart';
import 'package:Codio/Courses/CPP/Level2/SwitchStatement/SwitchStatement.dart';
import 'package:Codio/Courses/CPP/Level2/Ternary/Ternary.dart';
import 'package:Codio/Courses/CPP/Level2/Vector/Vector.dart';
import 'package:Codio/RouteGenerator.dart';
import 'package:Codio/SplashScreen.dart';
import 'package:flutter/material.dart';

var info = [
  {"name": "Pre-processor Directives", "nav": CppPreDirectives()},
  {"name": "Namespace", "nav": CppNamespace()},
  {"name": "Function Basics", "nav": CppFunctions()},
  {"name": "Conditional statements", "nav": CppConditional()},
  {"name": "Ternary operator", "nav": CppTernary()},
  {"name": "Basic Arthemetics", "nav": CppArithmetics()},
  {"name": "Loops", "nav": CppLoops()},
  {"name": "Taking Input", "nav": CppInput()},
  {"name": "Switch Statement", "nav": CppSwitchStatement()},
  {"name": "Array", "nav": CppArray()},
  {"name": "Vector", "nav": CppVector()},
];

List<Widget> _createWidgets(context) {
  List<Widget> widgets = [];

  for (var i = 0; i < info.length; i++) {
    widgets.add(ButtonCard(
        onTap: () =>
            RouteGenerator.navigate(context, SplashScreen(info[i]['nav'])),
        content: [
          textstyle1(
              text: (i + 1).toString() + "/" + info.length.toString(),
              color: Colors.amber),
          Container(
            padding: EdgeInsets.all(2),
          ),
          textstyle1(
              text: info[i]['name'], color: Theme.of(context).primaryColorLight)
        ]));
  }
  return widgets;
}

class Level2Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context),
      backgroundColor: Theme.of(context).backgroundColor,
      body: GridView.count(
        crossAxisCount: 3,
        children: _createWidgets(context),
      ),
      bottomNavigationBar: footer(context),
    );
  }
}
