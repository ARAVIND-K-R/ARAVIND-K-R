import 'package:flutter/material.dart';
import 'package:netflix_clone/dummyDb.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';

class notificationMovieCard2 extends StatelessWidget {
  const notificationMovieCard2(
      {super.key, required this.notificationList, required this.index});
  final List<Map<String, String>> notificationList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.mainBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            notificationList[index]["img"]!,
            width: double.maxFinite,
            height: 195,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Spacer(),
                Column(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: ColorConstants.mainWhite,
                      size: 25,
                    ),
                    Text(
                      "Remind Me",
                      style: TextStyle(
                          fontSize: 12,
                          color: ColorConstants.mainWhite.withOpacity(0.85)),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: ColorConstants.mainWhite,
                      size: 25,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(
                          fontSize: 12,
                          color: ColorConstants.mainWhite.withOpacity(0.85)),
                    )
                  ],
                )
              ],
            ),
          ),
          Text(
            "Season 1 Coming December 14",
            style: TextStyle(
                fontSize: 12,
                color: ColorConstants.mainWhite.withOpacity(0.85)),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            notificationList[index]["name"]!,
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.",
            style: TextStyle(
                fontSize: 12,
                color: ColorConstants.mainWhite.withOpacity(0.85)),
          ),
          SizedBox(
            height: 13,
          ),
          Center(
            child: Text(
              "Steamy     Soapy     Slow Burn     Suspenseful     Teen     Mystery",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.mainWhite),
            ),
          ),
          SizedBox(
            height: 17,
          )
        ],
      ),
    );
  }
}
