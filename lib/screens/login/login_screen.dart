import 'package:flutter/material.dart';
import 'package:projects_for_mobile/constants/images/app_assets.dart';
import 'package:projects_for_mobile/widgets/login/card/login_card.dart';
import 'package:auto_route/auto_route.dart';
import '../../blocs/login/login_bloc.dart';
import '../../di/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
@RoutePage()
class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState()=>_LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
  @override
  Widget build(BuildContext context){
    return BlocProvider<LoginBloc>(
      create: (context) {
            return getIt<LoginBloc>();
      },
      child: Scaffold(
          body: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  AppAssets.loginBackground,
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: LoginCard(),
              ),
            ],
          )
      ),
    );
  }
}