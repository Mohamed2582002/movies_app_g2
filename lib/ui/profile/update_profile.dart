import 'package:flutter/material.dart';
import 'package:movies/Utils/AppAssets.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/ui/profile/pick_avatar.dart';
import 'package:movies/ui/widget/custom_Elevated_Button.dart';
import 'package:movies/ui/widget/custom_Text_Field.dart';


class UpdateProfile extends StatefulWidget {
  static const String routeName = 'update_profile';

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121312),
      appBar: AppBar(
        backgroundColor: Color(0xFF121312),
        title: Text('Pick Avatar',style: TextStyle(color: Color(0xFFFFBB3B)),),
        centerTitle: true,
        leading: IconButton(onPressed: (){},
            icon: Icon(
              Icons.arrow_back,color:AppColors.YellowColor ,)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: InkWell(
                  onTap: (){
                    showAvatarButtonSheet();
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(AppAssets.person8),
                    radius: 60,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextField(hintText: 'Enter user name',

                preFixIcon: Icon(color: AppColors.whiteColor,Icons.person),
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(hintText: 'Enter phone number',
                preFixIcon: Icon(color: AppColors.whiteColor,Icons.call),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(onPressed: (){},
                    child: Text(textAlign:TextAlign.end ,
                      "Reset Password",
                      style:TextStyle(color: AppColors.whiteColor,
                          fontSize: 14) ,)),
              ),
              SizedBox(
                height: 250,
              ),
              CustomElevatedButton(text: 'Delete Account',colored: AppColors.redColor,textStyle: AppColors.whiteColor,),
              SizedBox(
                height: 20,
              ),
              CustomElevatedButton(text: 'Update Data', colored: AppColors.YellowColor,textStyle: AppColors.blackColor,)
            ],
          ),
        ),
      ),
    );
  }

  void showAvatarButtonSheet() {
    showModalBottomSheet(context: context, builder: (context) => PickAvatar(),
        backgroundColor: AppColors.greyColor
    );

  }
}


