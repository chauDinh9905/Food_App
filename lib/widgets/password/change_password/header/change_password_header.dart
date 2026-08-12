import 'package:flutter/material.dart';

Widget _bound(){
  return Container(
    width: double.infinity,
    height: 1,
    color: Colors.green,
  );
}

Widget _note(String? fullname, String? accountname){
  return Text.rich(
    TextSpan(
      text: "Xin chào",
      children: [
        TextSpan(
          text: fullname,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: ', tạo mật khẩu mới cho tài khoản ',
        ),
        TextSpan(
          text: accountname,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

Widget _label(){
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Đặt lại mật khẩu", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
        _bound(),
      ],
    ),
  );
}

Widget changePasswordHeader(String? fullname, String? accountname){
  return Container(
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         _label(),
         _note(fullname, accountname),
      ],
    ),
  );
}