import 'package:Codio/Components/TextStyles.dart';

///
/// main.dart - SupremeDeity (https://github.com/SupremeDeity
/// Description: Main Page for Codio
///
import 'package:Codio/RouteGenerator.dart';
import 'package:Codio/SharedPrefs.dart';
import 'package:flutter/material.dart';

import 'Components/CustomColors.dart';
import 'Components/Bars.dart';
import 'Components/Buttons.dart';
import 'Components/Cards.dart';

// Main
void main() => runApp(App());

// This function is for debug purposes only!
String debug() {
  SharedPrefs sharedprefs = SharedPrefs();

  return ("""
  Name: ${sharedprefs.appName}
  Version: ${sharedprefs.version}
  Build Number: ${sharedprefs.buildNumber}
  Package: ${sharedprefs.packageName}
  """);
}

var info = [
  {"name": "C++", "icon": "assets/icons/cpp-icon.png"},
  // {"name": "C#", "icon": "assets/icons/csharp-icon.png"},
];

List<Widget> _createWidgets(context) {
  List<Widget> _widgets = <Widget>[];

  _widgets.add(textstyle4(text: "Courses", size: 15, weight: FontWeight.bold));

  for (var i = 0; i < info.length; i++) {
    _widgets.add(
      ButtonStyleOne.route(
        info[i]['name'],
        info[i]['icon'],
        () {
          Navigator.of(context)
              .pushNamed("/LevelManager", arguments: info[i]['name']);
        },
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
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
      onUnknownRoute: RouteGenerator.errorRoute,
    );
  }
}

class Codio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.darker,
      appBar: header(),
      body: Center(
        child: CustomCard(widgets: _createWidgets(context)),
      ),
      bottomNavigationBar: footer(),
    );
  }
}
