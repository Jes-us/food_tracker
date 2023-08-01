// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'theme.dart';
import 'package:provider/provider.dart';

ThemeMode customizedThemeMode = ThemeMode.dark;

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

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
                  appBarTheme: AppBarTheme(color: Colors.blueAccent)),
              darkTheme: ThemeData(
                colorScheme: kDarkColorScheme,
              ),
              themeMode: themenotifier.getActualTheme(),
              home: HomePage(),
            );
          },
        ));
  }
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Manage>(
      builder: (context, Manage themeNotifier, child) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            actions: [
              IconButton(
                  onPressed: () {
                    themeNotifier.changeTheme(customizedThemeMode);
                  },
                  icon: Icon(Icons.dark_mode_rounded)),
            ],
            title: Text('App de prueba para provider'),
          ),
          //agreo comentario de prueba
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      color: Theme.of(context).cardColor,
                    ),
                  )),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 10,
                        height: 20,
                        color: Theme.of(context).cardColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 10,
                        height: 20,
                        color: Theme.of(context).cardColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
