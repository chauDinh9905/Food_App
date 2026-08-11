import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/thong_ke_xuat_an/information/information_table.dart';

final foods = [
  ["1", "Cơm gà", "25.000 VNĐ", "4/8/2025"],
  ["2", "Miến xào", "25.000 VNĐ", "3/8/2025"],
  ["3", "Cơm trộn", "25.000 VNĐ", "2/8/2025"],
  ["4", "Mỳ xào", "25.000 VNĐ", "1/8/2025"],
  ["4", "Mỳ xào", "25.000 VNĐ", "1/8/2025"],
  ["4", "Mỳ xào", "25.000 VNĐ", "1/8/2025"],
  ["4", "Mỳ xào", "25.000 VNĐ", "1/8/2025"],
  ["4", "Mỳ xào", "25.000 VNĐ", "1/8/2025"],
  ["4", "Mỳ xào", "25.000 VNĐ", "1/8/2025"],
];
Widget foodTable(){
   return Container(
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(10),
     ),
     child: ClipRRect(
       borderRadius: BorderRadiusGeometry.circular(10),
       child: Column(
         children: [
           tableHeader(),
           Expanded(
             child: ListView.builder(
               itemCount: foods.length,
                 itemBuilder: (context, index){
                   return tableRow(
                       foods[index][0],
                       foods[index][1],
                       foods[index][2],
                       foods[index][3],
                   );
                 }
             ),
           ),
         ],
       ),
     ),
   );
}