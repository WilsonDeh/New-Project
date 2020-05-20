import 'package:adverts/screens/MealScreen.dart';
import 'package:adverts/screens/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/menu',
      routes: {
        '/menu': (context)=> Menu(),
        '/mealscreen': (context)=> MealScreen(),
        
      },
    );
  }
}
