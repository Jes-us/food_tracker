import 'package:flutter/material.dart';

const kColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF7C5800),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFFFDEA6),
  onPrimaryContainer: Color(0xFF271900),
  secondary: Color(0xFF705D00),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFFFE172),
  onSecondaryContainer: Color(0xFF221B00),
  tertiary: Color(0xFF00696D),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFF6FF6FD),
  onTertiaryContainer: Color(0xFF002021),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFAFCFF),
  onBackground: Color(0xFF001F2A),
  surface: Color(0xFFFAFCFF),
  onSurface: Color(0xFF001F2A),
  surfaceVariant: Color(0xFFEEE1CF),
  onSurfaceVariant: Color(0xFF4E4639),
  outline: Color(0xFF807667),
  onInverseSurface: Color(0xFFE1F4FF),
  inverseSurface: Color(0xFF003547),
  inversePrimary: Color(0xFFFBBC34),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF7C5800),
  outlineVariant: Color(0xFFD1C5B4),
  scrim: Color(0xFF000000),
);

const kDarkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFBBC34),
  onPrimary: Color(0xFF412D00),
  primaryContainer: Color(0xFF5E4200),
  onPrimaryContainer: Color(0xFFFFDEA6),
  secondary: Color(0xFFE4C54A),
  onSecondary: Color(0xFF3B2F00),
  secondaryContainer: Color(0xFF554600),
  onSecondaryContainer: Color(0xFFFFE172),
  tertiary: Color(0xFF4CD9E0),
  onTertiary: Color(0xFF003739),
  tertiaryContainer: Color(0xFF004F53),
  onTertiaryContainer: Color(0xFF6FF6FD),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF001F2A),
  onBackground: Color(0xFFBFE9FF),
  surface: Color(0xFF001F2A),
  onSurface: Color(0xFFBFE9FF),
  surfaceVariant: Color(0xFF4E4639),
  onSurfaceVariant: Color(0xFFD1C5B4),
  outline: Color(0xFF9A8F80),
  onInverseSurface: Color(0xFF001F2A),
  inverseSurface: Color(0xFFBFE9FF),
  inversePrimary: Color(0xFF7C5800),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFFBBC34),
  outlineVariant: Color(0xFF4E4639),
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
