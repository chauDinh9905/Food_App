import 'package:flutter/material.dart';

Widget backToLoginButton({required VoidCallback backToLogin}){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
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