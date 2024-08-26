import 'package:flutter/material.dart';
import 'package:netflix_clone_sample/dummy_db.dart';
import 'package:netflix_clone_sample/utils/color_constants.dart';
import 'package:netflix_clone_sample/utils/image_constants.dart';
import 'package:netflix_clone_sample/view/home_screen/widgets/custom_poster_builder.dart';

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
          children: [
            //1 Top Ten Section
            _buildTopTenSection(),
            SizedBox(height: 11,),
            //2 play Button Section
            _playButtonSection(),
             SizedBox(height: 15,),
            //3  custom poster builder
             CustomPosterBuilder(
              imagesList: DummyDb.imagesList1,
              title: "Previews",
            width: 102,
              isCircle: true,
             ),
             CustomPosterBuilder(
              isVisible: true,
              imagesList: DummyDb.imagesList2,
              title: "Continue Watching for Emenalo",
             ),
             
              CustomPosterBuilder(
                imagesList: DummyDb.imagesList3,
                title: "Popular on Netflix" ,
                height: 251,
                width: 154,
              ),
        
          ],
        ),
      ),
    );
  }

  Padding _playButtonSection() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 54),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              children: [
                Icon(Icons.add,color: Colors.white,size: 24,),
                Text("My List",style: TextStyle(color: Colors. white,fontSize: 13.64),)
              ],
            ),
            Container(
              height: 45,
              width: 110.63,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 7),
                child: Row(
                  children: [
                    Icon(Icons.play_arrow,color: Colors.black,size: 37,),
                    SizedBox(width:4,),
                    Text("Play",style: TextStyle(color: Colors. black,fontSize: 20.46,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xffc4c4c4),borderRadius: BorderRadius.circular(5.63)
              ),
            ),
             Column(
              children: [
                Icon(Icons.info_outline_rounded,color: Colors.white,size: 24,),
                Text("Info",style: TextStyle(color: Colors. white,fontSize: 13.64),)
              ],
            ),
          
          ],),
        );
  }

  Widget _buildTopTenSection() {
    return Stack(
          children:[                    
            Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
              image: NetworkImage(
                "https://i.pinimg.com/236x/7b/c8/73/7bc873f71cd34e9a9bb72151c5a383e6.jpg"))),
            height: 415,
          ),
          Container(
            padding: EdgeInsets.only(left: 10,right: 24,top: 45),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors:[ColorConstants.mainBlack ,  
                Colors.transparent] )
            ),
            height: 415,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Image.asset(ImageConstants.SLOGO),
                  Text("TV Shows",style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.2
                  ),),
                  Text("Movies",style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.2
                  ),),
                  Text("My List",style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.2
                  ),),
                
                ],),
                Text("#2 in Nigeria Today",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.72,
                ),),
             
              ],
            ),
          ),
          ] 
        );
  }
  }
