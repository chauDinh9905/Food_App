import 'package:flutter/material.dart';

Widget _bound(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Container(
      width: double.infinity,
      height: 1,
      color: Colors.green,
    ),
  );
}

Widget _note(String? fullname, String? accountname){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 35),
    child: Center(
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          text: "Xin chào ",
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
      ),
    ),
  );
}

Widget _label(){
  return Container(
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadiusGeometry.circular(35),
      color: Colors.white,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Đặt lại mật khẩu", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 24),),
        _bound(),
      ],
    ),
  );
}

Widget changePasswordHeader(String? fullname, String? accountname){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadiusGeometry.circular(35),
      color: Colors.white,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         _label(),
         _note(fullname, accountname),
      ],
    ),
  );
}