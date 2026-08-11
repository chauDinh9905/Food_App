import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'thong_ke_suat_an_event.dart';
import "thong_ke_suat_an_state.dart";

@Injectable()
class ThongKeBloc extends Bloc<ThongKeEvent, ThongKeState>{
  ThongKeBloc() : super(ThongKeInitial()){
    on<ThongKeStarted>(_onThongKeStarted);
    on<LoadThongKe>(_onLoadThongKe);
    on<SortThongKe>(_onSortThongKe);
  }

  Future<void> _onThongKeStarted(ThongKeStarted event, Emitter<ThongKeState> emit) async{
     print("Bắt đầu lad thống kê suất ăn");
     emit(ThongKeLoading());
  }

  Future<void> _onLoadThongKe(LoadThongKe event, Emitter<ThongKeState> emit) async{
    print("Thống kê suất ăn đã load xong");
    emit(ThongKeLoaded());
  }

  Future<void> _onSortThongKe(SortThongKe event, Emitter<ThongKeState> emit) async{

  }
}