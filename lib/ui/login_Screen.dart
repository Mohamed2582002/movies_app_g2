import 'package:flutter/material.dart';
import 'package:movies_app_g2/ui/widget/custom_Elevated_Button.dart';
import 'package:movies_app_g2/ui/widget/custom_Text_Field.dart';

import '../utils/AppColors.dart';
import '../utils/Assets_Manager.dart';


class LoginScreen extends StatelessWidget {
  static const String routeName = "login_Screen";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Expanded(
        child: Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: width*0.04
          ),
          child: SingleChildScrollView(
            child: Column(
            children: [
              SizedBox(height: height*0.1,),
              Image.asset(AssetsMAnager.logoImage),
              SizedBox(height: height*0.08,),
              CustomTextField(hintText: "Email" ,
                  preFixIcon: Image.asset(AssetsMAnager.emailImage),
                )
              ,SizedBox(height: height*0.02,),
              CustomTextField(
                color: AppColors.whiteColor,
                obscureText:true ,
                hintText: "Password",
                suffixIcon: Image.asset(AssetsMAnager.hiddenIcon),
                  
                preFixIcon: Image.asset(AssetsMAnager.passwordImage),
              ),Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: (){}, child: Text(textAlign:TextAlign.end ,
                  "Forget Password ?",
                  style:TextStyle(color: AppColors.yellowColor,
                  fontSize: 14) ,)),
              ),
            SizedBox(height: height*0.02,),
                  CustomElevatedButton(text: 'Login'),
            SizedBox(height: height*0.02,),
              InkWell(
                onTap: (){},
                child: Text.rich(TextSpan(
                  children: [
                    TextSpan(text: "Don’t Have Account ? ",style: TextStyle(color: AppColors.whiteColor)),
                    TextSpan(text: "Create One ",style: TextStyle(color: AppColors.yellowColor)),
                ])),
              ),
              SizedBox(height: height*0.02,),
              Row(children: [
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: AppColors.yellowColor,
                    endIndent:10,
                    indent: 40,
                  ),
                ),
                Text("OR",style: TextStyle(color: AppColors.yellowColor,fontSize:15 ),),
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: AppColors.yellowColor,
                    endIndent: 40,
                    indent: 10,
                  ),
                ),
              ],),
              SizedBox(height: height*0.02,),
              CustomElevatedButton(
                  icon: ImageIcon(AssetImage(AssetsMAnager.googleImage),color: AppColors.blackColor,),
                  text: " Login With Google"),
              SizedBox(height: height*0.02,),
              Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: AppColors.yellowColor,width: 2)
              ),
              padding: EdgeInsets.zero,
              child: Row(
                children: [
                Expanded(child: Image.asset(AssetsMAnager.englishImage)),
                Expanded(child: Image.asset(AssetsMAnager.arabicImage)),
              ],),
                width:width*0.19 ,
                height:height*0.034 ,
              )
            ],
                ),
          ),
        ),
      ),
    );
  }
}
