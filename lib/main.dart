import 'package:flutter/material.dart';
import 'package:movies/Utils/my_theme_data.dart';
import 'package:movies/ui/movie_details/details1.dart';
import 'package:movies/ui/profile/update_profile.dart';

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
      initialRoute: Details1.routeName,
      routes: {

        Details1.routeName: (context) => Details1(),

      }
      ,darkTheme:MyThemeData.darkTheme,
      themeMode:ThemeMode.light ,
      );
  }
}
