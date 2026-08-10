import 'package:flutter/material.dart';

Widget changePasswordButton({required VoidCallback changePassword}){
  return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: changePassword,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(5),),
          ),
          child: Text("Đặt lại mật khẩu", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
      ),
  );
}