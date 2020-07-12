import 'package:Codio/Components/Bars.dart';
import 'package:Codio/IndexManager.dart';
import 'package:Codio/LevelManager.dart';
import 'package:Codio/main.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Codio());
      case '/LevelManager':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => LevelManager(args));
        }
        return _errorRoute();
      case '/IndexManager':
        var list = args as List<String>;
        return MaterialPageRoute(
            builder: (_) => IndexManager(list[0], list[1]));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: header(),
        bottomNavigationBar: footer(),
        body: Center(
          child: Text("Error in Route"),
        ),
      );
    });
  }
}
