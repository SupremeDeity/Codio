import 'package:Codio/Courses/CPP/CppLevels.dart';
import 'package:flutter/material.dart';

var info = {
  "C++": CppLevel(),
};

class LevelManager extends StatelessWidget {
  final String language;
  LevelManager(this.language);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: info[language],
      ),
    );
  }
}
