import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:projects_for_mobile/blocs/password/change_password_successful/change_password_successful_event.dart';
import 'package:projects_for_mobile/blocs/password/change_password_successful/change_password_successful_state.dart';

@Injectable()
class ChangePasswordSuccessfulBloc extends Bloc<ChangePasswordSuccessfulEvent, ChangePasswordSuccessfulState> {
  ChangePasswordSuccessfulBloc():super(ChangePasswordSuccessfulInitial()){
    on<BackToLogin>(_onBackToLogin);
  }

  Future<void> _onBackToLogin(ChangePasswordSuccessfulEvent event, Emitter<ChangePasswordSuccessfulState> emit)async{
     emit(ChangePasswordSuccessfulLoading());
     emit(ChangePasswordSuccessfulSuccess());
  }
}