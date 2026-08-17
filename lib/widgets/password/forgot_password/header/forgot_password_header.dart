import 'package:flutter/material.dart';

Widget _bounder(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Container(
      height: 1,
      width: double.infinity,
      color: Colors.green,
    ),
  );
}

Widget forgotPasswordHeader(){
   return Container(
     padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
     color: Colors.white,
     child: Column(
       children: [
         Text("Quên mật khẩu", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 24),),
         _bounder(),
       ],
     ),
   );
}