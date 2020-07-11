import 'package:Codio/Courses/CPP/CppLevels.dart';
import 'package:Codio/Courses/CPP/Level1/Level1Index.dart';
import 'package:Codio/Courses/CPP/Level2/Level2Index.dart';
import 'package:flutter/material.dart';

var info = {
  "C++": {'Level 1': Level1Index(), 'Level 2': Level2Index()},
};

class IndexManager extends StatelessWidget {
  final String language;
  final String level;
  IndexManager(this.language, this.level);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: info[language][level],
      ),
    );
  }
}
