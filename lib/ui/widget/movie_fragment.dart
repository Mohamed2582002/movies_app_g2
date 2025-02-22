import 'package:flutter/material.dart';
import 'package:movies/Utils/AppStyle.dart';

import '../../Utils/AppAssets.dart';
import '../../Utils/AppColor.dart';

class MovieFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.47,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.asset(AppAssets.introduction2),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.0250, vertical: height * 0.01),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xB3121312),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "7.7",
                    style: Appstyle.medium16White,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColors.YellowColor,
                    size: 18,
                  )
                ],
              ),
              width: width * 0.13,
              height: height * 0.03,
            ),
          )
        ],
      ),
    );
  }
}
