import 'package:flutter/material.dart';

Widget _logoCheck(){
   return Container(
     decoration: BoxDecoration(
       color: Colors.lightGreenAccent,
       shape: BoxShape.circle,
     ),
     child: Icon(Icons.check, color: Colors.green,),
   );
}

Widget _label(){
  return Text("Đổi mật khẩu thành công", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 28),);
}

Widget _note(){
  return Text.rich(
    TextSpan(
      text: "Mật khẩu của bạn đã được cập nhật. Vui lòng đăng nhập lại bằng ",
      children: [
        TextSpan(
          text: "mật khẩu mới",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget information(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _logoCheck(),
      _label(),
      _note(),
    ],
  );
}