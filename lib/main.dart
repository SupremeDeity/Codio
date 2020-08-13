///
/// main.dart - SupremeDeity (https://github.com/SupremeDeity
/// Description: Main Page for Codio
///
import 'package:Codio/Components/TextStyles.dart';
import 'package:Codio/RouteGenerator.dart';
import 'package:Codio/AppPrefs.dart';
import 'package:Codio/ThemeChanger.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Components/Bars.dart';
import 'Components/Buttons.dart';
import 'Components/Cards.dart';

// Main
void main() => runApp(App());

// This function is for debug purposes only!

var info = [
  {"name": "C++", "icon": "assets/icons/cpp-icon.png"},
  // {"name": "C#", "icon": "assets/icons/csharp-icon.png"},
];

List<Widget> _createWidgets(context) {
  List<Widget> _widgets = <Widget>[];

  _widgets.add(textstyle4(
      text: "Courses",
      size: 15,
      weight: FontWeight.bold,
      color: Theme.of(context).primaryColorLight));

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
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(),
      child: Consumer<ThemeChanger>(builder: (context, notifier, child) {
        return MaterialApp(
          initialRoute: "/",
          onGenerateRoute: RouteGenerator.generateRoute,
          onUnknownRoute: RouteGenerator.errorRoute,
          theme: notifier.darkTheme ? AppTheme.darkTheme : AppTheme.lightTheme,
        );
      }),
    );
  }
}

class Codio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: header(context),
      body: Center(
        child: CustomCard(widgets: _createWidgets(context)),
      ),
      bottomNavigationBar: footerTheme(context),
    );
  }
}
