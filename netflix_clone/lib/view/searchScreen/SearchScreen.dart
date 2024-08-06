import 'package:flutter/material.dart';
import 'package:netflix_clone/dummyDb.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';
import 'package:netflix_clone/view/searchScreen/widget/searchcardbuilder.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "Top Searches",
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.mainWhite),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SearchCard(
              movieList: Dummydb.topSearch,
            )
          ],
        ),
      ),
    );
  }

  TextField SearchBar() {
    return TextField(
      style: TextStyle(color: ColorConstants.mainWhite),
      decoration: InputDecoration(
          fillColor: ColorConstants.grey1,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          prefixIcon: Icon(
            Icons.search,
            color: ColorConstants.greytext,
          ),
          suffixIcon: Icon(
            Icons.mic,
            color: ColorConstants.greytext,
          ),
          label: Text(
            "Search for a show, movie, genre, etc",
            style: TextStyle(color: ColorConstants.greytext, fontSize: 15),
          )),
    );
  }
}
