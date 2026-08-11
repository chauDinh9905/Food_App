import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/home/card/food_card.dart';
import 'package:projects_for_mobile/widgets/home/header/home_header.dart';
import 'package:auto_route/auto_route.dart';
import '../../widgets/common/app_header.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/home/home_bloc.dart';
import '../../blocs/home/home_event.dart';
import '../../di/injection.dart';
import '../list_choice/list_choice_screen.dart';

@RoutePage()
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
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
  void _datCom(){
    print('Nút đặt cơm được bấm');
  }
  @override
  Widget build(BuildContext context){
    String name = "Đinh Thị Diệu Châu";
    DateTime now = DateTime.now();
    return BlocProvider<HomeBloc>(
      create: (context) => getIt<HomeBloc>()..add(HomeStarted()),
      child: Scaffold(
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              appHeader(function: _openChoiceList),
              homeHeader(name),
              Expanded(
                child: ListView(
                  children: [
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 1", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 2", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 3", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 4", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 5", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 6", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 7", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 8", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 9", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 10", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 11", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 12", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 13", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 14", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 15", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 16", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 17", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 18", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 19", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 20", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 21", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 22", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 23", "25.000", now, function: _datCom),
                    foodCard("ca_nuong_rieng.jpeg", "Cá nướng riềng 24", "25.000", now, function: _datCom),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}