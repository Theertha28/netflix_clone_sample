import 'package:flutter/material.dart';
import 'package:netflix_clone_sample/utils/color_constants.dart';
import 'package:netflix_clone_sample/view/Download_screen/download_screen.dart';
import 'package:netflix_clone_sample/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix_clone_sample/view/home_screen/home_screen.dart';
import 'package:netflix_clone_sample/view/more_screen/more_screen.dart';
import 'package:netflix_clone_sample/view/search_screen/search_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  List Screens=[
    HomeScreen(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadScreen(),
    MoreScreen(),
  ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedLabelStyle: TextStyle(fontSize: 10,),
        unselectedLabelStyle: TextStyle(fontSize: 10,),
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorConstants.mainBlack,
        selectedItemColor: ColorConstants.mainWhite,
        unselectedItemColor: ColorConstants.mainGrey,
       items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.video_collection_rounded),label: "Coming Soon"),
        BottomNavigationBarItem(icon: Icon(Icons.download),label: "Downloads"),
        BottomNavigationBarItem(icon: Icon(Icons.menu),label: "Menu"),
      ],
      onTap: (value){
        selectedIndex=value;
      setState(() {});
      },
      ),
      
    );
  }
}