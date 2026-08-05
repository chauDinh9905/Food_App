import 'package:auto_route/auto_route.dart';
import 'package:projects_for_mobile/screens/login/login_screen.dart';
import 'package:projects_for_mobile/screens/signup/signup_screen.dart';

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
  ];
}