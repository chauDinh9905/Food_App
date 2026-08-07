import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/common/app_header.dart';
import 'package:projects_for_mobile/widgets/lich_su_dat_mon/header/lich_su_dat_mon_header.dart';
import 'package:projects_for_mobile/widgets/lich_su_dat_mon/table/history_table.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});
  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen>{
  void _openChoiceList() {
    // Xử lý khi nhấn nút choice
    print('Open choice list');
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            appHeader(function: _openChoiceList),
            lichSuDatMonHeader(),
            historyTable(),
          ],
        ),
      ),
    );
  }
}