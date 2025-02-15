import 'package:flutter/material.dart';
import 'package:movies/Utils/AppAssets.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/ui/widget/custom_Elevated_Button.dart';

class Details1 extends StatelessWidget {
  static const routeName = 'details1';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(AppAssets.detailsBgd)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: AppColors.whiteColor,
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.transparentColor),
                          ),
                          ElevatedButton(child: Icon(
                          Icons.bookmark, color: AppColors.whiteColor,),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.transparentColor),),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 200,
                    ),
                    Image.asset(AppAssets.playButton),
                    SizedBox(
                      height: 200,
                    ),
                    Text(
                      '  Doctor Strange in the  \nMultiverse of Madness',
                      style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    CustomElevatedButton(text: 'Watch',
                    colored: AppColors.redColor,
                    textStyle: AppColors.whiteColor, onPressed: () {},),
                  SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          child: Row(
                            children: [
                              Image.asset(
                                AppAssets.heartIcon,
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '15',
                                style: TextStyle(color: AppColors.whiteColor),
                              )
                            ],
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.greyColor),
                        ),
                        ElevatedButton(
                          child: Row(
                            children: [
                              Icon(
                                Icons.access_time_filled,
                                color: Colors.yellow,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '90',
                                style: TextStyle(color: AppColors.whiteColor),
                              )
                            ],
                      ), onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.greyColor),),
                      ElevatedButton(child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow,),
                          SizedBox(width: 10,),
                          Text('7.6',
                            style: TextStyle(color: AppColors.whiteColor),)
                            ],
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.greyColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Screen Shoots',
                        style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(AppAssets.screenShot1)),
                  SizedBox(height: 10,),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(AppAssets.screenShot2)),
                  SizedBox(height: 10,),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(AppAssets.screenShot3)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
