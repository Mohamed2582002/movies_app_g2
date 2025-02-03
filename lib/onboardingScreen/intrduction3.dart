import 'package:flutter/material.dart';
import 'package:movies/Utils/AppAssets.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/Utils/AppStyle.dart';
import 'package:movies/onboardingScreen/introduction2.dart';
import 'package:movies/onboardingScreen/introduction4.dart';

class Intrduction3 extends StatelessWidget {
  static const String routeName = "introduction3";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.introduction3,
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Positioned(
            top: 400,
            left: 0,
            right: 0,
            child: Container(
              height: 356,
              decoration: BoxDecoration(
                  color: AppColors.blackColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Explore All Genres",
                    style: Appstyle.medium24White,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.",
                    textAlign: TextAlign.center,
                    style: Appstyle.medium16White,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, Intrduction4.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.YellowColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 150, vertical: 15)),
                      child: Text(
                        "Next",
                        style: Appstyle.medium18Black,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, Introduction2.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.blackColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(
                                  color: AppColors.YellowColor, width: 2)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 150, vertical: 15)),
                      child: Text(
                        "Back",
                        style: Appstyle.medium18yello,
                      ))
                ],
              ),
            ))
      ],
    );
  }
}
