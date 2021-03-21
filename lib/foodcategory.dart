import 'package:flutter/material.dart';
import 'package:food_joint/models/category_models.dart';
import './data/categorydata.dart';
import './models/category_models.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItems: _categories[index].numberOfItems,
          );
        },
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final int numberOfItems;

  FoodCard({this.categoryName, this.imagePath, this.numberOfItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Card(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Image(
              image: AssetImage(imagePath),
              height: 65,
              width: 65,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(categoryName,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(
                  '$numberOfItems kinds',
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
