import 'package:flutter/material.dart';
import 'package:movies/Utils/AppAssets.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/Utils/AppStyle.dart';
import 'package:movies/onboardingScreen/introduction4.dart';
import 'package:movies/onboardingScreen/introduction6.dart';

class Introduction5 extends StatelessWidget {
  static const String routeName = "introduction5";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.introduction5,
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
                    "Rate, Review, and Learn",
                    style: Appstyle.medium24White,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Share your thoughts on the movies you've watched. Dive deep into film details and help others discover great movies with your reviews.",
                    textAlign: TextAlign.center,
                    style: Appstyle.medium16White,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, Intrduction6.routeName);
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
                            context, Intrduction4.routeName);
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
