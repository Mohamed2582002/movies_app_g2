import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/auth/register_screen/Cubit/auth_cubits.dart';
import 'package:movies/auth/register_screen/Cubit/auth_states.dart';
import 'package:movies/featuers/Auth/auth_cubit.dart';

import '../../ui/login_Screen.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = 'register_screen';

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final List<String> avatar = [
    'assets/images/person1.png',
    'assets/images/person2.png',
    'assets/images/person3.png',
    'assets/images/person4.png',
    'assets/images/person5.png',
    'assets/images/person6.png',
    'assets/images/person7.png',
    'assets/images/person8.png',
    'assets/images/person9.png',
  ];

  List<Widget> generateImages() {
    return avatar
        .map((element) => ClipRRect(
      child: Image.asset(element),
    ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocProvider(
        create: (context) => AuthCubit(),
        child: BlocConsumer<AuthCubits, AuthStates>(
          listener: (context, state) {
            if (state is RegisterSuccessState) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            } else if (state is FailedToRegisterState) {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: Text(
                          state.message,
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.red,
                      ));
            }
          },
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Color(0xFF121312),
              appBar: AppBar(
                backgroundColor: Color(0xFF121312),
                title: Text(
                  'Register',
                  style: TextStyle(color: Color(0xffF6BD00)),
                ),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(7),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 90,
                          child: CarouselSlider(
                              items: generateImages(),
                              options: CarouselOptions(
                                enlargeCenterPage: true,
                              )),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        TextFormField(
                          validator: (input) {
                            if (nameController.text.isEmpty) {
                              return "user name must not be empty";
                            } else {
                              return null;
                            }
                          },
                          controller: nameController,
                          style: TextStyle(color: AppColors.whiteColor),
                          decoration: InputDecoration(
                            fillColor: Color(0xff282A28),
                            filled: true,
                            hintText: 'Name',
                            hintStyle: TextStyle(color: Color(0xffFFFFFF)),
                            prefixIcon: Image.asset(
                              'assets/images/icon_name.png',
                              color: Color(0xffFFFFFF),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                )),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 1,
                                )),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        TextFormField(
                          validator: (input) {
                            if (emailController.text.isEmpty) {
                              return "user email must not be empty";
                            } else {
                              return null;
                            }
                          },
                          controller: emailController,
                          style: TextStyle(color: AppColors.whiteColor),
                          decoration: InputDecoration(
                            fillColor: Color(0xff282A28),
                            filled: true,
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Color(0xffFFFFFF)),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Color(0xffFFFFFF),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                )),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 1,
                                )),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        TextFormField(
                          validator: (input) {
                            if (passwordController.text.isEmpty) {
                              return "user password must not be empty";
                            } else {
                              return null;
                            }
                          },
                          controller: passwordController,
                          obscureText: true,
                          style: TextStyle(color: AppColors.whiteColor),
                          decoration: InputDecoration(
                            fillColor: Color(0xff282A28),
                            filled: true,
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.visibility_off,
                                  color: Colors.white,
                                )),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Color(0xffFFFFFF)),
                            prefixIcon: Image.asset(
                              'assets/images/icon_password.png',
                              color: Color(0xffFFFFFF),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                )),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 1,
                                )),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        TextFormField(
                          validator: (input) {
                            if (confirmPasswordController.text.isEmpty) {
                              return "user confirmPassword must not be empty";
                            } else {
                              return null;
                            }
                          },
                          controller: confirmPasswordController,
                          obscureText: true,
                          style: TextStyle(color: AppColors.whiteColor),
                          decoration: InputDecoration(
                            fillColor: Color(0xff282A28),
                            filled: true,
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.visibility_off,
                                  color: Colors.white,
                                )),
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(color: Color(0xffFFFFFF)),
                            prefixIcon: Image.asset(
                              'assets/images/icon_password.png',
                              color: Color(0xffFFFFFF),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                )),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 1,
                                )),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        TextFormField(
                          validator: (input) {
                            if (phoneController.text.isEmpty) {
                              return "user confirmPassword must not be empty";
                            } else {
                              return null;
                            }
                          },
                          controller: phoneController,
                          style: TextStyle(color: AppColors.whiteColor),
                          decoration: InputDecoration(
                            fillColor: Color(0xff282A28),
                            filled: true,
                            hintText: 'Phone',
                            hintStyle: TextStyle(color: Color(0xffFFFFFF)),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Color(0xffFFFFFF),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                )),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 1,
                                )),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Color(0xffF6BD00),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.01,
                                  vertical: height * 0.02),
                            ),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                BlocProvider.of<AuthCubits>(context).register(
                                    name: nameController.text,
                                    email: emailController.text,
                                    password: passwordController.text,
                                    confirmPassword:
                                        confirmPasswordController.text,
                                    phone: phoneController.text);
                              }
                            },
                            child: Center(
                              child: Text(
                                state is RegisterLoadingState
                                    ? "loading........"
                                    : 'Create Account',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            )),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                              text: 'Already Have Account.',
                              style: TextStyle(
                                  color: Color(0xffFFFFFF), fontSize: 14),
                            ),
                            TextSpan(
                                text: '?login',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).pushReplacementNamed(
                                        LoginScreen.routeName);
                                  },
                                style: TextStyle(
                                    color: Color(0xffF6BD00),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                          ])),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(30),
                            border:
                                Border.all(color: Color(0xffF6BD00), width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(30),
                                    border: Border.all(
                                        color: Color(0xffF6BD00), width: 2),
                                  ),
                                  child: Image.asset(
                                      'assets/images/image_lr.png')),
                              Image.asset('assets/images/image_EG.png'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
