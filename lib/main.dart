// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'theme.dart';
import 'package:provider/provider.dart';
import 'view/homepage.dart';
import 'package:food_tracker/view_model/product_view_model.dart';
import 'package:food_tracker/view_model/prodf_view_model.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

ThemeMode customizedThemeMode = ThemeMode.dark;

void main() async {
  sqfliteFfiInit();
  // databaseFactory = databaseFactoryFfi;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Manage(customizedThemeMode),
          ),
          ChangeNotifierProvider(create: (_) => ProductViewModel()),
          ChangeNotifierProvider(create: (_) => ProdfProvider())
        ],
        child: Consumer<Manage>(
          builder: (context, Manage themenotifier, child) {
            return MaterialApp(
              theme: ThemeData(
                colorScheme: kColorScheme,
                useMaterial3: false,
                textTheme:
                    TextTheme(headlineMedium: TextStyle(color: Colors.black)),
              ),
              darkTheme: ThemeData(
                colorScheme: kDarkColorScheme,
                textTheme:
                    TextTheme(headlineMedium: TextStyle(color: Colors.white)),
                useMaterial3: true,
                filledButtonTheme: FilledButtonThemeData(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      return Theme.of(context).colorScheme.secondary;
                      // Defer to the widget's default.
                    }),
                  ),
                ),
              ),
              themeMode: themenotifier.getActualTheme(),
              home: HomePage(),
            );
          },
        ));
  }
}

// ignore: use_key_in_widget_constructors

