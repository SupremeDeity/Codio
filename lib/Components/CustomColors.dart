///
/// CustomColors.dart - SupremeDeity (https://github.com/SupremeDeity)
/// Description:
/// A static class with color constants.
/// This class is 'static' and cannot be instantiated.
/// All Colors defined here are based on Ionic's predefined color constants.
///

import 'package:flutter/material.dart';

/// Static Class for custom colors based on the Ionic Theme Colors.
class CustomColors {
  // Make the class non-instantiable
  CustomColors._();

  static const Color primary = Color.fromRGBO(66, 140, 255, 1.0);
  static const Color secondary = Color.fromRGBO(80, 200, 255, 1.0);
  static const Color tertiary = Color.fromRGBO(106, 100, 255, 1.0);
  static const Color success = Color.fromRGBO(47, 223, 117, 1.0);
  static const Color warning = Color.fromRGBO(255, 213, 52, 1.0);
  static const Color danger = Color.fromRGBO(255, 73, 97, 1.0);
  static const Color light = Color.fromRGBO(237, 237, 238, 1.0);
  static const Color lighter = Color.fromRGBO(252, 252, 253, 1.0);
  static const Color medium = Color.fromRGBO(152, 154, 162, 1.0);
  static const Color dark = Color.fromRGBO(34, 36, 40, 1.0);
  static const Color darker = Color.fromRGBO(18, 18, 18, 1.0);
}
