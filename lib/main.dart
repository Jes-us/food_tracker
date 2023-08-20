// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'theme.dart';
import 'package:provider/provider.dart';
import 'home/homepage.dart';
//import 'utilities/barcode_reader.dart';
import 'package:food_tracker/view_model/product_view_model.dart';

ThemeMode customizedThemeMode = ThemeMode.dark;

void main() {
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
        ],
        child: Consumer<Manage>(
          builder: (context, Manage themenotifier, child) {
            return MaterialApp(
              theme: ThemeData(
                colorScheme: kColorScheme,
                useMaterial3: false,
              ),
              darkTheme: ThemeData(
                colorScheme: kDarkColorScheme,
                useMaterial3: true,
                filledButtonTheme: FilledButtonThemeData(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      return Theme.of(context).colorScheme.primary;
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

