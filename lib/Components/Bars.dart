import 'package:Codio/Components/TextStyles.dart';

///
/// Bars.dart - SupremeDeity (https://github.com/SupremeDeity)
/// Description: helper functions to easily display header and footer for Codio
///

import 'package:flutter/material.dart';
import './CustomColors.dart';
import 'package:Codio/SharedPrefs.dart';

AppBar header() {
  return AppBar(
    title: textstyle3(text: "CODIO", size: 20, color: CustomColors.secondary),
    centerTitle: true,
    backgroundColor: CustomColors.dark,
  );
}

Widget footer() {
  SharedPrefs sharedPrefs = SharedPrefs();
  var version = sharedPrefs.version;

  return Container(
      height: 40,
      child: BottomAppBar(
        color: CustomColors.dark,
        child: Center(
            child: textstyle4(
                text: version != null ? "BETA - $version" : "BETA",
                color: CustomColors.danger,
                size: 20)),
      ));
}
