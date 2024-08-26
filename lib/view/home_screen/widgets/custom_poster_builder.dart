
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:netflix_clone_sample/utils/color_constants.dart';

class CustomPosterBuilder extends StatelessWidget {
  const CustomPosterBuilder( {
    this.isCircle=false,
    super.key,
    this.height=177,
    this.width=103,
    required this.title,
    this.isVisible=false,
    this.imagesList=const[],
  });
 final bool isCircle;
 final double height;
 final double width;
 final String title;
 final isVisible;
 final List<String> imagesList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Padding(
           padding: const EdgeInsets.only(left: 16),
           child: Text(title,
           style: TextStyle(
             fontSize: 20.92,
             fontWeight: FontWeight.bold,
             color: ColorConstants.mainWhite,
           ),),
         ),
         SizedBox(height: 24,),
         SizedBox(
           height: isCircle ? width : height,
           child: ListView.separated(
             padding: EdgeInsets.symmetric(horizontal: 12),
             scrollDirection: Axis.horizontal,
             shrinkWrap: true,
             itemBuilder: (context,index)=>Container(
             decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imagesList[index])),
              shape: isCircle? BoxShape.circle:BoxShape.rectangle,
             color: Colors.red, ), 
            
            height: height,
            width: width,  
            child: Visibility(
              visible: isVisible,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 3,
                    width: double.infinity,
                    color: Colors.grey,
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 3,
                      width: 35,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 7),
                    color: ColorConstants.mainBlack,
                    height: 37,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.info_outline,color: Colors.white,size: 24,),
                          Icon(Icons.more_vert,color: Colors.white,size: 24,),
                      ],
                    ),
                  )
                ],
              ),
            ),
           ), separatorBuilder: (context,index)=>SizedBox(
             width: 7,
           ), itemCount:imagesList.length
           ),
         )
       ],
      ),
    );
  }
}