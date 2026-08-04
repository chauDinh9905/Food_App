import 'package:flutter/material.dart';

Widget _informationBox(String hint){
  return TextFormField(
    decoration: InputDecoration(
      hintText: hint,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

Widget informationSignup(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _informationBox('Tên đầy đủ'),
      _informationBox('Mã nhân viên'),
      _informationBox('Tên tài khoản'),
      _informationBox('Mật khẩu'),
    ],
  );
}