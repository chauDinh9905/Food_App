import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/common/app_header.dart';

import '../../../constants/color/app_bar_color.dart';
import '../../../constants/images/app_assets.dart';

Widget _bound(){
  return Container(
    width: double.infinity,
    height: 1,
    color: Colors.black,
  );
}

Widget _label(){
  return SizedBox(
    height: 48,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(AppAssets.thongKeSuatAn),
        SizedBox(width: 6,),
        Text("Thống kê suất ăn", style: TextStyle(fontWeight: FontWeight.bold, color: AppBarColor.appBarColor),)
      ],
    ), 
  );
}

Widget thongKeSuatAnHeader({required VoidCallback openListChoice}){
  return Column(
    children: [
      appHeader(function: openListChoice),
      _label(),
      _bound(),
    ],
  );
}