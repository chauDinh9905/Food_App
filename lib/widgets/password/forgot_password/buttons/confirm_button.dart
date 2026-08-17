
import 'package:flutter/material.dart';

Widget confirmButton({required VoidCallback confirm}){
  return Container(
    padding: const EdgeInsets.all(16),
    width: double.infinity,
    child: ElevatedButton(
        onPressed: confirm,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
        ),
        child: Text("Xác nhận", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
    ),
  );
}