import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/common/app_header.dart';
import 'package:projects_for_mobile/widgets/lich_su_dat_mon/header/lich_su_dat_mon_header.dart';
import 'package:projects_for_mobile/widgets/lich_su_dat_mon/table/history_table.dart';

import 'package:auto_route/auto_route.dart';

import '../list_choice/list_choice_screen.dart';

@RoutePage()
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});
  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen>{
  void _openChoiceList() {
    // Xử lý khi nhấn nút choice
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
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            appHeader(function: _openChoiceList),
            lichSuDatMonHeader(),
            Expanded(
              child: historyTable(),
            ),
          ],
        ),
      ),
    );
  }
}