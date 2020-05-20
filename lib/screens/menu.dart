import 'package:adverts/models/meals.dart';
import 'package:adverts/models/vegetables.dart';
import 'package:adverts/widgets.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          CartBar(
            firstItem: IconButton(icon: Icon(Icons.search),iconSize: 30,),
            secondItem: SizedBox(),
          ),
          
          SizedBox(height: 20),
          
          FoodClassBar(),

          SizedBox(
            height: 480,
            child: 
            // ListView.builder(
            //   scrollDirection: Axis.horizontal,
            //   itemCount: vegetableCollection.length,
            //   itemBuilder: (context, index){
            //     return Column(
            //       children: <Widget>[
            //         FoodAvatar(meal: vegetableCollection[index]),
            //         Text(vegetableCollection[index].name, 
            //         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            //         ),
            //       ],);
            //   },
            // ),
              PageViewScreen(),
          ),

          //button
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed('/mealscreen');
            },
            child: Button(color: Colors.red, text: "View Meals",)
            )
        ],
      ),
    );
  }
}

