///
/// CppLevels.dart - SupremeDeity (https://github.com/SupremeDeity
/// Description: shows a list of all available 'levels' for the course
///

import 'package:Codio/Components/Cards.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';
import '../../Components/Bars.dart';
import '../../Components/Buttons.dart';

var info = [
  {
    "name": "Level 1",
    "icon": "assets/icons/cpp-icon.png",
  },
  {
    "name": "Level 2",
    "icon": "assets/icons/cpp-icon.png",
  },
];

List<Widget> _createWidgets(context) {
  List<Widget> _widgets = [];
  for (var i = 0; i < info.length; i++) {
    _widgets.add(
      ButtonStyleOne.route(
        info[i]['name'],
        info[i]['icon'],
        () {
          Navigator.of(context)
              .pushNamed("/IndexManager", arguments: ["C++", info[i]['name']]);
        },
        context,
      ),
    );
  }
  return _widgets;
}

class CppLevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: header(context),
      body: Center(
        child: CustomCard(widgets: [
          textstyle4(
              text: "C++",
              size: 15,
              weight: FontWeight.bold,
              color: Theme.of(context).primaryColorLight),
          ..._createWidgets(context)
        ]),
      ),
      bottomNavigationBar: footer(context),
    );
  }
}
