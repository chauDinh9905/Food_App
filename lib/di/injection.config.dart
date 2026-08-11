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
import 'package:projects_for_mobile/blocs/signup/signup_bloc.dart' as _i27;
import 'package:projects_for_mobile/blocs/thong_ke_suat_an/thong_ke_suat_an_bloc.dart'
    as _i148;
import 'package:projects_for_mobile/data/data_mapper/account_mapper.dart'
    as _i876;
import 'package:projects_for_mobile/data/data_mapper/user_mapper.dart' as _i33;
import 'package:projects_for_mobile/data/data_sources/auth_data_source.dart'
    as _i703;
import 'package:projects_for_mobile/data/data_sources/register_data_source.dart'
    as _i1048;
import 'package:projects_for_mobile/data/repositories_impl/auth_repo_impl.dart'
    as _i164;
import 'package:projects_for_mobile/data/repositories_impl/register_repo_impl.dart'
    as _i305;
import 'package:projects_for_mobile/domain/repositories/auth_repository.dart'
    as _i721;
import 'package:projects_for_mobile/domain/repositories/register_repository.dart'
    as _i1004;
import 'package:projects_for_mobile/domain/use_cases/login_use_case.dart'
    as _i2;
import 'package:projects_for_mobile/domain/use_cases/signup_use_case.dart'
    as _i331;

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
    gh.factory<_i27.SignupBloc>(() => _i27.SignupBloc());
    gh.factory<_i148.ThongKeBloc>(() => _i148.ThongKeBloc());
    gh.factory<_i876.AccountMapper>(() => _i876.AccountMapper());
    gh.factory<_i33.UserMapper>(() => _i33.UserMapper());
    gh.factory<_i703.AuthDataSource>(
      () => _i703.AuthDataSource(gh<_i361.Dio>()),
    );
    gh.factory<_i1048.RegisterDataSource>(
      () => _i1048.RegisterDataSource(gh<_i361.Dio>()),
    );
    gh.factory<_i721.AuthRepository>(
      () => _i164.AuthRepositoryImpl(
        gh<_i703.AuthDataSource>(),
        gh<_i33.UserMapper>(),
      ),
    );
    gh.factory<_i2.LoginUseCase>(
      () => _i2.LoginUseCase(gh<_i721.AuthRepository>()),
    );
    gh.factory<_i1004.RegisterRepository>(
      () => _i305.RegisterRepositoryImpl(
        gh<_i1048.RegisterDataSource>(),
        gh<_i876.AccountMapper>(),
      ),
    );
    gh.factory<_i331.SignupUseCase>(
      () => _i331.SignupUseCase(gh<_i1004.RegisterRepository>()),
    );
    return this;
  }
}
