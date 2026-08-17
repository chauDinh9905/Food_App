import 'package:flutter/material.dart';
import 'package:projects_for_mobile/constants/images/app_assets.dart';

Widget _userName(String? name){
  String label = "Xin chào, $name";
  return Text(label);
}

Widget _title(){
  return Container(
    width: double.infinity,
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(AppAssets.chuong),
        Text("Món ăn trong tuần này", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),)
      ],
    ),
  );
}

Widget _bound(){
  return Container(
    width: double.infinity,
    height: 1,
    color: Colors.black,
  );
}

Widget _notice(){
  return Text("Lưu ý: đặt cơm chậm nhất trước 10:00 AM", style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),);
}

Widget homeHeader(String? name){
  return Container(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         _userName(name),
         _title(),
         _bound(),
         _notice(),
       ],
     ),
  );
}