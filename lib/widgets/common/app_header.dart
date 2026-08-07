import 'package:flutter/material.dart';
import 'package:projects_for_mobile/constants/color/app_bar_color.dart';
import 'package:projects_for_mobile/constants/images/app_assets.dart';

Widget informationApp(){
  return Container(
    padding: const EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 10,
    ),
    color: AppBarColor.appBarColor,
    child: Row(
      children: [
        Image.asset(AppAssets.logoApp),
        Text("Đặt cơm", style: TextStyle(fontWeight: FontWeight.bold),),
      ],
    ),
  );
}

Widget _listChoiceButton({required VoidCallback function}){
  return Container(
    color: AppBarColor.appBarColor,
    child: IconButton(
      onPressed: function,
      icon: Image.asset(AppAssets.listChoice),
    ),
  );
}

Widget appHeader({required VoidCallback function}){
  return Container(
    width: double.infinity,
    color: AppBarColor.appBarColor,
    child: Row(
      children: [
        informationApp(),
        Spacer(),
        _listChoiceButton(function: function),
      ],
    ),
  );
}