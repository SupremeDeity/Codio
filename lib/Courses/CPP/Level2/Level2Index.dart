import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Cards.dart';
import 'package:Codio/Components/CustomColors.dart';
import 'package:Codio/Components/PremadeStyle.dart';
import 'package:flutter/material.dart';

void navigate(BuildContext context, Widget navTo) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => navTo));
}

var info = [
  {"name": "Pre-processor Directives", "nav": MaterialApp()},
  {"name": "Namespace", "nav": MaterialApp()},
  {"name": "Function Basics", "nav": MaterialApp()},
  {"name": "Scopes", "nav": MaterialApp()},
  {"name": "Conditional statements", "nav": MaterialApp()},
  {"name": "Ternary operator", "nav": MaterialApp()},
  {"name": "Basic Arthemetics", "nav": MaterialApp()},
  {"name": "Loop", "nav": MaterialApp()},
  {"name": "Taking Input", "nav": MaterialApp()},
  {"name": "Switch Statement", "nav": MaterialApp()},
  {"name": "Array", "nav": MaterialApp()},
  {"name": "Dynamic Array", "nav": MaterialApp()},
];

List<Widget> _createWidgets(context) {
  List<Widget> widgets = [];

  for (var i = 0; i < info.length; i++) {
    widgets.add(
        ButtonCard(onTap: () => navigate(context, info[i]['nav']), content: [
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
