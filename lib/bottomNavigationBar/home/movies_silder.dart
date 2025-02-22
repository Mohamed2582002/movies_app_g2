import 'package:flutter/material.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/ui/movie_details/details1.dart';

class MoviesSlider extends StatelessWidget {
  // MoviesSlider({super.key ,required this.movies});
  // Movies movies ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Details1.routeName);
      },
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: 100,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/OnBoarding4.png'),
                    ),
                  ),
                  width: 145,
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
                ),
              );
            }),
      ),
    );
  }
}
