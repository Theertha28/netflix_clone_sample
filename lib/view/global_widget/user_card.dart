import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.name,
    required this.image,
    this.onCardTapped, 
    this.height,
    this.width,
  }) ;
   final String name;
  final String image;
  final double? height;
  final double? width;
  final void Function()? onCardTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTapped,
      child: Column(
    
          children: [
           Image.asset(
           image,
           height: height,
           width: width,),
           Text(
            name,   
         style: TextStyle(color: Colors.white,height: 2),)
          ],  
       ),
    );
  }
}