///
/// LevelManager.dart - SupremeDeity (https://github.com/SupremeDeity
/// Description: displays different level screens depending on arguments
///

import 'package:Codio/Courses/CPP/CppLevels.dart';
import 'package:Codio/SplashScreen.dart';
import 'package:flutter/material.dart';

var info = {
  "C++": CppLevel(),
};

class LevelManager extends StatelessWidget {
  final String language;
  LevelManager(this.language);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(info[language]),
    );
  }
}
