///
/// Namespace.dart - SupremeDeity (https://github.com/SupremeDeity
///
import 'package:Codio/Courses/CPP/Level2/Namespace/Namespace1.dart';
import 'package:Codio/Courses/CPP/Level2/Namespace/Namespace2.dart';
import 'package:flutter/material.dart';

class CppNamespace extends StatefulWidget {
  @override
  _CppNamespaceState createState() => _CppNamespaceState();
}

class _CppNamespaceState extends State<CppNamespace> {
  int index = 0;
  List<Widget> _widgets = [CPPNamespace1(), CPPNamespace2()];

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
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColorLight,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_one), title: Text("1")),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            title: Text("2"),
          )
        ],
      ),
    );
  }
}
