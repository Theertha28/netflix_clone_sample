import 'package:flutter/material.dart';
import 'package:netflix_clone_sample/utils/color_constants.dart';
import 'package:netflix_clone_sample/utils/image_constants.dart';
import 'package:netflix_clone_sample/view/user_name_screen/user_name_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => UserNameScreen(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Center(child: Image.asset(ImageConstants.LOGO)),
    );
  }
}