import 'package:flutter/material.dart';
import 'package:movies/Utils/AppAssets.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/Utils/AppStyle.dart';
import 'package:movies/onboardingScreen/intrduction3.dart';

class Introduction2 extends StatelessWidget {
  static const String routeName = "introduction2";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            AppAssets.introduction2,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Positioned(
              top: 500,
              left: 0,
              right: 0,
              child: Container(
                  height: 290,
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
                        "Discover Movies",
                        style: Appstyle.medium28White,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.",
                        textAlign: TextAlign.center,
                        style: Appstyle.medium16White,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, Introduction3.routeName);
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
                          ))
                    ],
                  )))
        ],
      ),
    );
  }
}
