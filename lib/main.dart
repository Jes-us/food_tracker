// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'theme.dart';
import 'package:provider/provider.dart';
import 'home/homepage.dart';
//import 'utilities/barcode_reader.dart';

ThemeMode customizedThemeMode = ThemeMode.dark;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Manage(customizedThemeMode),
        child: Consumer<Manage>(
          builder: (context, Manage themenotifier, child) {
            return MaterialApp(
              theme: ThemeData(
                colorScheme: kColorScheme,
                useMaterial3: false,
              ),
              darkTheme: ThemeData(
                colorScheme: kDarkColorScheme,
                useMaterial3: false,
              ),
              themeMode: themenotifier.getActualTheme(),
              home: HomePage(),
            );
          },
        ));
  }
}

// ignore: use_key_in_widget_constructors

