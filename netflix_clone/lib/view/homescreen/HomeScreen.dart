import 'package:flutter/material.dart';
import 'package:netflix_clone/dummyDb.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';
import 'package:netflix_clone/utils/constants/image_constants.dart';
import 'package:netflix_clone/view/bottom_nav_screen/BottomNavScreen.dart';
import 'package:netflix_clone/view/homescreen/widgets/MovieCardBuilder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.mainBlack,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              moviePosterSection(),
              playMovieSection(),
              MovieCardBuilder(
                isCircle: true,
                customTitle: "Previews",
                customWidth: 102,
                MovieList: Dummydb.movieList1,
              ),
              MovieCardBuilder(
                MovieList: Dummydb.movieList2,
                customTitle: "Continue Watching for Emenalo ",
                info_bar: true,
              ),
              MovieCardBuilder(
                customTitle: "Popular  on Netflix",
                MovieList: Dummydb.movieList1,
              ),
              MovieCardBuilder(
                MovieList: Dummydb.movieList2,
                customTitle: "Trending Now",
                customHeight: 251,
                customWidth: 155,
              ),
            ],
          ),
        ));
  }

  Padding playMovieSection() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                Icons.add,
                color: ColorConstants.mainWhite,
                size: 24,
              ),
              Text(
                "My List",
                style:
                    TextStyle(color: ColorConstants.mainWhite, fontSize: 13.64),
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorConstants.mainGrey),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.play_arrow,
                    color: ColorConstants.mainBlack,
                    size: 30,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Play",
                    style: TextStyle(
                        color: ColorConstants.mainBlack,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              Icon(
                Icons.info_outline,
                color: ColorConstants.mainWhite,
                size: 24,
              ),
              Text(
                "Info",
                style:
                    TextStyle(color: ColorConstants.mainWhite, fontSize: 13.64),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget moviePosterSection() {
    return Stack(
      children: [
        Container(
          height: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageConstants.Home_Inage_1),
                  fit: BoxFit.fill)),
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 0, left: 24, right: 24, top: 50),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(ImageConstants.N_LOGO_PNG),
                      Text(
                        "TV Shows",
                        style: TextStyle(
                            fontSize: 17.2, color: ColorConstants.mainWhite),
                      ),
                      Text("Movies",
                          style: TextStyle(
                              fontSize: 17.2, color: ColorConstants.mainWhite)),
                      Text("My List",
                          style: TextStyle(
                              fontSize: 17.2, color: ColorConstants.mainWhite))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 19,
                        width: 19,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: ColorConstants.mainWhite, width: 1)),
                        child: Column(
                          children: [
                            Text(
                              "Top",
                              style: TextStyle(
                                  fontSize: 5,
                                  color: ColorConstants.mainWhite,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "10",
                              style: TextStyle(
                                  color: ColorConstants.mainWhite,
                                  fontSize: 6.86,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "  #2 in Nigeria Today",
                        style: TextStyle(
                            fontSize: 14,
                            color: ColorConstants.mainWhite,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ]),
          ),
        ),
        Container(
          height: 400,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [ColorConstants.mainBlack, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 0, left: 24, right: 24, top: 50),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(ImageConstants.N_LOGO_PNG),
                      Text(
                        "TV Shows",
                        style: TextStyle(
                            fontSize: 17.2, color: ColorConstants.mainWhite),
                      ),
                      Text("Movies",
                          style: TextStyle(
                              fontSize: 17.2, color: ColorConstants.mainWhite)),
                      Text("My List",
                          style: TextStyle(
                              fontSize: 17.2, color: ColorConstants.mainWhite))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 19,
                        width: 19,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: ColorConstants.mainWhite, width: 1)),
                        child: Column(
                          children: [
                            Text(
                              "Top",
                              style: TextStyle(
                                  fontSize: 5,
                                  color: ColorConstants.mainWhite,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "10",
                              style: TextStyle(
                                  color: ColorConstants.mainWhite,
                                  fontSize: 6.86,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "  #2 in Nigeria Today",
                        style: TextStyle(
                            fontSize: 14,
                            color: ColorConstants.mainWhite,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ]),
          ),
        )
      ],
    );
  }
}
