import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects_for_mobile/widgets/common/app_header.dart';
import 'package:projects_for_mobile/widgets/lich_su_dat_mon/header/lich_su_dat_mon_header.dart';
import 'package:projects_for_mobile/widgets/lich_su_dat_mon/table/history_table.dart';

import 'package:auto_route/auto_route.dart';

import '../../blocs/lich_su_dat_mon/lich_su_dat_mon_bloc.dart';
import '../../blocs/lich_su_dat_mon/lich_su_dat_mon_event.dart';
import '../../blocs/lich_su_dat_mon/lich_su_dat_mon_state.dart';
import '../../di/injection.dart';
import '../list_choice/list_choice_screen.dart';

@RoutePage()
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  void _openChoiceList() {
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
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LichSuBloc>()
        ..add(LichSuStarted()),
      child: Scaffold(
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              appHeader(
                function: _openChoiceList,
              ),

              lichSuDatMonHeader(),

              Expanded(
                child: BlocBuilder<LichSuBloc, LichSuState>(
                  builder: (context, state) {
                    if (state is LichSuLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (state is LichSuError) {
                      return Center(
                        child: Text(
                          state.message,
                        ),
                      );
                    }

                    if (state is LichSuLoaded) {
                      return historyTable(
                        orders: state.orders,
                        hasMore: state.hasMore,
                        isLoadingMore: state.isLoadingMore,
                        total: state.total,
                        onLoadMore: () {
                          context
                              .read<LichSuBloc>()
                              .add(LoadMoreLichSu());
                        },
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