import 'package:flutter/material.dart';
import 'package:movies/Utils/my_theme_data.dart';
import 'package:movies/bottomNavigationBar/Profile/profile_screen.dart';
import 'package:movies/auth/register_screen/register_screen.dart';
import 'package:movies/home_screen.dart';
import 'package:movies/onboardingScreen/intrduction1.dart';
import 'package:movies/onboardingScreen/intrduction3.dart';
import 'package:movies/onboardingScreen/introduction2.dart';
import 'package:movies/onboardingScreen/introduction4.dart';
import 'package:movies/onboardingScreen/introduction5.dart';
import 'package:movies/onboardingScreen/introduction6.dart';
import 'package:movies/ui/details_screen/cast_details.dart';
import 'package:movies/ui/details_screen/similar_Movies.dart';
import 'package:movies/ui/login_Screen.dart';
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
        LoginScreen.routeName: (context) => LoginScreen(),
        UpdateProfile.routeName: (context) => UpdateProfile(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
        Introduction1.routeName: (context) => Introduction1(),
        Introduction2.routeName: (context) => Introduction2(),
        Introduction3.routeName: (context) => Introduction3(),
        Introduction4.routeName: (context) => Introduction4(),
        Introduction5.routeName: (context) => Introduction5(),
        Introduction6.routeName: (context) => Introduction6(),
        HomeScreen.routeName: (context) => HomeScreen(),
        CastDetails.routeName: (context) => CastDetails(),
        SimilarMovies.routeName: (context) => SimilarMovies(),
        Details1.routeName: (context) => Details1(),
      },
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
    );

  }
}
