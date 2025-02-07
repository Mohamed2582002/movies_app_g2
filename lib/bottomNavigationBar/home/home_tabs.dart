import 'package:flutter/material.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/bottomNavigationBar/home/movies_silder.dart';
import 'package:movies/bottomNavigationBar/home/trending_silder.dart';

class HomeTabs extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeTabs> createState() => _HomeTabsState();
}

class _HomeTabsState extends State<HomeTabs> {
  // late Future<List<Movie>> trendingMovies ;
  //
  //  @override
  //  void initState (){
  //    super.initState ();
  //    trendingMovies = Api().getTrendingMovies() ;
  //  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/Home_screen_image.png',
                    fit: BoxFit.cover),
                SafeArea(
                  child: Column(
                    children: [
                      Center(
                          child:
                              Image.asset('assets/images/Available Now.png')),
                      TrendingSilder(),
                      Center(child: Image.asset('assets/images/Watch Now.png')),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Text(
                            '  Action',
                            style: TextStyle(color: AppColors.whiteColor),
                          ),
                          Spacer(),
                          Text(
                            '  See More',
                            style: TextStyle(color: AppColors.YellowColor),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: AppColors.YellowColor,
                            size: 14,
                          ),
                        ],
                      ),
                      MoviesSilder(),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            '  Adventure',
                            style: TextStyle(color: AppColors.whiteColor),
                          ),
                          Spacer(),
                          Text(
                            '  See More',
                            style: TextStyle(color: AppColors.YellowColor),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: AppColors.YellowColor,
                            size: 14,
                          ),
                        ],
                      ),
                      MoviesSilder(),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            '  Animation',
                            style: TextStyle(color: AppColors.whiteColor),
                          ),
                          Spacer(),
                          Text(
                            '  See More',
                            style: TextStyle(color: AppColors.YellowColor),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: AppColors.YellowColor,
                            size: 14,
                          ),
                        ],
                      ),
                      MoviesSilder(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
