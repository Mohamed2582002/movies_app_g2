import 'package:flutter/material.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/api/api_manager.dart';
import 'package:movies/bottomNavigationBar/home/movies_silder.dart';
import 'package:movies/bottomNavigationBar/home/trending_silder.dart';

class HomeTabs extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeTabs> createState() => _HomeTabsState();
}

class _HomeTabsState extends State<HomeTabs> {
  late Future<List<dynamic>> movies;

  @override
  void initState() {
    super.initState();
    movies = apiManager().fetchMovies();
  }

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
                      FutureBuilder<List<dynamic>>(
                          future: movies,
                          builder: (context, snapshot) {
                            if (snapshot.hasError) {
                              return Center(
                                  child: Text(snapshot.error.toString()));
                            } else if (snapshot.hasData) {
                              return TrendingSilder();
                            } else {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          }),
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
                      MoviesSlider(),
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
                      MoviesSlider(),
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
                      MoviesSlider(),
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
