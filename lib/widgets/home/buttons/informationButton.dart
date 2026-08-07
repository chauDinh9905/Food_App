import 'package:flutter/material.dart';
Widget _buttonInRow(Color color, String label, VoidCallback function){
  return FilledButton(
    onPressed: function,
    style: FilledButton.styleFrom(
      shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: color,
    ),
    child: Text(label, style: TextStyle(color: Colors.white),),
  );
}
Widget _stateInRow(Color color, String label){
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), ),
    color: color,
    child: Text(label, style: TextStyle(color: Colors.white),),
  );
}
Widget informationButton({required VoidCallback function}){
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         _buttonInRow(Colors.red, "Hủy món", function),
         _stateInRow(Colors.grey, "Đã đặt"),
      ],
    ),
  );
}