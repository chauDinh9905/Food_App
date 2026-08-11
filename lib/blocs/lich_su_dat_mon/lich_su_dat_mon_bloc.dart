import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'lich_su_dat_mon_event.dart';
import 'lich_su_dat_mon_state.dart';

@Injectable()
class LichSuBloc extends Bloc<LichSuEvent, LichSuState>{
  LichSuBloc() : super(LichSuInitial()){
    on<LichSuStarted>(_onLichSuStarted);
    on<LoadLichSu>(_onLoadLichSu);
    on<SortLichSu>(_onSortLichSu);
  }
  Future<void> _onLichSuStarted(LichSuStarted event, Emitter<LichSuState> emit) async{
    print("bắt đầu load lịch sử đặt món ăn");
    emit(LichSuLoading());
  }

  Future<void> _onLoadLichSu(LoadLichSu event, Emitter<LichSuState> emit)async{
    print("Lịch sử món ăn đã load xong");
    emit(LichSuLoaded());
  }

  Future<void> _onSortLichSu(SortLichSu event, Emitter<LichSuState> emit)async{

  }
}