import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AppColor.dart';

class Appstyle {
  static TextStyle medium28White = GoogleFonts.inter(
      fontSize: 28, fontWeight: FontWeight.w500, color: AppColors.whiteColor);
  static TextStyle medium24White = GoogleFonts.inter(
      fontSize: 24, fontWeight: FontWeight.w500, color: AppColors.whiteColor);

  static TextStyle medium16White = GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: const Color.fromARGB(92, 255, 255, 255)
          .withOpacity(0.6000000238418579));

  static TextStyle medium18Black = GoogleFonts.inter(
      fontSize: 18, fontWeight: FontWeight.w700, color: AppColors.blackColor);
  static TextStyle medium18yello = GoogleFonts.inter(
      fontSize: 18, fontWeight: FontWeight.w700, color: AppColors.YellowColor);
}
