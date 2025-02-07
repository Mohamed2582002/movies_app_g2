import 'package:flutter/material.dart';
import 'package:movies/Utils/AppAssets.dart';
import 'package:movies/Utils/AppColor.dart';
import 'package:movies/bottomNavigationBar/Browse/Browse.dart';
import 'package:movies/bottomNavigationBar/Profile/Profile.dart';
import 'package:movies/bottomNavigationBar/home/home.dart';
import 'package:movies/bottomNavigationBar/serch/search.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    Home(),
    Search(),
    Browse(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: tabs[selectedIndex]),
          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.black.withOpacity(0.5),
                ),
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: BottomNavigationBar(
                  currentIndex: selectedIndex,
                  onTap: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  backgroundColor: Colors.transparent,
                  unselectedItemColor: AppColors.whiteColor,
                  type: BottomNavigationBarType.fixed,
                  elevation: 0,
                  fixedColor: AppColors.YellowColor,
                  items: [
                    BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage(AppAssets.homeIcon)),
                      label: "",
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage(AppAssets.searchIcon)),
                      label: "",
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage(AppAssets.browseIcon)),
                      label: "",
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage(AppAssets.ProfileIcon)),
                      label: "",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
