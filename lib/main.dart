import 'package:flutter/material.dart';
import 'package:movies_app_g2/home_screen.dart';
import 'package:movies_app_g2/ui/login_Screen.dart';

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
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      themeMode: ThemeMode.dark,
    );
  }
}
