import 'package:flutter/material.dart';

Widget _informationBox(String hint, TextEditingController controller, bool hide){
  return TextFormField(
    decoration: InputDecoration(
      hintText: hint,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    controller: controller,
    obscureText: hide,
  );
}

Widget informationSignup(TextEditingController fullnameController, TextEditingController staffcodeController, TextEditingController accountnameController, TextEditingController passwordController){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _informationBox('Tên đầy đủ', fullnameController, false),
      _informationBox('Mã nhân viên', staffcodeController, false),
      _informationBox('Tên tài khoản', accountnameController, false),
      _informationBox('Mật khẩu', passwordController, true),
    ],
  );
}