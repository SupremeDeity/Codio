///
/// main.dart - SupremeDeity (https://github.com/SupremeDeity
/// Description: Main Page for Codio
///
import 'dart:io';
import 'package:Codio/LevelManager.dart';
import 'package:flutter/material.dart';
import 'package:yaml/yaml.dart';

import 'Courses/CPP/CppLevels.dart';
import 'Components/CustomColors.dart';
import 'Components/Bars.dart';
import 'Components/Buttons.dart';
import 'Components/Cards.dart';

// Main
void main() => runApp(App());

// This function is for debug purposes only!
String debug() {
  String path = Directory.current.absolute.path;
  var yaml = loadYaml(File(path + "\\pubspec.yaml").readAsStringSync());

  return ("""
  Name: ${yaml['name']}
  Description: ${yaml['description']}
  Version: ${yaml['version']}
  Environment: ${yaml['environment']}
  Dependencies: ${yaml['dependencies']}
  """);
}

var info = [
  {"name": "C++", "icon": "assets/icons/cpp-icon.png"},
  {"name": "C#", "icon": "assets/icons/csharp-icon.png"},
];

List<Widget> _createWidgets(context) {
  List<Widget> _widgets = [];
  for (var i = 0; i < info.length; i++) {
    _widgets.add(
      CourseButon(
        info[i]['name'],
        info[i]['icon'],
        LevelManager(info[i]['name']),
        context,
      ),
    );
  }
  return _widgets;
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {"/": (context) => Codio()},
    );
  }
}

class Codio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: CustomColors.darker,
        appBar: header(),
        body: Center(
          child: CustomCard(widgets: [
            Text(
              "COURSES",
              style: TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.bold,
                color: CustomColors.light,
              ),
            ),
            ..._createWidgets(context)
            /*
            CourseButon(
              "C++",
              "assets/icons/cpp-icon.png",
              CppLevel(),
              context,
            ),
            CourseButon(
              "C#",
              "assets/icons/csharp-icon.png",
              App(),
              context,
            ),*/
          ]),
        ),
        bottomNavigationBar: footer(),
      ),
    );
  }
}
