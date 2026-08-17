import 'package:flutter/material.dart';

Widget _foodName(String label){
  return Container(
    child: Text(label, style: TextStyle(fontWeight: FontWeight.bold),),
  );
}

Widget _foodPrice(String label){
  label = "Giá: $label";
  return Container(
     child: Text(label),
  );
}

Widget _date(DateTime dt) {
  final localDate = dt.toLocal();

  final date =
      "${localDate.day.toString().padLeft(2, '0')}/"
      "${localDate.month.toString().padLeft(2, '0')}/"
      "${localDate.year}";

  final label = "Ngày: $date";

  return Container(
    child: Text(label),
  );
}

Widget foodInformation(String foodName, String foodPrice, DateTime dt,){
  return Container(
    child: Column(
     children: [
       _foodName(foodName),
       _foodPrice(foodPrice),
       _date(dt),
     ],
    ),
  );
}