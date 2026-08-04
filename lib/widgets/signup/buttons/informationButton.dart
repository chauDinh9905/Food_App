import 'package:flutter/material.dart';

Widget _informationButtonColumn(Color colorButton, String labelButton, VoidCallback onPressed){
   return FilledButton(
       onPressed: onPressed,
       style: FilledButton.styleFrom(backgroundColor: colorButton),
       child: Text(labelButton),
   );
}

Widget informationButton(VoidCallback onPressed){
  return Column(
     children: [
       _informationButtonColumn(Colors.blue, 'Đăng ký', onPressed)
     ],
  );
}