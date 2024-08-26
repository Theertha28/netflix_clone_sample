import 'package:flutter/material.dart';
import 'package:netflix_clone_sample/dummy_db.dart';
import 'package:netflix_clone_sample/utils/color_constants.dart';
import 'package:netflix_clone_sample/view/search_screen/widgets/search_screen_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.withOpacity(0.2),
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search for a show, movie, genre, e.t.c.",
                        hintStyle: TextStyle(color: Colors.grey.withOpacity(0.4),
                        fontSize: 15),
                        suffixIcon: Icon(Icons.mic),
                             ),
                            
                    ),
          ),
          SizedBox(height: 21,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("Top Searches",
            style: TextStyle(
              fontSize: 26.75,fontWeight:FontWeight.bold,
              color: ColorConstants.mainWhite),),
          ),
             SizedBox(height: 21,),
            Expanded(
              child: ListView.separated(itemBuilder: (context,index)=>SearchScreenCard(
                title: DummyDb.searchScreenCard[index]["title"],
                Url: DummyDb.searchScreenCard[index]["Url"],
              ), 
              separatorBuilder: (context,index)=>SizedBox(height: 3,),
               itemCount: DummyDb.searchScreenCard.length),
            ) 
        ],
      ),
      
    );
  }
}