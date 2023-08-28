import 'package:flutter/material.dart';

const kColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFFFFFFF), //color
  onPrimary: Color(0xFF000000), //color
  primaryContainer: Color(0xFFC7cacf), //color
  onPrimaryContainer: Color(0xFF001F24),
  secondary: Color(0xFFe62124), //color
  onSecondary: Color(0xFFe8eaef), //color
  secondaryContainer: Color(0xFFCFE5FF),
  onSecondaryContainer: Color(0xFF001D34),
  tertiary: Color(0xFFC00012),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFFDAD6),
  onTertiaryContainer: Color(0xFF410002),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFF8FDFF),
  onBackground: Color(0xFF001F25),
  surface: Color(0xFFF8FDFF),
  onSurface: Color(0xFF001F25),
  surfaceVariant: Color(0xFFDBE4E6),
  onSurfaceVariant: Color(0xFF3F484A),
  outline: Color(0xFF6F797A),
  onInverseSurface: Color(0xFFD6F6FF),
  inverseSurface: Color(0xFF00363F),
  inversePrimary: Color(0xFF4FD8EB),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF006874),
  outlineVariant: Color(0xFFBFC8CA),
  scrim: Color(0xFF000000),
);

const kDarkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF000000),
  onPrimary: Color(0xFFffffff), //C7cacf
  primaryContainer: Color(0xFF3c3c3c),
  onPrimaryContainer: Color(0xFF97F0FF),
  secondary: Color(0xFFe62124),
  onSecondary: Color(0xFF003355),
  secondaryContainer: Color(0xFF004A78),
  onSecondaryContainer: Color(0xFFCFE5FF),
  tertiary: Color(0xFFFFB4AB),
  onTertiary: Color(0xFF690005),
  tertiaryContainer: Color(0xFF93000B),
  onTertiaryContainer: Color(0xFFFFDAD6),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF001F25),
  onBackground: Color(0xFFA6EEFF),
  surface: Color(0xFF001F25),
  onSurface: Color(0xFFA6EEFF),
  surfaceVariant: Color(0xFF3F484A),
  onSurfaceVariant: Color(0xFFBFC8CA),
  outline: Color(0xFF899294),
  onInverseSurface: Color(0xFF001F25),
  inverseSurface: Color(0xFFA6EEFF),
  inversePrimary: Color(0xFF006874),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF4FD8EB),
  outlineVariant: Color(0xFF3F484A),
  scrim: Color(0xFF000000),
);

/*ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);*/

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
