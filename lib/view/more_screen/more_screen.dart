import 'package:flutter/material.dart';
import 'package:netflix_clone_sample/dummy_db.dart';
import 'package:netflix_clone_sample/utils/color_constants.dart';
import 'package:netflix_clone_sample/view/global_widget/user_card.dart';
import 'package:icons_plus/icons_plus.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 38,),
            //1 user selection section
            _buildUserSelectionSection(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.edit,color: Colors.white.withOpacity(0.81),),
                SizedBox(width: 6,),
                Text("Manage Profiles",
                style: TextStyle(fontSize: 14.72,
                color: Colors.white.withOpacity(0.81)),
                )
              ],
            ),
            SizedBox(height: 2,),
            //2 referel section
            Container(
              padding: EdgeInsets.only(left: 16,top: 19,right: 9,bottom: 10),
              color: Color(0xff1a1a1a),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Row(
              children: [
                Icon(Icons.message_outlined,color: Colors.white,),
                SizedBox(width: 9,),
                Text("Tell friends about Netfilx ",
                style: TextStyle(fontSize: 19.63,
                fontWeight: FontWeight.w700,
                color: Colors.white),
                )
              ],
            ),
            SizedBox(height: 5,),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
              style: TextStyle(color: ColorConstants.mainWhite,
              height: 1.8,
              letterSpacing: 1,
              fontSize: 11,
              fontWeight: FontWeight.w500),),
              SizedBox(height: 9,),
              Text("Terms & Conditions",
              style: TextStyle(
                shadows: [
                  Shadow(
                    offset: Offset(0, -4),
                    color: Colors.grey
                  ),
                ],
                
                decoration: TextDecoration.underline,
                decorationColor: Colors.transparent,
                letterSpacing: 1,
                color: Colors.transparent,
                fontSize: 11,
                fontWeight: FontWeight.w500
                ),),
                SizedBox(height: 10,),
                Row( 
                  children: [
                    Expanded(
                      child: TextField(
                       decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: ColorConstants.mainBlack,
                        filled: true,
                       ), 
                      )),
                      SizedBox(width: 7,),
                    Container(
                      height: 37,
                      width: 96,
                      alignment: Alignment.center,
                      child: Text("Copy Link",style: TextStyle(
                        color: ColorConstants.mainBlack,
                        fontSize: 17.06,
                        fontWeight: FontWeight.w600),),
                      decoration: BoxDecoration(color: Colors.white),
                    )
                  ],
                ), 

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 25),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Brand(Brands.whatsapp,size: 40,),
               
                  SizedBox(
                    height: 41,
                     child:
                      VerticalDivider(
                                       color: Color(0xff8C8787),
                                       width: 3,
                                       thickness: 3,
                                       ),
                   ),
                  
                   Brand(Brands.facebook_2,size: 40),
                  
                  SizedBox(
                    height: 41,
                     child:
                      VerticalDivider(
                                       color: Color(0xff8C8787),
                                       width: 3,
                                       thickness: 3,
                                       ),
                   ),
               
                  
                   Brand(Brands.gmail,size: 40,),
                  
                   SizedBox(
                    height: 41,
                     child:
                      VerticalDivider(
                                       color: Color(0xff8C8787),
                                       width: 3,
                                       thickness: 3,
                                       ),
                   ),
                  
                  Column(
                    children: [
                      Icon(Icons.more_horiz,color: Colors.white,size: 40,),
                      SizedBox(height: 1,),
                      Text("More",style: TextStyle(color: Colors.white),)
                    ],
                  )
                 ],),
               ),

               ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 9,bottom: 11),
              child: Row(
                children: [
                  Icon(Icons.check,color: Colors.white,size: 35,),
                  SizedBox(width: 5,),
                  Text("My List",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Divider(
              thickness: 0.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26,vertical: 20),
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                Text("App Setting",
                style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                Text("Account",
                style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                 SizedBox(height: 10,),
                Text("Help",
                style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                 SizedBox(height: 10,),
                Text("Sign Out",
                style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),)
              ],),
            )
          ],
        ),
      ),
    );
  }
  
  Padding _buildUserSelectionSection() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Row(
              children: List.generate(
                DummyDb.usersList.length+1,
                 (index)=>index< DummyDb.usersList.length
                 ?Padding(
                   padding: const EdgeInsets.only(right: 9),
                   child: UserCard(
                    height: index == 0 ?68 :60,
                    width: index ==0 ?73 :65,
                    name: DummyDb.usersList[index]["name"],
                    image: DummyDb.usersList[index]["imagePath"],),
                 )
                 :Column(
                  children: [
                    Container(
                      height: 60,
                      width: 65,
                      child: Icon(Icons.add,color: ColorConstants.mainWhite),
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorConstants.mainWhite),                         
                      ),
                    ),
                    Text("",
                    style: TextStyle(height: 2),)
                  ],
                 )
                 ),
                 
            ),
          );
  }
}