import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects_for_mobile/blocs/password/change_password_successful/change_password_successful_bloc.dart';
import 'package:projects_for_mobile/blocs/password/change_password_successful/change_password_successful_state.dart';
import 'package:projects_for_mobile/constants/images/app_assets.dart';
import 'package:projects_for_mobile/routes/app_route.dart';
import 'package:projects_for_mobile/widgets/password/change_password_successfully/card/change_password_successfully_card.dart';
import 'package:auto_route/auto_route.dart';

import '../../../di/injection.dart';

@RoutePage()
class ChangePasswordSuccessScreen extends StatefulWidget {
  const ChangePasswordSuccessScreen({super.key});
  @override
  State<ChangePasswordSuccessScreen> createState() => _ChangePasswordSuccessScreenState();
}

class _ChangePasswordSuccessScreenState extends State<ChangePasswordSuccessScreen>{
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChangePasswordSuccessfulBloc>(
      create: (context){
        return getIt<ChangePasswordSuccessfulBloc>();
      },
      child: BlocListener<ChangePasswordSuccessfulBloc, ChangePasswordSuccessfulState>(
        listener: (context, state){
          if(state is ChangePasswordSuccessfulSuccess){
            context.router.replace(LoginRoute());
          }
        },
      ),
    );
  }
}