///
/// AppPrefs.dart - SupremeDeity (https://github.com/SupremeDeity)
/// Description: Stores preferences for use in app.
///
import 'package:Codio/Components/CustomColors.dart';
import 'package:flutter/material.dart';

/// Container for themes used throughout the app.
/// The fields in this class are not neccessarily being used for their intended purpose.
/// For example the `secondaryHeaderColor` is being used as a secondary text color.
class AppTheme {
  AppTheme._();

  /// Colors that will not change with theme.
  /// This theme is here for Ease-of-access and modification.
  static final ThemeData _template = ThemeData(
      errorColor: CustomColors.danger,
      accentColor: CustomColors.primary,
      secondaryHeaderColor: CustomColors.secondary);

  /// Default theme (dark)
  static final ThemeData darkTheme = ThemeData(
      primaryColor: CustomColors.dark, // Card, header etc background
      backgroundColor: CustomColors.darker, // App Background color
      primaryColorLight: Colors.white70, // Color for text
      errorColor: _template.errorColor,
      accentColor: _template.accentColor,
      secondaryHeaderColor: _template.secondaryHeaderColor,
      hintColor:
          CustomColors.dark // Hint to check which theme is being used (temp)
      );

  /// Secondary theme mode (light)
  static final ThemeData lightTheme = ThemeData(
      primaryColor: CustomColors.light, // Card, header etc background
      backgroundColor: CustomColors.lighter, // App Background color
      primaryColorLight: Colors.black87, // Color for text
      errorColor: _template.errorColor,
      accentColor: _template.accentColor,
      secondaryHeaderColor: _template.secondaryHeaderColor,
      hintColor:
          CustomColors.light // Hint to check which theme is being used (temp)
      );
}
