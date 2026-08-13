// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:projects_for_mobile/blocs/home/home_bloc.dart' as _i346;
import 'package:projects_for_mobile/blocs/lich_su_dat_mon/lich_su_dat_mon_bloc.dart'
    as _i306;
import 'package:projects_for_mobile/blocs/login/login_bloc.dart' as _i834;
import 'package:projects_for_mobile/blocs/password/change_password/change_password_bloc.dart'
    as _i4;
import 'package:projects_for_mobile/blocs/password/change_password_successful/change_password_successful_bloc.dart'
    as _i189;
import 'package:projects_for_mobile/blocs/password/forgot_password/forgot_password_bloc.dart'
    as _i691;
import 'package:projects_for_mobile/blocs/signup/signup_bloc.dart' as _i27;
import 'package:projects_for_mobile/blocs/thong_ke_suat_an/thong_ke_suat_an_bloc.dart'
    as _i148;
import 'package:projects_for_mobile/data/data_sources/auth_data_source.dart'
    as _i703;
import 'package:projects_for_mobile/data/data_sources/register_data_source.dart'
    as _i1048;
import 'package:projects_for_mobile/domain/repositories/food_repository.dart'
    as _i19;
import 'package:projects_for_mobile/domain/repositories/user_repository.dart'
    as _i999;
import 'package:projects_for_mobile/domain/use_cases/get_food_items_on_this_week_use_case.dart'
    as _i280;
import 'package:projects_for_mobile/domain/use_cases/login_user.dart' as _i561;
import 'package:projects_for_mobile/domain/use_cases/register_user.dart'
    as _i1040;
import 'package:projects_for_mobile/domain/use_cases/reset_password.dart'
    as _i274;
import 'package:projects_for_mobile/domain/use_cases/verify_forgot_password.dart'
    as _i489;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i346.HomeBloc>(() => _i346.HomeBloc());
    gh.factory<_i306.LichSuBloc>(() => _i306.LichSuBloc());
    gh.factory<_i834.LoginBloc>(() => _i834.LoginBloc());
    gh.factory<_i4.ChangePasswordBloc>(() => _i4.ChangePasswordBloc());
    gh.factory<_i189.ChangePasswordSuccessfulBloc>(
      () => _i189.ChangePasswordSuccessfulBloc(),
    );
    gh.factory<_i691.ForgotPasswordBloc>(() => _i691.ForgotPasswordBloc());
    gh.factory<_i27.SignupBloc>(() => _i27.SignupBloc());
    gh.factory<_i148.ThongKeBloc>(() => _i148.ThongKeBloc());
    gh.factory<_i703.AuthDataSource>(
      () => _i703.AuthDataSource(gh<_i361.Dio>()),
    );
    gh.factory<_i1048.RegisterDataSource>(
      () => _i1048.RegisterDataSource(gh<_i361.Dio>()),
    );
    gh.factory<_i280.GetFoodItemsOnThisWeekUseCase>(
      () => _i280.GetFoodItemsOnThisWeekUseCase(gh<_i19.FoodRepository>()),
    );
    gh.factory<_i561.LoginUserUseCase>(
      () => _i561.LoginUserUseCase(gh<_i999.UserRepository>()),
    );
    gh.factory<_i1040.RegisterUseCase>(
      () => _i1040.RegisterUseCase(gh<_i999.UserRepository>()),
    );
    gh.factory<_i274.ResetPasswordUseCase>(
      () => _i274.ResetPasswordUseCase(gh<_i999.UserRepository>()),
    );
    gh.factory<_i489.VerifyForgotPasswordUseCase>(
      () => _i489.VerifyForgotPasswordUseCase(gh<_i999.UserRepository>()),
    );
    return this;
  }
}
