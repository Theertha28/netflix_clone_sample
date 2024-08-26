import 'package:flutter/material.dart';
import 'package:netflix_clone_sample/utils/color_constants.dart';

class SearchScreenCard extends StatelessWidget {
  const SearchScreenCard({super.key,
  required this.Url,
    required this.title,
  });
  final String Url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.2),
      child: Row(
        
        children: [
          Image.network(Url,
          height: 76,
          width: 146,
          fit: BoxFit.fill,),
          SizedBox(width: 7,),
          Text(title,
          style: TextStyle(fontSize: 14.72,color: ColorConstants.mainWhite),),
          Spacer(),
          Icon(Icons.play_circle_outline_outlined,color: Colors.white,)
        ],
      ),
    );
  }
}