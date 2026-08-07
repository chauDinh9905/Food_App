import 'package:flutter/material.dart';

import '../information/food_information.dart';
import '../buttons/informationButton.dart';

Widget _foodImage(String foodName){
  foodName = "assets/images$foodName";
  return Image.asset(foodName);
}

Widget foodCard(String fileImage, String foodName, String foodPrice, DateTime dt, {required VoidCallback function}){
  return Container(
    child: Column(
      children: [
        _foodImage(fileImage),
        Column(
          children: [
            foodInformation(foodName, foodPrice, dt),
            informationButton(function: function),
          ],
        ),
      ],
    ),
  );
}