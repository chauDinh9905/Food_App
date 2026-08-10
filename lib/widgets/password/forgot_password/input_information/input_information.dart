import 'package:flutter/material.dart';

Widget _informationBox(String hint, TextEditingController informationController, bool hide){
  return TextFormField(
    controller: informationController,
    decoration: InputDecoration(
      hintText: hint,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
    ),
    obscureText: hide,
  );
}

Widget inputInformation(TextEditingController usernameController, TextEditingController staffcodeController){
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _informationBox("Tên đăng nhập", usernameController, false),
        _informationBox("Mã nhân viên", staffcodeController, false),
      ],
    ),
  );
}