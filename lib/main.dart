import 'package:flutter/material.dart';
import 'package:movies/Utils/my_theme_data.dart';

import 'package:movies/onboardingScreen/intrduction1.dart';
import 'auth/register_screen/register_screen.dart';
import 'ui/forget_password_screen.dart';
import 'home_screen.dart';
import 'onboardingScreen/intrduction1.dart';
import 'onboardingScreen/intrduction3.dart';
import 'onboardingScreen/introduction2.dart';
import 'onboardingScreen/introduction4.dart';
import 'onboardingScreen/introduction5.dart';
import 'onboardingScreen/introduction6.dart';
import 'ui/login_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,



      initialRoute: HomeScreen.routeName,
      routes: {
        introduction1.routeName: (context) => introduction1(),
        Introduction2.routeName: (context) => Introduction2(),
        Intrduction3.routeName: (context) => Intrduction3(),
        Intrduction4.routeName: (context) => Intrduction4(),
        Introduction5.routeName: (context) => Introduction5(),
        Intrduction6.routeName: (context) => Intrduction6(),
        HomeScreen.routeName: (context) => HomeScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        ForgetPasswordScreen.routeName: (context) => ForgetPasswordScreen(),

      }
      ,darkTheme:MyThemeData.darkTheme,
      themeMode:ThemeMode.light ,
      );
  }
}
