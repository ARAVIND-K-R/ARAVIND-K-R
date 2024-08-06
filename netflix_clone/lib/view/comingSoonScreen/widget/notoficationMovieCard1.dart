import 'package:flutter/material.dart';
import 'package:netflix_clone/dummyDb.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';

class notificationMovieCard1 extends StatelessWidget {
  const notificationMovieCard1(
      {super.key, required this.notificationList, required this.index});
  final List<Map<String, String>> notificationList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.grey1,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Container(
              width: 113,
              height: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(notificationList[index]["img"]!))),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("New Arrival",
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 16)),
              Text(notificationList[index]["name"]!,
                  style: TextStyle(
                      color: ColorConstants.mainWhite.withOpacity(0.83),
                      fontSize: 16)),
              Text(
                "Nov 6",
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(0.5),
                    fontSize: 13),
              )
            ],
          )
        ],
      ),
    );
  }
}
