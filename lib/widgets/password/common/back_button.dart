import 'package:flutter/material.dart';

Widget backButton({required VoidCallback backToLogin}){
  return ElevatedButton.icon(
      onPressed: backToLogin,
      icon: Icon(Icons.keyboard_arrow_left),
      label: Text("Quay lại"),
      style: ElevatedButton.styleFrom(
        backgroundColor:  Colors.transparent,
        foregroundColor: Colors.white,
      ),
  );
}