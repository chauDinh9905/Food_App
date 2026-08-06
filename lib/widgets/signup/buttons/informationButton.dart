import 'package:flutter/material.dart';

Widget _informationButtonColumn(Color colorButton, String labelButton, VoidCallback onPressed){
   return Container(
     width: double.infinity,
     padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
     child: FilledButton(
       onPressed: onPressed,
       style: FilledButton.styleFrom(backgroundColor: colorButton, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
       child: Text(labelButton),
     ),
   );
}

Widget informationButton(VoidCallback onPressed){
  return Column(
     children: [
       _informationButtonColumn(Colors.blue, 'Đăng ký', onPressed)
     ],
  );
}