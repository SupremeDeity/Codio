import 'package:Codio/Courses/CPP/Level1/Variables/Variables1.dart';
import 'package:Codio/Courses/CPP/Level1/Variables/Variables2.dart';

///
/// Intro.dart - SupremeDeity (https://github.com/SupremeDeity
///

import 'package:flutter/material.dart';

class CppVariables extends StatefulWidget {
  @override
  _CppVariablesState createState() => _CppVariablesState();
}

class _CppVariablesState extends State<CppVariables> {
  int index = 0;
  List<Widget> _widgets = [CppVariables1(), CppVariables2()];

  onTap(int tappedIndex) {
    setState(() {
      index = tappedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_one), title: Text("1")),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two), title: Text("2"))
        ],
      ),
    );
  }
}
