import 'package:flutter/material.dart';
import 'package:projects_for_mobile/constants/color/app_bar_color.dart';
import 'package:projects_for_mobile/constants/images/app_assets.dart';

Widget _informationScreen(){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(AppAssets.lichSuDatMon),
        Text("Lịch sử đặt món", style: TextStyle(fontWeight: FontWeight.bold, color: AppBarColor.appBarColor),)
      ],
    ),
  );
}

Widget _bound(){
  return Container(
    width: double.infinity,
    height: 1,
    color: Colors.black,
  );
}

Widget lichSuDatMonHeader(){
  return Container(
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _informationScreen(),
        _bound(),
      ],
    ),
  );
}