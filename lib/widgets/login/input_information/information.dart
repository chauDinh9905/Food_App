import 'package:flutter/material.dart';

Widget _infomationBox (String hint, TextEditingController controller, bool hide){
  return TextFormField(
    controller: controller,
    obscureText: hide,
    decoration:  InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
          width: 6,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8),
      ),
     ),
      hintText: hint,
    ),
  );
}

Widget informationLogin(TextEditingController usernameController, TextEditingController passwordController){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _infomationBox( 'Tên đăng nhập', usernameController, false,),
      _infomationBox('Mật khẩu', passwordController, true),
    ],
  );
}