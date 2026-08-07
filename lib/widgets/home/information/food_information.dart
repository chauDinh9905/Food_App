import 'package:flutter/material.dart';
import 'package:projects_for_mobile/constants/images/app_assets.dart';

Widget _foodName(String label){
  return Container(
    child: Text(label, style: TextStyle(fontWeight: FontWeight.bold),),
  );
}

Widget _foodPrice(String label){
  label = "Giá: " + label;
  return Container(
     child: Text(label),
  );
}

Widget _date(DateTime dt){
  String date =
      "${dt.day.toString().padLeft(2, '0')}/"
      "${dt.month.toString().padLeft(2, '0')}/"
      "${dt.year}";
  String label = "Ngày: " + date;
  return Container(
     child: Text(label),
  );
}

Widget foodInformation(String foodName, String foodPrice, DateTime dt,){
  return Container(
    child: Row(
     children: [
       _foodName(foodName),
       _foodPrice(foodPrice),
       _date(dt),
     ],
    ),
  );
}