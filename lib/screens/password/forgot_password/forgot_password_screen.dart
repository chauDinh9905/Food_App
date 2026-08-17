import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects_for_mobile/blocs/password/forgot_password/forgot_password_bloc.dart';
import 'package:projects_for_mobile/blocs/password/forgot_password/forgot_password_state.dart';
import 'package:projects_for_mobile/constants/images/app_assets.dart';
import 'package:projects_for_mobile/routes/app_route.dart';

import '../../../di/injection.dart';
import '../../../widgets/password/common/back_button.dart';
import '../../../widgets/password/forgot_password/card/forgot_password_card.dart';

@RoutePage()
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  void backToLogin(){
    context.router.pop();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ForgotPasswordBloc>(
      create: (context){
        return getIt<ForgotPasswordBloc>();
      },
      child: BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
        listener: (context, state){
          if(state is ForgotPasswordSuccess){
            context.router.push(
              ChangePasswordRoute(
                username: state.username,
                fullname: state.fullname,
                employeeCode: state.employeeCode,
              ),
            );
          }
        },
        child: Scaffold(
          body: Stack(
            children: [
              Positioned.fill(
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10,
                  ),
                  child: Image.asset(
                    AppAssets.loginBackground,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: backButton(
                  backToLogin: backToLogin,
                ),
              ),
              Center(
                child: ForgotPasswordCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
  @override
  void dispose(){
    super.dispose();
  }
}