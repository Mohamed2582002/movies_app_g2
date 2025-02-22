import 'package:flutter/material.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/Utils/AppStyle.dart';
import 'package:movies/ui/widget/movie_fragment.dart';

class SimilarMovies extends StatelessWidget {
  static const String routeName = 'similar_Movies';

  @override
  Widget build(BuildContext context) {
    var height =MediaQuery.of(context).size.height;
    var width =MediaQuery.of(context).size.width;
    return Scaffold(backgroundColor: AppColors.blackColor,
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: width*0.04,),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Similar",style: Appstyle.bold24White,)),
            ),
          SizedBox(height: height*0.01),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*0.04,),
            child: Row(
              children: [Expanded(child: MovieFragment()),
                SizedBox(width: width*0.04,),
                Expanded(child: MovieFragment())
              ],
            ),
          ),
            SizedBox(height: height*0.02),
            Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*0.04),
            child: Row(
              children: [Expanded(child: MovieFragment()),
                SizedBox(width: width*0.04,),
                Expanded(child: MovieFragment())
              ],
            ),
          ),
            SizedBox(height: height*0.01,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: width*0.04,),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Summary",style: Appstyle.bold24White,)),
            ),
            SizedBox(height: height*0.01,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: width*0.04,),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Following the events of Spider-Man No Way Home, Doctor Strange unwittingly casts a forbidden spell that accidentally opens up the multiverse. With help from Wong and Scarlet Witch, Strange confronts various versions of himself as well as teaming up with the young America Chavez while traveling through various realities and working to restore reality as he knows it. Along the way, Strange and his allies realize they must take on a powerful new adversary who seeks to take over the multiverse.—Blazer346"
                    ,style: Appstyle.medium16White,)),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.04,
              ),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Cast",
                    style: Appstyle.bold24White,
                  )),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.04,
              ),
              child: Container(
                width: 400,
                height: 92,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFF282A28),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(7),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/OnBoarding2.png',
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Name : Hayley Atwell',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text(
                          'Character : Captain Carter',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.04,
              ),
              child: Container(
                width: 400,
                height: 92,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFF282A28),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(7),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/OnBoarding2.png',
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Name : Hayley Atwell',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text(
                          'Character : Captain Carter',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.04,
              ),
              child: Container(
                width: 400,
                height: 92,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFF282A28),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(7),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/OnBoarding2.png',
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Name : Hayley Atwell',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text(
                          'Character : Captain Carter',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.04,
              ),
              child: Container(
                width: 400,
                height: 92,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFF282A28),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(7),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/OnBoarding2.png',
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Name : Hayley Atwell',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text(
                          'Character : Captain Carter',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.04,
              ),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Genres",
                    style: Appstyle.bold24White,
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.04,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 120,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFF282A28),
                      ),
                      child: Center(
                          child: Text(
                        'Action',
                        style:
                            TextStyle(color: Color(0xFFFFFFFF), fontSize: 15),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Container(
                      width: 120,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFF282A28),
                      ),
                      child: Center(
                          child: Text(
                        'Sci-Fi',
                        style:
                            TextStyle(color: Color(0xFFFFFFFF), fontSize: 15),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Container(
                      width: 120,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFF282A28),
                      ),
                      child: Center(
                          child: Text(
                        'Adventure',
                        style:
                            TextStyle(color: Color(0xFFFFFFFF), fontSize: 15),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.04,
              ),
              child: Row(
                children: [
                  Container(
                    width: 120,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFF282A28),
                    ),
                    child: Center(
                        child: Text(
                      'Fantasy',
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 15),
                    )),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    width: 120,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFF282A28),
                    ),
                    child: Center(
                        child: Text(
                      'Horror',
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 15),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
          ],
        ),
      ),
    );
  }
}
