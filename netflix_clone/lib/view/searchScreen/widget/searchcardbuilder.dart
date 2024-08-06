import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key, required this.movieList});
  final List<Map<String, String>> movieList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(right: 20),
            color: ColorConstants.grey1,
            child: Row(
              children: [
                Row(
                  children: [
                    Container(
                      height: 90,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(movieList[index]["img"]!))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      movieList[index]["name"]!,
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 15),
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.play_circle_outline,
                  size: 30,
                  color: ColorConstants.mainWhite,
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 5,
          );
        },
        itemCount: movieList.length,
      ),
    );
  }
}
