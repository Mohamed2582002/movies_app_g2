import 'package:flutter/material.dart';
import 'package:movies/Utils/AppAssets.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/Utils/AppStyle.dart';
import 'package:movies/onboardingScreen/introduction5.dart';

import '../ui/login_Screen.dart';

class Introduction6 extends StatelessWidget {
  static const String routeName = "introduction6";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.introduction6,
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Positioned(
            top: 530,
            left: 0,
            right: 0,
            child: Container(
              height: 250,
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
                    "Start Watching Now",
                    style: Appstyle.medium24White,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, LoginScreen.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.YellowColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 150, vertical: 15)),
                      child: Text(
                        "Finsh",
                        style: Appstyle.medium18Black,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, Introduction5.routeName);
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
