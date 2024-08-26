import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key,
   required this.url,
    required this.des, 
   required this.title});
 final String url;
 final String des;
 final String title;

  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            Container(
              height: 196,
              width: 420,
              decoration: BoxDecoration(
                 color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                  url,))
              ),
            ),
            SizedBox(height: 20,),
            Row(
             mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(Icons.notifications,size: 30,color: Colors.white,),
                    Text("Remind Me",
                    style: TextStyle(color: Colors.white,fontSize: 12),)
                  ],
                ),
                SizedBox(width: 45,),
                Column(
                  children: [
                    Icon(Icons.share,size: 30,color: Colors.white,),
                    Text("Share",
                    style: TextStyle(color: Colors.white,fontSize: 12),)
                  ],
                ),
                SizedBox(width: 22.17,)
              ],
            ),
            SizedBox(height: 13.11,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Season 1 Coming December 14",
                  style: TextStyle(
                    fontSize: 12,fontWeight: FontWeight.w400,
                    color: Colors.white.withOpacity(0.83)),),
                    SizedBox(height: 13.13,),
                   Text(title,
                  style: TextStyle(
                    fontSize: 18.66,fontWeight: FontWeight.w700,
                    color: Colors.white),), 
                      SizedBox(height: 12.87,),
                     Text(
                     des,
                  style: TextStyle(
                    fontSize: 11.14,fontWeight: FontWeight.w400,
                    color: Colors.white.withOpacity(0.83)),), 
                    SizedBox(height: 10,),
                    Text("Steamy . Soapy .SlowBurn . Suspenseful .nTeen . Mystery",
                  style: TextStyle(
                    fontSize: 11.4,fontWeight: FontWeight.w600,
                    color: Colors.white),), 
                ],
              ),
            )
          ],
        );
  }
}