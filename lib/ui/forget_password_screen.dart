import 'package:flutter/material.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/ui/login_Screen.dart';
import 'package:movies/ui/widget/custom_Elevated_Button.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const String routeName = 'forget_password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121312),
      appBar: AppBar(
        backgroundColor: Color(0xFF121312),
        title: Text('Forget Password',style: TextStyle(color: Color(0xFFFFBB3B)),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pushReplacementNamed(LoginScreen.routeName) ;

        }, icon: Icon(Icons.arrow_back,color:Color(0xFFFFBB3B) ,)),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/Forgot password-bro 1.png'),
          SizedBox(height: 20,),
          TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            cursorColor: Colors.white,
            decoration: InputDecoration(
                fillColor: Color(0xFF282A28),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(width: 2,),),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(width: 0,),
                ),
                prefixIcon: const Icon(
                    color: Colors.white,
                    Icons.email
                ),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.white)

            ),
          ),
          SizedBox(height: 15,),
          /*Container(
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(onPressed: (){},
                    child: Text('Verify Email',style: TextStyle(color: Color(0xFF121312)),),
                    style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFFBB3B),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),),
                ),
              ],
            ),
          ),*/

CustomElevatedButton(text: 'Verify Email',colored: AppColors.YellowColor, textStyle: AppColors.blackColor,)
        ],
      ),
    );
  }
}
