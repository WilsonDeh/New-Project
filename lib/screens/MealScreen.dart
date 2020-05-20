import 'package:adverts/models/meals.dart';
import 'package:adverts/widgets.dart';
import 'package:flutter/material.dart';

class MealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          CartBar(
            firstItem: IconButton(
              icon: Icon(Icons.arrow_back), 
              onPressed: (){Navigator.of(context).pop();}),
            secondItem: Text(
              "Meal",
              style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black
          ), 
          ),
          ),

          SizedBox(
            height: 559,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FoodCard(meal: corncreamsoup),
                    FoodCard(meal: greencornsalad),
                    FoodCard(meal: specialtymix)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FoodCard(meal: classiccornmousse),
                    SizedBox(height: 20),
                    FoodCard(meal: pumpkinsoup),
                  ],
                )
              ],),
          )


        ],
      )
      
    );
  }
}