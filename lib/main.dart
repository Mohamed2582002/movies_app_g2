import 'package:flutter/material.dart';

import 'package:movies/onboardingScreen/intrduction1.dart';
import 'package:movies/ui/profile/update_profile.dart';
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



      initialRoute: UpdateProfile.routeName,
      routes: {

        UpdateProfile.routeName: (context) => UpdateProfile(),

      });
  }
}
