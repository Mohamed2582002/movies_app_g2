import 'package:flutter/material.dart';

import '../../Utils/AppColor.dart';


typedef MyValidator = String? Function(String?)? ;

class CustomTextField extends StatelessWidget {
  Color? borderColor ;
  Color? color;
  String? hintText ;
  TextStyle? hintStyle ;
  TextStyle? labelStyle ;
  String? labelText ;
  Widget? preFixIcon ;
  Widget? suffixIcon ;
  bool obscureText ;
  int? maxLines ;
  String? Function(String?)? validator;
  //Add a TextFormField with validation logic
  TextEditingController? controller ;
  TextInputType? keyboardType ;

  CustomTextField({
    this.validator,
    this.color,
    this.keyboardType= TextInputType.text,
    this.borderColor,
    this.hintText,
    this.labelText,
    this.hintStyle,
    this.labelStyle,
    this.preFixIcon,
    this.suffixIcon,
    this.obscureText =false ,
    this.maxLines,
    this.controller ,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: AppColors.whiteColor),
      validator: validator,
      keyboardType: keyboardType,
      controller: controller,
      maxLines: maxLines ?? 1,
      obscureText: obscureText,
      obscuringCharacter: '*',
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.greyColor,
          focusColor: AppColors.greyColor,
          hintText: hintText ,

          labelText: labelText ,
          hintStyle:  hintStyle?? TextStyle(fontSize: 16,color: AppColors.whiteColor) ,
          labelStyle: labelStyle?? TextStyle(fontSize: 16,color: AppColors.whiteColor) ,
          prefixIcon: preFixIcon,
          suffixIcon: suffixIcon,

          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: borderColor ?? AppColors.transparentColor,
                width: 2,
              )
          ),
          errorBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: borderColor ?? AppColors.redColor,
                width: 2,
              )
          ),
          focusedErrorBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: borderColor ?? AppColors.greyColor,
                width: 2,
              )
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.greyColor, width: 2.0),
            borderRadius: BorderRadius.circular(16),
          )

      ),
    );
  }
}
