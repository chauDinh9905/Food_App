import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/list_choice/buttons/informationButton.dart';
import 'package:projects_for_mobile/routes/app_route.dart';

import '../../services/notification/local_notification_service.dart';

@RoutePage()
class ListChoiceScreen extends StatefulWidget {
  const ListChoiceScreen({super.key});
  @override
  State<ListChoiceScreen> createState() => _ListChoiceScreenState();
}

class _ListChoiceScreenState extends State<ListChoiceScreen>{
  void monAnTrongTuan(){
    print("Nút món ăn trong tuần ở list choice được bấm");
    context.router.push(
      HomeRoute(),
    );
  }
  void lichSuDatMon(){
    print("Nút lịch sử đặt món ở list choice được bấm");
    context.router.push(
     HistoryRoute(),
    );
  }
  void thongKeSuatAn(){
    print("Nút thống kê suất ăn ở list choice được bấm");
    context.router.push(
      ThongKeSuatAnRoute(),
    );
  }
  Future<void> dangXuat()async{
    print("Nút đăng xuất ở list choice được bấm");
    await LocalNotificationService().cancelFoodReminder();
    context.router.push(
      LoginRoute(),
    );
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