import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';
import 'package:netflix_clone/utils/constants/image_constants.dart';
import 'package:netflix_clone/view/homescreen/HomeScreen.dart';
import 'package:netflix_clone/view/username_screen/UsernameScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Usernamescreen(),
            ));
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Center(
        child: Image(image: AssetImage(ImageConstants.LOGO_PNG)),
      ),
    );
  }
}
