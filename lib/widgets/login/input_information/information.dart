import 'package:flutter/material.dart';

Widget _infomationBox (String label, String hint){
  return TextFormField(
    decoration:  InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4),
      ),
     ),
      hintText: hint,
      labelText: label,
    ),
  );
}

Widget informationLogin(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _infomationBox('', 'Tên đăng nhập'),
      _infomationBox('','Mật khẩu'),
    ],
  );
}