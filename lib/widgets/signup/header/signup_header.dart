import 'package:flutter/material.dart';

Widget signupHeader(){
  return Column(
    children: [
    Text('Tạo tài khoản mới', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.green,),),
      bound(),
    ],
  );
}
Widget bound(){
  return Container(
    padding: const EdgeInsets.all(10),
    child: Container(
      color: Colors.green,
      height: 1,
    ),
  );
}