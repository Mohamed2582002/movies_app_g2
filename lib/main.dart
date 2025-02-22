import 'package:flutter/material.dart';
import 'package:movies/Utils/my_theme_data.dart';
import 'package:movies/bottomNavigationBar/Profile/profile_screen.dart';
import 'package:movies/home_screen.dart';
import 'package:movies/ui/movie_details/details1.dart';
import 'package:movies/ui/profile/update_profile.dart';

import 'bottomNavigationBar/Profile/Profile.dart';

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
        UpdateProfile.routeName: (context) => UpdateProfile(),
        Profile.routeName: (context) => Profile(),


      }
      ,darkTheme:MyThemeData.darkTheme,
      themeMode:ThemeMode.light ,
      );
  }
}
