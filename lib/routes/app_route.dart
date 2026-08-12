import 'package:auto_route/auto_route.dart';
import 'package:projects_for_mobile/screens/login/login_screen.dart';
import 'package:projects_for_mobile/screens/signup/signup_screen.dart';
import 'package:projects_for_mobile/screens/home/home_screen.dart';

import '../screens/lich_su_dat_mon/history_screen.dart';
import '../screens/password/change_password/change_password_screen.dart';
import '../screens/password/change_password_successful/change_password_success_screen.dart';
import '../screens/password/forgot_password/forgot_password_screen.dart';
import '../screens/thong_ke_xuat_an/thong_ke_suat_an_screen.dart';
part 'app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [

    AutoRoute(
      page: LoginRoute.page,
      initial: true,
    ),

    AutoRoute(
      page: SignupRoute.page,
    ),

    AutoRoute(
      page: HomeRoute.page,
    ),

    AutoRoute(
      page: HistoryRoute.page,
    ),

    AutoRoute(
      page: ThongKeSuatAnRoute.page,
    ),

    AutoRoute(
      page: ChangePasswordSuccessRoute.page,
    ),

    AutoRoute(
      page: ForgotPasswordRoute.page,
    ),

    AutoRoute(
      page: ChangePasswordRoute.page,
    ),
  ];
}