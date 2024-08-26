import 'package:flutter/material.dart';
import 'package:netflix_clone_sample/utils/color_constants.dart';

class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard({super.key,
   required this.urlN,
    required this.date, 
   required this.title});
    final String urlN;
  final String date;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.symmetric(horizontal: 12 ,vertical: 5),
              color: Color(0xff424242),
              
              child: Row(
                children: [
                  Image.network(
                    fit: BoxFit.cover,
                    urlN,
                    height: 55,
                    width: 113,),
                    SizedBox(width: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("New Arrival",
                        style: TextStyle(
                          color: ColorConstants .mainWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),),
                       Text(title,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.83),
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),), 
                        Text(date,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.48),
                          fontSize: 10.51,
                          fontWeight: FontWeight.w500
                        ),),
                      ],
                    )
                ],
              ),
            );
  }
}