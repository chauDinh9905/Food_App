import 'package:flutter/material.dart';

Widget searchButton({required VoidCallback searchFunction}){
  return ElevatedButton(
      onPressed: searchFunction,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(5),),
      ),
      child: Text("Tìm kiếm", style: TextStyle(color: Colors.white),),
  );
}