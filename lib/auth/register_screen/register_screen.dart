import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../ui/login_Screen.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = 'register_screen';
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
              TextField(
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
              TextField(
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
              TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xff282A28),
                  filled: true,
                  suffixIcon: Image.asset(
                    'assets/images/icon_password2.png',
                    color: Color(0xffFFFFFF),
                  ),
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
              TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xff282A28),
                  filled: true,
                  suffixIcon: Image.asset(
                    'assets/images/icon_password2.png',
                    color: Color(0xffFFFFFF),
                  ),
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
              TextField(
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
                        horizontal: width * 0.01, vertical: height * 0.02),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'Create Account',
                      style: TextStyle(color: Colors.black, fontSize: 20),
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
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 14),
                  ),
                  TextSpan(
                      text: '?login',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).pushReplacementNamed(LoginScreen.routeName) ;
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
                  border: Border.all(color: Color(0xffF6BD00), width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(30),
                          border:
                              Border.all(color: Color(0xffF6BD00), width: 2),
                        ),
                        child: Image.asset('assets/images/image_lr.png')),
                    Image.asset('assets/images/image_EG.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
