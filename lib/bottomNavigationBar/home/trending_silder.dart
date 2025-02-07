import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies/Utils/AppColor.dart';

class TrendingSilder extends StatelessWidget {
  TrendingSilder({super.key});

  // final AsyncSnapshot snapshot ;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 10,
      options: CarouselOptions(
        height: 300,
        //autoPlay: true ,
        viewportFraction: 0.55,
        enlargeCenterPage: true,
        pageSnapping: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayAnimationDuration: Duration(seconds: 2),
      ),
      itemBuilder: (context, itemIndex, pageViewIndex) {
        return Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/OnBoarding2.png',
              ),
            ),
          ),
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff121312),
                  ),
                  width: 58,
                  height: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '7.7',
                        style: TextStyle(color: AppColors.whiteColor),
                      ),
                      Icon(
                        Icons.star,
                        color: AppColors.YellowColor,
                        size: 14,
                      )
                    ],
                  )),
            ],
          ),
        );
      },
    );
  }
}
