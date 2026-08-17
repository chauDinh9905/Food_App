import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/home/card/food_card.dart';
import 'package:projects_for_mobile/widgets/home/header/home_header.dart';
import 'package:auto_route/auto_route.dart';
import '../../blocs/home/home_state.dart';
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

  Future<bool> _showOrderConfirmDialog(
      BuildContext context,
      String foodName,
      ) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Xác nhận đặt món"),
          content: Text(
            "Bạn có chắc chắn muốn đặt món \"$foodName\" không?",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text("Hủy"),
            ),
            FilledButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text("Xác nhận"),
            ),
          ],
        );
      },
    );

    return result ?? false;
  }
  Future<bool> _showCancelConfirmDialog(
      BuildContext context,
      String foodName,
      ) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Xác nhận hủy món"),
          content: Text(
            "Bạn có chắc chắn muốn hủy món \"$foodName\" không?",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text("Không"),
            ),
            FilledButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text("Xác nhận"),
            ),
          ],
        );
      },
    );

    return result ?? false;
  }
  bool _beforeDeadline(DateTime availableDate) {
    final localDate = availableDate.toLocal();

    final deadline = DateTime(
      localDate.year,
      localDate.month,
      localDate.day,
      10,
      0,
    );

    return DateTime.now().isBefore(deadline);
  }
  @override
  Widget build(BuildContext context){
    return BlocProvider<HomeBloc>(
      create: (context) => getIt<HomeBloc>()..add(HomeStarted()),
      child: Scaffold(
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              appHeader(function: _openChoiceList),
              Expanded(
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state is HomeLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (state is HomeError) {
                      return Center(
                        child: Text(state.message),
                      );
                    }

                    if (state is HomeLoaded) {
                      return Column(
                        children: [
                          homeHeader(state.user.fullname),

                          Expanded(
                            child: ListView.builder(
                              itemCount: state.foodItems.length,
                              itemBuilder: (context, index) {
                                final foodItem = state.foodItems[index];

                                final beforeDeadline =
                                _beforeDeadline(foodItem.availableDate);

                                return foodCard(
                                  foodItem.imageUrl ?? '',
                                  foodItem.name,
                                  foodItem.price.toString(),
                                  foodItem.availableDate,
                                  isOrdered: foodItem.isOrdered,
                                  canOrder:
                                  !foodItem.isOrdered && beforeDeadline,
                                  canCancel:
                                  foodItem.isOrdered && beforeDeadline,
                                  onOrder: () async {
                                    final confirmed =
                                    await _showOrderConfirmDialog(
                                      context,
                                      foodItem.name,
                                    );

                                    if (!confirmed || !context.mounted) {
                                      return;
                                    }

                                    context.read<HomeBloc>().add(
                                      OrderFoodRequested(
                                        foodId: foodItem.id,
                                      ),
                                    );
                                  },
                                  onCancel: () async {
                                    final confirmed =
                                    await _showCancelConfirmDialog(
                                      context,
                                      foodItem.name,
                                    );

                                    if (!confirmed || !context.mounted) {
                                      return;
                                    }

                                    context.read<HomeBloc>().add(
                                      CancelFoodRequested(
                                        foodId: foodItem.id,
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    }

                    return const SizedBox.shrink();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}