import 'package:Codio/Courses/CPP/CppLevels.dart';
import 'package:Codio/Custom/CustomColors.dart';
import 'package:flutter/material.dart';
import 'package:yaml/yaml.dart';

import 'custom/Bars.dart';
import 'custom/Buttons.dart';
import 'custom/Cards.dart';

// Main
void main() => runApp(App());

String debug() {
  var doc = loadYaml("./pubspec.yaml");
  print(doc['version']);
  return """
  Name: Codio
  Version: v1.0.0+1
  Package: com.supremedeity.codio
  Language: Dart
  Framework: Flutter
  Target Platform: Android(min: API16, target: API28)""";
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Codio(),
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
            ),
          ]),
        ),
        bottomNavigationBar: footer(),
      ),
    );
  }
}
