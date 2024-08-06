import 'package:flutter/material.dart';
import 'package:netflix_clone/dummyDb.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';

class MovieCardBuilder extends StatelessWidget {
  const MovieCardBuilder(
      {super.key,
      this.isCircle = false,
      this.customHeight = 161,
      this.customWidth = 103,
      required this.customTitle,
      required this.MovieList,
      this.info_bar = false});
  final bool isCircle;
  final double customHeight;
  final double customWidth;
  final String customTitle;
  final List MovieList;
  final bool info_bar;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            customTitle,
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: isCircle
              ? customWidth
              : customHeight, //if the shape is circle then the height is same as its diameter else the height of rectangle
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              width: 7,
            ),
            itemCount: MovieList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(MovieList[index]),
                          fit: BoxFit.cover),
                      color: Colors.red,
                      shape: isCircle ? BoxShape.circle : BoxShape.rectangle),
                  height: customHeight,
                  width: customWidth,
                  child:
                      info_bar // if infobar value is true then the column will be enabled else null.
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 5,
                                  color: ColorConstants.grey1,
                                ),
                                Container(
                                  height: 35,
                                  color: ColorConstants.grey2,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(
                                          Icons.info_outline,
                                          color: ColorConstants.mainWhite,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.more_vert,
                                          color: ColorConstants.mainWhite,
                                          size: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          : null);
            },
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
