import 'package:netflix_clone/utils/constants/image_constants.dart';

class Dummydb {
  // username screen
  static const List<Map<String, String>> userList = [
    {"imagePath": ImageConstants.USER1_PNG, "name": "Emenalo"},
    {"imagePath": ImageConstants.USER2_PNG, "name": "Onyeka"},
    {"imagePath": ImageConstants.USER3_PNG, "name": "Thelma"},
    {"imagePath": ImageConstants.USER4_PNG, "name": "Kids"}
  ];

  static const List<String> movieList1 = [
    "assets/images/mov_1.jpg",
    "assets/images/mov_2.jpg",
    "assets/images/mov_3.jpg",
    "assets/images/mov_4.jpg",
    "assets/images/mov_5.jpg",
  ];

  static const List<String> movieList2 = [
    "assets/images/mov_3.jpg",
    "assets/images/mov_4.jpg",
    "assets/images/mov_5.jpg",
    "assets/images/mov_1.jpg",
    "assets/images/mov_2.jpg",
  ];

  static const List<Map<String, String>> topSearch = [
    {"img": "assets/images/mov_1.jpg", "name": "name1"},
    {"img": "assets/images/mov_2.jpg", "name": "name2"},
    {"img": "assets/images/mov_3.jpg", "name": "name3"},
    {"img": "assets/images/mov_4.jpg", "name": "name4"},
    {"img": "assets/images/mov_5.jpg", "name": "name5"},
    {"img": "assets/images/mov_2.jpg", "name": "name6"},
    {"img": "assets/images/mov_1.jpg", "name": "name7"},
    {"img": "assets/images/mov_3.jpg", "name": "name8"}
  ];

  static const List<Map<String, String>> notificationMovies = [
    {"img": "assets/images/mov_1.jpg", "name": "name1"},
    {"img": "assets/images/mov_2.jpg", "name": "name2"},
  ];

  static const List<Map<String, String>> notificationMovies2 = [
    {"img": "assets/images/mov_3.jpg", "name": "name3"},
    {"img": "assets/images/mov_4.jpg", "name": "name4"},
    {"img": "assets/images/mov_5.jpg", "name": "name5"},
  ];
}
