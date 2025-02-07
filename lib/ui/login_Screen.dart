import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Utils/AppAssets.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/featuers/Auth/Data/ApiManager.dart';
import 'package:movies/featuers/Auth/auth_state.dart';
import 'package:movies/home_screen.dart';
import 'package:movies/ui/forget_password_screen.dart';
import 'package:movies/ui/widget/custom_Elevated_Button.dart';
import 'package:movies/ui/widget/custom_Text_Field.dart';
import '../auth/register_screen/register_screen.dart';
import '../featuers/Auth/auth_cubit.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "login_Screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ApiManager apiManager = ApiManager();
  bool _hidePassword = true;
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => AuthCubit(apiManager),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.pushNamed(context, LoginScreen.routeName);
            //print("login success");
          } else if (state is LoginError) {
            Container(
              child: Center(child: Text("try again")),
            );
          }
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = context.read<AuthCubit>();
          return Scaffold(
            backgroundColor: AppColors.blackColor,
            body: Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.1,
                      ),
                      Image.asset(AppAssets.logoImage),
                      SizedBox(
                        height: height * 0.08,
                      ),
                      CustomTextField(
                        validator: (value){
                          if(value ==null|| value.isEmpty ){
                            return "Email field is required";
                          }
                        },
                        controller: cubit.emailController,
                        hintText: "Email",
                        preFixIcon: Image.asset(AppAssets.emailImage),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CustomTextField(
                        validator: (value) {
                          if(value == null|| value.isEmpty ){
                            return "Password field is required";
                          }


                }, child: Text(textAlign:TextAlign.end ,
                  "Forget Password ?",
                  style:TextStyle(color: AppColors.YellowColor,
                  fontSize: 14) ,)),
              ),
            SizedBox(height: height*0.02,),
                  CustomElevatedButton(text: 'Login',colored: AppColors.YellowColor, textStyle: AppColors.blackColor),
            SizedBox(height: height*0.02,),
              InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                      context, RegisterScreen.routeName);
                },
                child: Text.rich(TextSpan(
                  children: [
                    TextSpan(text: "Don’t Have Account ? ",style: TextStyle(color: AppColors.whiteColor)),
                    TextSpan(text: "Create One ",style: TextStyle(color: AppColors.YellowColor)),
                ])),
              ),
              SizedBox(height: height*0.02,),
              Row(children: [
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: AppColors.YellowColor,
                    endIndent:10,
                    indent: 40,
                  ),
                ),
                Text("OR",style: TextStyle(color: AppColors.YellowColor,fontSize:15 ),),
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: AppColors.YellowColor,
                    endIndent: 40,
                    indent: 10,
                  ),
                ),
              ],),
              SizedBox(height: height*0.02,),
              CustomElevatedButton(
                  icon: ImageIcon(AssetImage(AppAssets.googleImage),color: AppColors.blackColor,),
                  text: " Login With Google",colored: AppColors.YellowColor, textStyle: AppColors.blackColor),
              SizedBox(height: height*0.02,),
              Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: AppColors.YellowColor,width: 2)
                        },
                        controller: cubit.passwordController,
                        color: AppColors.whiteColor,
                        obscureText: _hidePassword,
                        hintText: "Password",
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            _hidePassword = !_hidePassword;
                          });
                        },
                            icon:_hidePassword ==false ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility),
                            color: AppColors.whiteColor

                        ),
                        preFixIcon: Image.asset(AppAssets.passwordImage),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, ForgetPasswordScreen.routeName);
                            },
                            child: Text(
                              textAlign: TextAlign.end,
                              "Forget Password ?",
                              style: TextStyle(
                                  color: AppColors.YellowColor, fontSize: 14),
                            )),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CustomElevatedButton(
                        text: 'Login',
                        onPressed: () {
                          cubit.Login();
                          Navigator.pushNamed(context, HomeScreen.routeName);
                        },
                      ),
                      

                      SizedBox(
                        height: height * 0.02,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, RegisterScreen.routeName);
                        },
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: "Don’t Have Account ? ",
                              style: TextStyle(color: AppColors.whiteColor)),
                          TextSpan(
                              text: "Create One ",
                              style: TextStyle(color: AppColors.YellowColor)),
                        ])),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 2,
                              color: AppColors.YellowColor,
                              endIndent: 10,
                              indent: 40,
                            ),
                          ),
                          Text(
                            "OR",
                            style: TextStyle(
                                color: AppColors.YellowColor, fontSize: 15),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 2,
                              color: AppColors.YellowColor,
                              endIndent: 40,
                              indent: 10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CustomElevatedButton(
                        icon: ImageIcon(AssetImage(
                          AppAssets.googleImage
                        )),
                        text: ' Login With Google',
                        onPressed: () {
                          cubit.Login();
                          Navigator.pushNamed(context, HomeScreen.routeName);
                        },

                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: AppColors.YellowColor, width: 2)),
                        padding: EdgeInsets.zero,
                        child: Row(
                          children: [
                            Expanded(
                                child: Image.asset(AppAssets.englishImage)),
                            Expanded(child: Image.asset(AppAssets.arabicImage)),
                          ],
                        ),
                        width: width * 0.19,
                        height: height * 0.034,
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
