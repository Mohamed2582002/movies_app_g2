import 'package:flutter/material.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/ui/profile/update_profile.dart';

import '../../Utils/AppAssets.dart';

class Profile extends StatelessWidget {
  static const String routeName = 'profile_screen';

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height =MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(color: AppColors.blackColor,
        child: Column(
          children: [
            Container(color: AppColors.greyColor,
              child: Row(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
            Container(color: AppColors.greyColor,
              child: Row(

                children: [
                  SizedBox(width: 25,),
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundImage: AssetImage(AppAssets.person8),
                          radius: 60
                      ),
                      SizedBox(height: 10,),
                      Text('John Safwat',style: TextStyle(color: AppColors.whiteColor,fontWeight: FontWeight.bold,fontSize:20),),
                    ],
                  ),
                  SizedBox(width: 35,),
                  Column(
                    children: [
                      Text('12',style: TextStyle(color: AppColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 24),),
                      Text('Wish List',style: TextStyle(color: AppColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  ),
                  SizedBox(width: 40,),
                  Column(
                    children: [
                      Text('10',style: TextStyle(color: AppColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 24),),
                      Text('History',style: TextStyle(color: AppColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 20),),

                    ],
                  ),
                ],
              ),
            ),
            Container(color: AppColors.greyColor,
              child: Row(
                children: [
                  SizedBox(height: 15,),
                ],
              ),
            ),
            Container(color: AppColors.greyColor,
              child: Row(

                children: [
                  SizedBox(width: 20,),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).pushNamed(UpdateProfile.routeName);
                  }, child: Row(
                    children: [
                      SizedBox(width: 70,),
                      Text('Edit Profile',style: TextStyle(
                        color: AppColors.blackColor,fontSize: 16,
                      ),),
                      SizedBox(width: 70,),

                    ],
                  ),
                    style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.YellowColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                      padding: EdgeInsets.symmetric(
                        vertical: height * 0.015,
                        horizontal: width * 0.02,
                      )
                  ),),
                  SizedBox(width: 8,),

                  ElevatedButton(onPressed: (){}, child: Row(
                    children: [
                      SizedBox(width: 25,),

                      Text('Exit',style: TextStyle(
                        color: AppColors.whiteColor,fontSize: 16,
                      ),),
                      SizedBox(width: 5,),
                      Icon(Icons.exit_to_app,color: AppColors.whiteColor,),
                      SizedBox(width: 25,),


                    ],
                  ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.redColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: height * 0.015,
                          horizontal: width * 0.02,
                        )
                    ),
                  )

                ],
              ),
            ),

            Container(color: AppColors.greyColor,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(onPressed: (){}, icon: Image.asset(AppAssets.watchListIcon,)),
                      Text('Watch List',style: TextStyle(
                        color: AppColors.whiteColor,fontSize: 16,
                      ),),

                    ],
                  ),
                  Column(
                    children: [
                      IconButton(onPressed: (){}, icon: Image.asset(AppAssets.folderIcon)),
                      Text('History',style: TextStyle(
                        color: AppColors.whiteColor,fontSize: 16,
                      ),),
                    ],
                  ),


                ],
              ),
            ),
            Container(color: AppColors.greyColor,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(height: 10,)
                    ],
                  ),
                  Divider(color: AppColors.YellowColor,height: 10,thickness:2,),
                ],
              ),
            ),
            SizedBox(height: 150,),
            Center(child: Image(image: AssetImage(AppAssets.popCorn)))




          ],
        ),

      ),
    );
  }
}
