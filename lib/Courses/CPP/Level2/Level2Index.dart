import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Cards.dart';
import 'package:Codio/Components/CustomColors.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:Codio/RouteGenerator.dart';
import 'package:flutter/material.dart';

var info = [
  {"name": "Pre-processor Directives", "nav": Scaffold()},
  {"name": "Namespace", "nav": Scaffold()},
  {"name": "Function Basics", "nav": Scaffold()},
  {"name": "Scopes", "nav": Scaffold()},
  {"name": "Conditional statements", "nav": Scaffold()},
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
        onTap: () => RouteGenerator.navigate(context, info[i]['nav']),
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

class Level2Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
      backgroundColor: CustomColors.darker,
      body: GridView.count(
        crossAxisCount: 3,
        children: _createWidgets(context),
      ),
      bottomNavigationBar: footer(),
    );
  }
}
