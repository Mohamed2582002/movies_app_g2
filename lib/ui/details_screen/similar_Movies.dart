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


          ],
        ),
      ),
    );
  }
}
