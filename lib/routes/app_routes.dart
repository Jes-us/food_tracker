import 'package:flutter/material.dart';
//import 'package:foodtracker/presentation/account_creation_screen/account_creation_screen.dart';
//import 'package:foodtracker/presentation/email_login_screen/email_login_screen.dart';
//import 'package:foodtracker/presentation/forgot_password_screen/forgot_password_screen.dart';
//import 'package:foodtracker/presentation/offline_work_screen/offline_work_screen.dart';
//import 'package:foodtracker/presentation/user_account_screen/user_account_screen.dart';
import 'package:food_tracker/view/login/signup_login_module_screen.dart';
//import 'package:foodtracker/presentation/splash_screen/splash_screen.dart';
//import 'package:foodtracker/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  //static const String accountCreationScreen = '/account_creation_screen';

  // static const String emailLoginScreen = '/email_login_screen';

  //static const String forgotPasswordScreen = '/forgot_password_screen';

  // static const String offlineWorkScreen = '/offline_work_screen';

  // static const String userAccountScreen = '/user_account_screen';

  static const String signupLoginModuleScreen = '/signup_login_module_screen';

  //static const String splashScreen = '/splash_screen';

  //static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    // accountCreationScreen: (context) => AccountCreationScreen(),
    // emailLoginScreen: (context) => EmailLoginScreen(),
    // forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    //offlineWorkScreen: (context) => OfflineWorkScreen(),
    // userAccountScreen: (context) => UserAccountScreen(),
    signupLoginModuleScreen: (context) => SignupLoginModuleScreen(),
    //splashScreen: (context) => SplashScreen(),
    // appNavigationScreen: (context) => AppNavigationScreen()
  };
}
