import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';
import 'package:netflix_clone/view/comingSoonScreen/comingSoonScreen.dart';
import 'package:netflix_clone/view/homescreen/HomeScreen.dart';
import 'package:netflix_clone/view/searchScreen/SearchScreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BottomNavBar> {
  int _navIndex = 0;

  List<Widget> MyScreen = [
    HomeScreen(),
    SearchScreen(),
    comingSoonScreen(),
    Container(
      color: ColorConstants.mainRed,
    ),
    Container(
      color: ColorConstants.mainGrey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyScreen[_navIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _navIndex,
          backgroundColor: ColorConstants.mainBlack,
          selectedItemColor: ColorConstants.mainWhite,
          unselectedItemColor: ColorConstants.grey1,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          onTap: (value) {
            _navIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                label: "Coming soon"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: "Downloads"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
          ]),
    );
  }
}
