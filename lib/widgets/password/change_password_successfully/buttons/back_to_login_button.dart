import 'package:flutter/material.dart';

Widget backToLoginButton({required VoidCallback backToLogin}){
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: backToLogin,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text("Đăng nhập ngay", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
    ),
  );
}