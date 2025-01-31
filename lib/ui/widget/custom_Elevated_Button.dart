import 'package:flutter/material.dart';
import '../../utils/AppColors.dart';

class CustomElevatedButton extends StatelessWidget {
  String text ;
  Widget? icon;
  CustomElevatedButton ({required this.text ,this.icon});

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height =MediaQuery.of(context).size.height;
    return ElevatedButton(style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.yellowColor,
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
          Text(text,style: TextStyle(color: AppColors.blackColor,fontSize: 16
          ,fontWeight: FontWeight.w400
          )
          ),

        ],
      ),
    );
  }
}
