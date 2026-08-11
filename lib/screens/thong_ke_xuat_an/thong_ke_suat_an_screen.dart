import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/thong_ke_xuat_an/date/date.dart';
import 'package:projects_for_mobile/widgets/thong_ke_xuat_an/header/thong_ke_suat_an_header.dart';
import 'package:projects_for_mobile/widgets/thong_ke_xuat_an/information/table.dart';

import '../list_choice/list_choice_screen.dart';

@RoutePage()
class ThongKeSuatAnScreen extends StatefulWidget{
  const ThongKeSuatAnScreen({super.key});
  @override
  State<ThongKeSuatAnScreen> createState() => _ThongKeSuatAnScreenState();
}

class _ThongKeSuatAnScreenState extends State<ThongKeSuatAnScreen>{
  int month = 1;
  int year = 1999;
  void changeMonth(int? value){
    print("month is changed to $value");
  }
  void changeYear(int? value){
    print("year is changed to $value");
  }
  void openListChoice(){
    print('Open choice list');
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'ListChoice',
      pageBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          ) {
        return Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: double.infinity,
            child: const ListChoiceScreen(),
          ),
        );
      },
    );
  }
  void searchFunction(){
    print("Nút tìm kiếm được bấm");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          top: true,
          child: Column(
            children: [
               thongKeSuatAnHeader(openListChoice: openListChoice),
               date(month, year, changeMonth, changeYear, searchFunction: searchFunction),
                Expanded(
                    child: foodTable(),
                ),
            ],
          ),
      ),
    );
  }
}