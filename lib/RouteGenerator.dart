///
/// RouteGenerator.dart - SupremeDeity (https://github.com/SupremeDeity
/// Description: Generate Route
///

import 'package:Codio/Components/TextStyles.dart';
import 'package:Codio/IndexManager.dart';
import 'package:Codio/LevelManager.dart';
import 'package:Codio/main.dart';
import 'package:flutter/material.dart';

/// Generates routes and passes in arguments.
class RouteGenerator {
  static void navigate(BuildContext context, Widget navTo) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => navTo));
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Codio());
      case '/LevelManager':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => LevelManager(args));
        }
        return errorRoute(settings);
      case '/IndexManager':
        var list = args as List<String>;
        return MaterialPageRoute(
            builder: (_) => IndexManager(list[0], list[1]));
      default:
        return errorRoute(settings);
    }
  }

  /// Route to show when a invalid route is pushed.
  static Route<dynamic> errorRoute(RouteSettings settings) {
    var args = settings.arguments;
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Column(children: [
          textstyle1(text: "An Error Occured...", color: Colors.red, size: 20),
          textstyle1(
              text: "Error Code: E_INVALID_ROUTE",
              color: Colors.red,
              size: 15,
              weight: FontWeight.normal),
          if (args != null)
            (textstyle1(
              text: "Arguments: " + args.toString(),
              color: Colors.red,
              size: 15,
              weight: FontWeight.normal,
            )),
          textstyle1(
              text:
                  "Please inform developers about this error with the given details and how to reproduce this error.",
              color: Colors.red,
              size: 15,
              weight: FontWeight.normal),
        ]),
      );
    });
  }
}
