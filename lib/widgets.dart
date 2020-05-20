import 'package:adverts/models/meals.dart';
import 'package:flutter/material.dart';

//setting global padding value
double leftrightpadding = 30.0;

// cartBarr widget
class CartBar extends StatelessWidget {
  final firstItem;
  final secondItem;
  CartBar({this.firstItem, this.secondItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: leftrightpadding, left:leftrightpadding, right: leftrightpadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        firstItem,
        secondItem,
        IconButton(
          icon: Icon(Icons.shopping_cart, size: 30,),
          onPressed: (){},
          )

      ],),
    );
  }
}


//FoodClassBar widget
class FoodClassBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:leftrightpadding, right: leftrightpadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Fruits",style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w300),),
          Text("Vegetables",style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
          Text("Berries",style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w300),),
        ],
      ),
    );
  }
}


//FoodAvatar Class Widget
class FoodAvatar extends StatelessWidget {
  final Meal meal;
  final String name;

  FoodAvatar({this.meal, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 400,
      width: 200,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(this.meal.image),
        fit: BoxFit.contain
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  Color color;
  String text;
  Button({this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 170,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white
          ), 
          ),
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30)

      ),
    );
  }
}

//foodCard widget
class FoodCard extends StatelessWidget {
  Meal meal;
  int stars;
  FoodCard({this.meal, this.stars});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            offset: Offset(2,9),
            blurRadius: 2,
          ),
            
        ]
      
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          Expanded(
            flex: 4,
            child: AnimatedCircle(image: AssetImage(this.meal.image)),
          ),

          //meal name
          Expanded(
            flex: 1, 
            child: Text(
              this.meal.name,
              style: TextStyle(fontSize: 15),
              )
            ),

          // //mass
          Expanded(flex: 1, child: Text(this.meal.mass.toString())),

          //row of stars
          Expanded(
            flex: 1, 
            child: Center(
              child: Row(
                children: <Widget>[
                  SizedBox(width:10),
                  Icon(Icons.star, color: Colors.orange,),
                  Icon(Icons.star, color: Colors.orange,),
                  Icon(Icons.star, color: Colors.orange,),
                  Icon(Icons.star, color: Colors.orange,),
                  Icon(Icons.star, color: Colors.orange,),
                ],),
            ),
          )
        ],
      ),
      
    );
  }
}

class AnimatedCircle extends StatelessWidget {
  final AssetImage image;
  
  const AnimatedCircle({
    Key key,
    this.image
  }) : super(key: key, );

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      curve: Curves.easeOutQuad,
      tween: Tween<double>(begin: 0, end: 3), 
      duration: Duration(milliseconds: 900), 
      builder: (context, double _angle, __){
        return Transform.rotate(
          angle: _angle,
          child: Container(decoration: BoxDecoration(image: DecorationImage(image: image) ), height: 1000, width: 1000,),
        );
      }
      );
  }
}


class PageViewScreen extends StatefulWidget {
  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  PageController _controller = PageController(
      initialPage: 1,
    );

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      itemCount: vegetableCollection.length,
      itemBuilder: (context, index){
        return Column(
                  children: <Widget>[
                    FoodAvatar(meal: vegetableCollection[index]),
                    Text(vegetableCollection[index].name, 
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                    ),
                  ],);
      },
    );
  }
}
