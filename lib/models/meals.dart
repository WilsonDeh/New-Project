import 'package:flutter/material.dart';

class Meal{
  String name;
  String image;
  String foodClass;
  int calories;
  String mass;
  double stars;
  int reviews;
  List<String>ingredients;

  Meal({this.name, this.image, this.foodClass, this.calories, this.mass, this.stars, this.reviews});

}

//vegetable collection
List<Meal> vegetableCollection =[banana, eggplant, brocolli];

var banana = Meal(
  name: "Banana",
  mass: "${350}g",
  image: "images/banana.png"

);

var corn = Meal(
  name: "Corn",
  mass: "${350}g",
  image: "images/corn.png"

);

var brocolli = Meal(
  name: "Brocolli",
  mass: "${350}g",
  image: "images/brocolli.png"

);

var eggplant = Meal(
  name: "Eggplant",
  mass: "${350}g",
  image: "images/eggplant.png"

);

//meals collection
List<Meal>mealCollection = [corncreamsoup, pumpkinsoup, specialtymix, classiccornmousse, greencornsalad];
var corncreamsoup = Meal(
  name: "Corn Cream Soup",
  mass: "${350}g",
  image: "images/corncreamsoup.png"
);

var pumpkinsoup = Meal(
  name: "Pumpkin Soup",
  mass: "${450}g",
  image: "images/pumpkinsoup.png"
);

var specialtymix = Meal(
  name: "Specialty Mix",
  mass: "${340}g",
  image: "images/specialtymix.png"
);

var classiccornmousse = Meal(
  name: "Classic Corn Mousse",
  mass: "${350}g",
  image: "images/classiccornmousse.png"
);

var greencornsalad = Meal(
  name: "Green Corn Salad",
  mass: "${300}g",
  image: "images/greencornsalad.png"
);