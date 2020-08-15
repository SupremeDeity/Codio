///
/// Bars.dart - SupremeDeity (https://github.com/SupremeDeity)
/// Description: helper functions to easily display header and footer for Codio
///

import 'package:Codio/Components/TextStyles.dart';
import 'package:Codio/ThemeChanger.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Header appbar.
AppBar header(BuildContext context) {
  return AppBar(
    title: textstyle3(
        text: "CODIO", size: 20, color: Theme.of(context).secondaryHeaderColor),
    centerTitle: true,
    backgroundColor: Theme.of(context).primaryColor,
  );
}

/// Footer widget
Widget footer(BuildContext context) {
  return Container(
    height: 40,
    child: BottomAppBar(
      color: Theme.of(context).primaryColor,
      child: Center(
          child: textstyle3(
              text: "BETA", color: Theme.of(context).errorColor, size: 20)),
    ),
  );
}

/// Footer widget for changing theme.
Widget footerTheme(BuildContext context) {
  return Container(
    height: 40,
    child: BottomAppBar(
      color: Theme.of(context).primaryColor,
      child: Container(
        child: Consumer<ThemeChanger>(
          builder: (context, notifier, child) {
            return RaisedButton.icon(
              color: Theme.of(context).accentColor,
              onPressed: () => notifier.toggleTheme(),
              icon: Icon(Icons.brightness_medium),
              label: Text("Toggle Theme"),
            );
          },
        ),
      ),
    ),
  );
}
