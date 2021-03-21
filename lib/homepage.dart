import 'package:flutter/material.dart';
import './foodcategory.dart';
import './search.dart';
import './boughtfoods.dart';
import 'data/fooddata.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textStyle = TextStyle(fontSize: 32, fontWeight: FontWeight.bold);
  List<Food> _foods = foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
              //for space to be between icons and the text
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "What would",
                      style: textStyle,
                    ),
                    Text("you like to eat?", style: textStyle),
                  ],
                ),
                Icon(
                  Icons.notifications_none,
                  size: 40,
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
          FoodCategory(),
          SizedBox(
            height: 20,
          ),
          Search(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Frequently Bought Foods',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'View All',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent),
                ),
              ),
            ],
          ),
          Column(
            children: _foods.map(_buildFoodItems).toList(),
          ),
        ],
      ),
    );
  }
}

Widget _buildFoodItems(Food food) {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    child: BoughtFoods(
      id: food.id,
      name: food.name,
      imagePath: food.imagePath,
      category: food.category,
      price: food.price,
      discount: food.discount,
      ratings: food.ratings,
    ),
  );
}

class MainSCreen extends StatefulWidget {
  @override
  _MainSCreenState createState() => _MainSCreenState();
}

class _MainSCreenState extends State<MainSCreen> {
  int currentIndex = 0;
  HomePage homePage;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage = HomePage();
    pages = [];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Orders'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favourites'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
