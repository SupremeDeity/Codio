///
/// Level1Index.dart - SupremeDeity (https://github.com/SupremeDeity
///

import 'package:Codio/Courses/CPP/Level1/BasicProgram/BasicProgram.dart';
import 'package:Codio/Courses/CPP/Level1/Intro/Intro.dart';
import 'package:Codio/Courses/CPP/Level1/IDE/IDE.dart';
import 'package:Codio/Courses/CPP/Level1/PrimitiveTypes/PrimitiveTypes.dart';
import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Cards.dart';
import 'package:Codio/Components/CustomColors.dart';
import 'package:Codio/Components/PremadeStyle.dart';
import 'package:flutter/material.dart';

void navigate(BuildContext context, Widget navTo) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => navTo));
}

var info = [
  {"name": "Introduction", "nav": CPPIntro()},
  {"name": "IDE", "nav": CppIDE()},
  {"name": "Basic Program", "nav": CppBasicProgram()},
  {"name": "Primitive Types", "nav": CppPTypes()},
  {"name": "Variables", "nav": MaterialApp()},
  {"name": "Printing Hello World", "nav": MaterialApp()},
  {"name": "Linker & Compiler", "nav": MaterialApp()},
  {"name": "Comments", "nav": MaterialApp()},
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
      /*Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCard(
                onTap: () => navigate(context, CPPIntro()),
                content: [
                  textstyle1(text: "1", color: Colors.amber),
                  textstyle1(text: "Introduction")
                ],
              ),
              ButtonCard(
                onTap: () => navigate(context, CppIDE()),
                content: [
                  textstyle1(text: "2", color: Colors.amber),
                  textstyle1(text: "IDE")
                ],
              ),
              ButtonCard(
                onTap: () => navigate(context, CppBasicProgram()),
                content: [
                  textstyle1(text: "3", color: Colors.amber),
                  textstyle1(text: "Basic Program")
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCard(
                onTap: () => navigate(context, CppPTypes()),
                content: [
                  textstyle1(text: "4", color: Colors.amber),
                  textstyle1(text: "Primitive Types")
                ],
              ),
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "5", color: Colors.amber),
                  textstyle1(text: "Variables")
                ],
              ),
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "6", color: Colors.amber),
                  textstyle1(text: "Printing Hello World")
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "7", color: Colors.amber),
                  textstyle1(text: "Linker & Compiler")
                ],
              ),
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "8", color: Colors.amber),
                  textstyle1(text: "Comments")
                ],
              ),
            ],
          )
        ],
      ),*/
      bottomNavigationBar: footer(),
    ));
  }
}
