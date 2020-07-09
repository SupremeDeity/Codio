import 'package:Codio/Courses/CPP/Level1/Intro/Intro1.dart';
import 'package:Codio/Courses/CPP/Level1/Intro/Intro2.dart';
import 'package:flutter/material.dart';

class CPPIntro extends StatefulWidget {
  @override
  _CPPIntroState createState() => _CPPIntroState();
}

class _CPPIntroState extends State<CPPIntro> {
  int index = 0;
  List<Widget> _widgets = [Intro1(), Intro2()];

  onTap(int tappedIndex) {
    setState(() {
      index = tappedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _widgets[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.looks_one), title: Text("1")),
            BottomNavigationBarItem(
                icon: Icon(Icons.looks_two), title: Text("2"))
          ],
        ),
      ),
    );
  }
}
