import "package:flutter/material.dart";
import 'package:shared_preferences/shared_preferences.dart';

class ThemeChanger with ChangeNotifier {
  final String _key = "darkTheme";
  SharedPreferences _prefs;
  bool _darkTheme;

  ThemeChanger() {
    _darkTheme = true;
    _loadPrefs();
  }

  /// Whether Dark theme is being used or not.
  bool get darkTheme => _darkTheme;

  toggleTheme() {
    _darkTheme = !_darkTheme;
    _savePrefs();
  }

  _initPrefs() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  _loadPrefs() async {
    await _initPrefs();

    _darkTheme = _prefs.getBool(_key) ?? true;
    notifyListeners();
  }

  _savePrefs() async {
    await _initPrefs();

    _prefs.setBool(_key, _darkTheme);

    notifyListeners();
  }
}
