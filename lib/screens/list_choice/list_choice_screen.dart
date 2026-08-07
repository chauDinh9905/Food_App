import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/list_choice/buttons/informationButton.dart';

class ListChoiceScreen extends StatefulWidget {
  const ListChoiceScreen({super.key});
  @override
  State<ListChoiceScreen> createState() => _ListChoiceScreenState();
}

class _ListChoiceScreenState extends State<ListChoiceScreen>{
  void monAnTrongTuan(){
    print("Nút món ăn trong tuần ở list choice được bấm");
  }
  void lichSuDatMon(){
    print("Nút lịch sử đặt món ở list choice được bấm");
  }
  void thongKeSuatAn(){
    print("Nút thống kê suất ăn ở list choice được bấm");
  }
  void dangXuat(){
    print("Nút đăng xuất ở list choice được bấm");
  }
  void hide(){
    print("Nút đóng ở list choice được bấm");
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Column(
          children: [
             informationButton(monAnTrongTuan: monAnTrongTuan, lichSuDatMon: lichSuDatMon, thongKeSuatAn: thongKeSuatAn, dangXuat: dangXuat, hide: hide),
          ],
        ),
      ),
    );
  }
}