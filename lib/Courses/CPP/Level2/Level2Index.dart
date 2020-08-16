import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Cards.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:Codio/Courses/CPP/Level2/ConditionalStatements/ConditionalStatements.dart';
import 'package:Codio/Courses/CPP/Level2/Functions/Functions.dart';
import 'package:Codio/Courses/CPP/Level2/Namespace/Namespace.dart';
import 'package:Codio/Courses/CPP/Level2/PreprocessorDirectives/PreprocessorDirectives.dart';
import 'package:Codio/RouteGenerator.dart';
import 'package:Codio/SplashScreen.dart';
import 'package:flutter/material.dart';

var info = [
  {"name": "Pre-processor Directives", "nav": CppPreDirectives()},
  {"name": "Namespace", "nav": CppNamespace()},
  {"name": "Function Basics", "nav": CppFunctions()},
  {"name": "Conditional statements", "nav": CppConditional()},
  {"name": "Ternary operator", "nav": Scaffold()},
  {"name": "Basic Arthemetics", "nav": Scaffold()},
  {"name": "Loop", "nav": Scaffold()},
  {"name": "Taking Input", "nav": Scaffold()},
  {"name": "Switch Statement", "nav": Scaffold()},
  {"name": "Array", "nav": Scaffold()},
  {"name": "Dynamic Array", "nav": Scaffold()},
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
