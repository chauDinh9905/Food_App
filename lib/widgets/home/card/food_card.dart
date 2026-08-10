import 'package:flutter/material.dart';

import '../information/food_information.dart';
import '../buttons/informationButton.dart';

Widget _foodImage(String foodName){
  foodName = "assets/images/$foodName";
  return Image.asset(foodName);
}

Widget foodCard(String fileImage, String foodName, String foodPrice, DateTime dt, {required VoidCallback function}){
  return Container(
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),

      border: Border.all(
        color: Colors.grey,
        width: 1.5,
      ),

      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 8,
          spreadRadius: 1,
          offset: const Offset(2, 3),
        ),
      ],
    ),
    child: Row(
      children: [
        Expanded(flex: 2, child: _foodImage(fileImage),),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                foodInformation(foodName, foodPrice, dt),
                informationButton(function: function),
              ],
            ),
        ),
      ],
    ),
  );
}