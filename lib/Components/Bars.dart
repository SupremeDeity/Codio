///
/// Bars.dart - SupremeDeity (https://github.com/SupremeDeity
/// Description: helper functions to easily display header and footer for Codio
///

import './CustomColors.dart';
import 'package:flutter/material.dart';

AppBar header() {
  return AppBar(
    title: Image.asset(
      "assets/icons/CodioBar.png",
      fit: BoxFit.cover,
      width: 80,
      height: 32,
    ),
    centerTitle: true,
    backgroundColor: CustomColors.dark,
  );
}

Widget footer() {
  return Container(
      height: 40,
      child: BottomAppBar(
        color: CustomColors.dark,
        child: Center(
            child: Text(
          "BETA",
          style: TextStyle(
              color: CustomColors.danger,
              fontWeight: FontWeight.w900,
              fontSize: 20),
        )),
      ));
}
