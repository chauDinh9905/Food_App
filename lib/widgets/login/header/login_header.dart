import 'package:flutter/material.dart';

Widget loginHeader(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text('Xin chào !', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),),
      Text('Đăng nhập để tiếp tục', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300, color: Colors.black),),
    ],
  );
}