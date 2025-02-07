import 'package:flutter/material.dart';

import '../../Utils/AppAssets.dart';
import '../../Utils/AppColor.dart';



class PickAvatar extends StatelessWidget {
  static String person = '';


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(decoration: BoxDecoration(border: Border.all(width: 1,color: AppColors.YellowColor),
              borderRadius: BorderRadius.circular(25)
            ),padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: (){
                  person=AppAssets.person1;

                },
                child: CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.person1),
                  radius: 45,
                ),
              ),
            ),
            Container(decoration: BoxDecoration(border: Border.all(width: 1,color: AppColors.YellowColor),
                borderRadius: BorderRadius.circular(25)
            ),padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: (){
                  person=AppAssets.person2;
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.person2),
                  radius: 45,
                ),
              ),
            ),
            Container(decoration: BoxDecoration(border: Border.all(width: 1,color: AppColors.YellowColor),
                borderRadius: BorderRadius.circular(25)
            ),padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: (){
                  person=AppAssets.person3;
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.person3),
                  radius: 45,
                ),
              ),
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(decoration: BoxDecoration(border: Border.all(width: 1,color: AppColors.YellowColor),
                borderRadius: BorderRadius.circular(25)
            ),padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: (){
                  person=AppAssets.person4;
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.person4),
                  radius: 45,
                ),
              ),
            ),
            Container(decoration: BoxDecoration(border: Border.all(width: 1,color: AppColors.YellowColor),
                borderRadius: BorderRadius.circular(25)
            ),padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: (){
                  person=AppAssets.person5;
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.person5),
                  radius: 45,
                ),
              ),
            ),
            Container(decoration: BoxDecoration(border: Border.all(width: 1,color: AppColors.YellowColor),
                borderRadius: BorderRadius.circular(25)
            ),padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: (){
                  person=AppAssets.person6;
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.person6),
                  radius: 45,
                ),
              ),
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(decoration: BoxDecoration(border: Border.all(width: 1,color: AppColors.YellowColor),
                borderRadius: BorderRadius.circular(25)
            ),padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: (){
                  person=AppAssets.person7;
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.person7),
                  radius: 45,
                ),
              ),
            ),
            Container(decoration: BoxDecoration(border: Border.all(width: 1,color: AppColors.YellowColor),
                borderRadius: BorderRadius.circular(25)
            ),padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: (){
                  person=AppAssets.person8;
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.person8),
                  radius: 45,
                ),
              ),
            ),
            Container(decoration: BoxDecoration(border: Border.all(width: 1,color: AppColors.YellowColor),
                borderRadius: BorderRadius.circular(25)
            ),padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  person=AppAssets.person9;
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.person9),
                  radius: 45,
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
