import 'package:flutter/material.dart';
import 'package:movies/Utils/AppAssets.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/Utils/AppStyle.dart';
import 'package:movies/onboardingScreen/introduction2.dart';

class Introduction1 extends StatelessWidget {
  static const String routeName = "introduction1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  Stack(
        children: [
          Image.asset(
            AppAssets.introduction1,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Positioned(
              top: 500,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Text(
                    "Find Your Next Favorite Movie Here",
                    style: Appstyle.medium28White,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Get access to a huge library of movies to suit all tastes. You will surely like it.",
                    textAlign: TextAlign.center,
                    style: Appstyle.medium16White,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, Introduction2.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.YellowColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 115, vertical: 15)),
                      child: Text(
                        "Explore Now",
                        style: Appstyle.medium18Black,
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
