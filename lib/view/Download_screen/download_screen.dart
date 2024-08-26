import 'package:flutter/material.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Smart Downloads",
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w400)
        ,),),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Introducing Downloads For You",
             style: TextStyle(
          color: Colors.white,
          fontSize: 19,
          fontWeight: FontWeight.w700)),
          SizedBox(height: 12,),
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",
             style: TextStyle(
          color: Colors.white,
          height: 1.8,
          letterSpacing: 1,
          fontSize: 10,
          fontWeight: FontWeight.w400)),
          SizedBox(height: 30,),
          Center(
            child: CircleAvatar(
              backgroundColor: Color(0xff424242),
              radius: 88,
            ),
          ),
           SizedBox(height: 22),
           Container(
            height: 40,
            decoration: BoxDecoration(
              color:Color(0xff0071EB)
            ),
            child: Center(
              child: Text("SETUP", style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400)),
            ),
           ),
           SizedBox(height: 49,),
            Center(
              child: Container(
              height: 33,
              width: 239,
              decoration: BoxDecoration(
                color:Color(0xff424242)
              ),
              child: Center(
                child: Text("Find Something to Download", style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400)),
              ),
                         ),
            ),
          ],),
        ),
    );
  }
}