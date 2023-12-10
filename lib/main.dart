// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'theme.dart';
import 'package:provider/provider.dart';
import 'package:food_tracker/view_model/product_view_model.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'core/app_export.dart';
import 'view/login/signup_login_module_screen.dart';

ThemeMode customizedThemeMode = ThemeMode.dark;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sqfliteFfiInit();
  runApp(const MyApp());
}

class SnackBarService {
  static final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
  static void showSnackBar({required String content}) {
    scaffoldKey.currentState?.showSnackBar(SnackBar(content: Text(content)));
  }
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
          ChangeNotifierProvider(create: (context) => ProductViewModel()),
        ],
        child: Consumer<Manage>(
          builder: (context, Manage themenotifier, child) {
            return MaterialApp(
              scaffoldMessengerKey: SnackBarService.scaffoldKey,
              debugShowCheckedModeBanner: false,
              themeMode: themenotifier.getActualTheme(),
              theme: ThemeData(
                  colorScheme: kColorScheme,
                  useMaterial3: true,
                  iconTheme: IconThemeData(color: kColorScheme.onPrimary),
                  filledButtonTheme: FilledButtonThemeData(
                      style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      return kColorScheme.primary;
                    }),
                    textStyle: MaterialStateProperty.resolveWith((states) {
                      return TextStyle(color: kColorScheme.onPrimary);
                    }),
                  )),
                  floatingActionButtonTheme: FloatingActionButtonThemeData(
                      backgroundColor: kColorScheme.primary),
                  dialogBackgroundColor: Theme.of(context).colorScheme.surface),
              darkTheme: ThemeData(
                colorScheme: kDarkColorScheme,
                useMaterial3: true,
                iconTheme: IconThemeData(color: kDarkColorScheme.onPrimary),
                floatingActionButtonTheme: FloatingActionButtonThemeData(
                    backgroundColor: kDarkColorScheme.primary),
                filledButtonTheme: FilledButtonThemeData(
                    style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    return kColorScheme.primary;
                  }),
                  textStyle: MaterialStateProperty.resolveWith((states) {
                    return TextStyle(color: kColorScheme.onPrimary);
                  }),
                )),
              ),
              home: SignupLoginModuleScreen(),
              initialRoute: AppRoutes.appNavigationScreen,
              routes: AppRoutes.routes,
              //home: HomePage(),
            );
          },
        ));
  }
}

// ignore: use_key_in_widget_constructors

