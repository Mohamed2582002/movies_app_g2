import 'package:flutter/material.dart';
import 'package:movies/Utils/AppColor.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  Widget? icon;
  Color colored;
  Color textStyle;
  CustomElevatedButton ({required this.text ,this.icon, required this.colored,required this.textStyle});

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height =MediaQuery.of(context).size.height;
    return ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: colored,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.symmetric(
          vertical: height*0.015,
          horizontal: width*0.02,
        )
    ), onPressed:(){} ,
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [icon ?? SizedBox(),
          Text(text,style: TextStyle(color: textStyle,fontSize: 16
              ,fontWeight: FontWeight.w400
          )
  VoidCallback onPressed;

  CustomElevatedButton({required this.text, this.icon,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.YellowColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: EdgeInsets.symmetric(
            vertical: height * 0.015,
            horizontal: width * 0.02,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon ?? SizedBox(),
          Text(text,
              style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400)),
        ],
      ),
      onPressed: onPressed,

    );
  }
}
