import 'package:flutter/material.dart';
import 'package:netflix_clone_sample/dummy_db.dart';
import 'package:netflix_clone_sample/utils/image_constants.dart';
import 'package:netflix_clone_sample/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:netflix_clone_sample/view/global_widget/user_card.dart';
import 'package:netflix_clone_sample/view/home_screen/home_screen.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
       title: Image.asset(ImageConstants.LOGO,
       height: 28.49, ),
        actions: [Icon(Icons.edit)],
      ),
      body: Center(child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 75),
        itemCount: DummyDb.usersList.length + 1,
        gridDelegate: 
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 25,
          mainAxisSpacing: 22,
          mainAxisExtent: 121,
          crossAxisCount: 2), 
          itemBuilder: (context,index)=>index< DummyDb.usersList.length
         ? UserCard(
          image:  DummyDb.usersList[index]["imagePath"],
          name:  DummyDb.usersList[index]["name"], 
          onCardTapped: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=>BottomNavbarScreen()));
          },
         )
         :UserCard(
          name: "Add",
           image: ImageConstants.PLUS,
           onCardTapped:() {
             ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: SnackBarAction(label:'Failed' , onPressed: (){}))
             );
           } ,
           )
         
          
          ),),

    );
  }
}

