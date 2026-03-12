import 'package:flutter/material.dart';
import 'package:recast_app/models/food_model.dart';

class FoodProvider extends ChangeNotifier {
  List<Food> foods = [
    Food(
      name: "Tenderloin Steak with Grilled Vegetables",
      image: "assets/images/Rectangle 101.png",
      price: "49.75",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      trending: true,
    ),
    Food(
      name: "25 Piece Sushi Boat with Three SIdes",
      image: "assets/images/Rectangle 76.png",
      price: "66.54",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
    Food(
      name: "Shared Meal and Drinks",
      image: "assets/images/Rectangle 82.png",
      price: "30",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
    Food(
      name: "25 Piece Sushi Boat with Three SIdes",
      image: "assets/images/Rectangle 89.png",
      price: "40",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
  ];
}
