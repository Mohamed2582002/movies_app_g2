import 'package:flutter/material.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/api/api_manager.dart';
import 'package:movies/bottomNavigationBar/home/movies_silder.dart';
import 'package:movies/bottomNavigationBar/home/trending_silder.dart';
import 'package:movies/models/genera_response.dart';

class HomeTabs extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeTabs> createState() => _HomeTabsState();
}

class _HomeTabsState extends State<HomeTabs> {

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
                      FutureBuilder<GeneraResponse?>(
                          future: ApiManagers.getGenera(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Center(
                                child: CircularProgressIndicator(
                                  color: Colors.grey,
                                ),
                              );
                            } else if (snapshot.hasError) {
                              return Column(
                                children: [
                                  Text(
                                    'someThing went wrong',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        ApiManagers.getGenera();
                                        setState(() {});
                                      },
                                      child: Text(
                                        'try again',
                                        style: TextStyle(color: Colors.red),
                                      )),
                                ],
                              );
                            }
                            if (snapshot.data!.status != 'ok') {
                              return Column(
                                children: [
                                  Text(snapshot.data!.message!),
                                  ElevatedButton(
                                      onPressed: () {
                                        ApiManagers.getGenera();
                                        setState(() {});
                                      },
                                      child: Text(
                                        'try again',
                                        style: TextStyle(color: Colors.red),
                                      )),
                                ],
                              );
                            }
                            return MoviesSlider();
                          }),
                      SizedBox(
                        height: 5,
                      ),
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
