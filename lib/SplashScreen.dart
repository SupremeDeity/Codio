import 'dart:math';

import 'package:Codio/Components/CustomColors.dart';
import 'package:Codio/Components/PremadeStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void _navigate(BuildContext context, Widget navTo) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => navTo));
}

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
    final Random _rand = new Random();
    final int _num =
        (((2 + _rand.nextInt(2 - 1)) + _rand.nextDouble()) * 1000).toInt();
    await Future.delayed(Duration(milliseconds: _num), () {});

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.dark,
      body: Center(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            SpinKitThreeBounce(color: CustomColors.secondary, size: 50.0),
            Container(
              padding: EdgeInsets.all(5),
            ),
            textstyle1(text: "LOADING...", size: 40)
          ])),
    );
  }
}
