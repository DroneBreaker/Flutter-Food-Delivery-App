import 'package:flutter/material.dart';

class Food {
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  Food(
      {this.id,
      this.name,
      this.imagePath,
      this.category,
      this.price,
      this.discount,
      this.ratings});
}

final foods = [
  Food(
    id: '1',
    name: 'Breakfast Cake',
    imagePath: 'assets/images/breakfast_cake.jpg',
    category: '1',
    price: 22.0,
    discount: 33.5,
    ratings: 99,
  ),
  Food(
    id: '1',
    name: 'French Fries with Meat Burger',
    imagePath: 'assets/images/lunch.jpg',
    category: '2',
    price: 15.0,
    discount: 24.5,
    ratings: 90,
  ),
];
