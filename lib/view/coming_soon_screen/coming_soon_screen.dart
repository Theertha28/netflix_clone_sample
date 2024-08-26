import 'package:flutter/material.dart';
import 'package:netflix_clone_sample/dummy_db.dart';
import 'package:netflix_clone_sample/utils/color_constants.dart';
import 'package:netflix_clone_sample/view/coming_soon_screen/widgets/movie_card.dart';
import 'package:netflix_clone_sample/view/coming_soon_screen/widgets/new_arrival_card.dart';


class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 5,
            child: Icon(Icons.notifications,color: Colors.white,),),
        ),
        title: Text("Notifications",
        style: TextStyle(
          fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16.91),),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Column(
            children: 
              List.generate(2, (index)=>NewArrivalCard(
                title: DummyDb.NewArrivalCard[index]["title"],
                urlN: DummyDb.NewArrivalCard[index]["urlN"],
                date: DummyDb.NewArrivalCard[index]["date"],
              )
              ),
              
            
          ),
           // SizedBox(height: 25,),
         ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 25),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context,index)=>MovieCard(
            title: DummyDb.movieCard[index]["title"],
                url: DummyDb.movieCard[index]["url"],
                des: DummyDb.movieCard[index]["des"],
          ),
          separatorBuilder: (context,index)=>SizedBox(height: 17,),
           itemCount: DummyDb.movieCard.length)
        
          
          ],
        ),
      ) ,
      
    );
  }
}

