import 'package:flutter/material.dart';
import 'package:movies_app_g2/forget_password_screen.dart';
import 'package:movies_app_g2/auth/register_screen/register_screen.dart';
import 'package:movies_app_g2/home_screen.dart';

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
        HomeScreen.routeName: (context) => HomeScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
        ForgetPasswordScreen.routeName: (context) => ForgetPasswordScreen(),
      },
      themeMode: ThemeMode.dark,
    );
  }
}
