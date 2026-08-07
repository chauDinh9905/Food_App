import 'package:flutter/material.dart';
import 'package:projects_for_mobile/constants/images/app_assets.dart';
import 'package:projects_for_mobile/widgets/common/app_header.dart';

Widget _buttonInColumn(String image, String label, {required VoidCallback function}){
   return ListTile(
     leading: Image.asset(image),
     title: Text(label),
     tileColor: Colors.white,
     onTap: function,
   );
}

Widget _hideButton({required VoidCallback function}){
  return Container(
    child: Row(
      children: [
        Spacer(),
        IconButton(
          onPressed: function,
          icon: Icon(Icons.close),
        ),
      ],
    ),
  );
}

Widget informationButton({required VoidCallback monAnTrongTuan, required VoidCallback lichSuDatMon, required VoidCallback thongKeSuatAn, required VoidCallback dangXuat, required VoidCallback hide}){
  return Container(
    child: Column(
      children: [
        _hideButton(function: hide),
        informationApp(),
        _buttonInColumn(AppAssets.chuong, "Món ăn trong tuần", function: monAnTrongTuan),
        _buttonInColumn(AppAssets.lichSuDatMon, "Lịch sử đặt món", function: lichSuDatMon),
        _buttonInColumn(AppAssets.thongKeSuatAn, "Thống kê suất ăn", function: thongKeSuatAn),
        _buttonInColumn(AppAssets.dangXuat, "Đăng xuất", function: dangXuat),
      ],
    ),
  );
}