import 'package:flutter/material.dart';
import 'package:netflix_clone/dummyDb.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';
import 'package:netflix_clone/view/comingSoonScreen/widget/notoficationMovieCard1.dart';
import 'package:netflix_clone/view/homescreen/widgets/notificationMovieCard2.dart';

class comingSoonScreen extends StatelessWidget {
  const comingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        title: Text(
          "Notification",
          style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        titleSpacing: 0,
        leading: Center(
          child: CircleAvatar(
            radius: 16,
            backgroundColor: ColorConstants.mainRed,
            child: Icon(
              Icons.notifications,
              color: ColorConstants.mainWhite,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Column(
                children: List.generate(
                  Dummydb.notificationMovies.length,
                  (index) => notificationMovieCard1(
                      index: index,
                      notificationList: Dummydb.notificationMovies),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(
                  Dummydb.notificationMovies2.length,
                  (index) => notificationMovieCard2(
                      index: index,
                      notificationList: Dummydb.notificationMovies2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
