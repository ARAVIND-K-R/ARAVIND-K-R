import 'package:flutter/material.dart';
import 'package:netflix_clone/dummyDb.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';
import 'package:netflix_clone/utils/constants/image_constants.dart';
import 'package:netflix_clone/view/bottom_nav_screen/BottomNavScreen.dart';
import 'package:netflix_clone/view/homescreen/HomeScreen.dart';

class Usernamescreen extends StatelessWidget {
  const Usernamescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        title: Image.asset(height: 37.2, width: 138, ImageConstants.LOGO_PNG),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.edit,
              size: 24,
              color: ColorConstants.mainWhite,
            ),
          )
        ],
      ),
      body: Center(
        child: GridView.builder(
          itemCount: Dummydb.userList.length + 1,
          padding: EdgeInsets.symmetric(horizontal: 75),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 121,
          ),
          itemBuilder: (context, index) {
            if (index < Dummydb.userList.length) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return BottomNavBar();
                    },
                  ));
                },
                child: Container(
                  child: Column(
                    children: [
                      Image.asset(
                        Dummydb.userList[index]["imagePath"]!,
                        height: 92,
                        width: 100,
                      ),
                      Text(
                        Dummydb.userList[index]["name"]!,
                        style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontSize: 13.25,
                        ),
                      )
                    ],
                  ),
                ),
              );
            } else {
              return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Feature not available"),
                          backgroundColor: ColorConstants.mainRed,
                        ));
                      },
                      child: Image.asset(
                        ImageConstants.ADD_USER_PNG,
                        height: 50,
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Add Profile",
                      style: TextStyle(
                          fontSize: 13.25, color: ColorConstants.mainWhite),
                    )
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
