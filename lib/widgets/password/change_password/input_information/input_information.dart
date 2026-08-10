import 'package:flutter/material.dart';

Widget _informationBox(String hint, TextEditingController informationController, bool hide){
    return TextFormField(
      controller: informationController,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),),
      ),
      obscureText: hide,
    );
}

Widget _note(){
  return Text("Tối thiểu 6 ký tự", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),);
}

Widget inputInformation(TextEditingController newPasswordController, TextEditingController confirmPasswordController){
  return Container(
    color: Colors.white,
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _informationBox("Mật khẩu mới", newPasswordController, true),
        _informationBox("Xác nhận mật khẩu mới", confirmPasswordController, true),
        _note(),
      ],
    ),
  );
}