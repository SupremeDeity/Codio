///
/// SplashScreen.dart - SupremeDeity (https://github.com/SupremeDeity
/// Description: Shows Splash Screen
///

import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';

import 'package:flutter_spinkit/flutter_spinkit.dart';

void _navigate(BuildContext context, Widget navTo) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => navTo));
}

/// navTo: Widget to navigate to after showing splash screen.
///
/// Show Splash Screen and then navigate to the widget passed in as argument.
/// The splash screen duration is 1-2 seconds.
/// This DOES NOT LOAD ARGUMENT WIDGET ASYNCHRONOUSLY.
class SplashScreen extends StatefulWidget {
  final Widget navTo;
  SplashScreen(this.navTo);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigate(context, widget.navTo);
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(seconds: 1), () {});

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            SpinKitWave(
              color: Theme.of(context).primaryColorLight,
            )
          ])),
    );
  }
}
