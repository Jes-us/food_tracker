import 'package:flutter/material.dart';

class Manage extends ChangeNotifier {
  Manage(this.actualTheme);

  ThemeMode actualTheme;

  void changeTheme(ThemeMode theme) {
    var chageFlag = 0;

    if (actualTheme == ThemeMode.dark && chageFlag == 0) {
      actualTheme = ThemeMode.light;
      chageFlag = 1;
    }
    if (actualTheme == ThemeMode.light && chageFlag == 0) {
      actualTheme = ThemeMode.dark;
      chageFlag = 1;
    }

    notifyListeners();
  }

  ThemeMode getActualTheme() {
    return actualTheme;
  }
}
