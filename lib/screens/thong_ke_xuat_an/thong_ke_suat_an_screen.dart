import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects_for_mobile/widgets/thong_ke_xuat_an/date/date.dart';
import 'package:projects_for_mobile/widgets/thong_ke_xuat_an/header/thong_ke_suat_an_header.dart';
import 'package:projects_for_mobile/widgets/thong_ke_xuat_an/information/table.dart';

import '../../blocs/thong_ke_suat_an/thong_ke_suat_an_bloc.dart';
import '../../blocs/thong_ke_suat_an/thong_ke_suat_an_event.dart';
import '../../blocs/thong_ke_suat_an/thong_ke_suat_an_state.dart';
import '../../di/injection.dart';
import '../list_choice/list_choice_screen.dart';

@RoutePage()
class ThongKeSuatAnScreen extends StatefulWidget {
  const ThongKeSuatAnScreen({super.key});

  @override
  State<ThongKeSuatAnScreen> createState() => _ThongKeSuatAnScreenState();
}

class _ThongKeSuatAnScreenState extends State<ThongKeSuatAnScreen> {
  int? month;
  int? year;

  void changeMonth(int? value) {
    setState(() {
      month = value;
    });
  }

  void changeYear(int? value) {
    setState(() {
      year = value;
    });
  }

  void openListChoice() {
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

  void searchFunction(BuildContext context) {
    if (month == null && year == null) {
      context.read<ThongKeBloc>().add(
        LoadThongKe(),
      );

      return;
    }

    if (month == null || year == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Vui lòng chọn cả tháng và năm',
          ),
        ),
      );

      return;
    }

    context.read<ThongKeBloc>().add(
      LoadThongKe(
        month: month,
        year: year,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ThongKeBloc>()
        ..add(
          ThongKeStarted(),
        ),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              top: true,
              child: Column(
                children: [
                  thongKeSuatAnHeader(
                    openListChoice: openListChoice,
                  ),

                  date(
                    month,
                    year,
                    changeMonth,
                    changeYear,
                    searchFunction:()=> searchFunction(context),
                  ),

                  Expanded(
                    child: BlocBuilder<ThongKeBloc, ThongKeState>(
                      builder: (context, state) {
                        if (state is ThongKeInitial) {
                          return const Center(
                            child: Text(
                              'Đang tải thống kê...',
                            ),
                          );
                        }

                        if (state is ThongKeLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        if (state is ThongKeError) {
                          return Center(
                            child: Text(state.message),
                          );
                        }

                        if (state is ThongKeLoaded) {
                          return foodTable(
                            orders: state.orders,
                            totalPrice: state.totalPrice,
                            hasMore: state.hasMore,
                            isLoadingMore: state.isLoadingMore,
                            onLoadMore: () {
                              context.read<ThongKeBloc>().add(
                                LoadMoreThongKe(),
                              );
                            },
                          );
                        }

                        return const SizedBox();
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}