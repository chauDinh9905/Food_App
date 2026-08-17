import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects_for_mobile/blocs/password/change_password/change_password_bloc.dart';
import 'package:projects_for_mobile/blocs/password/change_password/change_password_state.dart';
import 'package:projects_for_mobile/constants/images/app_assets.dart';
import 'package:projects_for_mobile/routes/app_route.dart';
import 'package:projects_for_mobile/widgets/password/change_password/card/change_password_card.dart';
import 'package:auto_route/auto_route.dart';

import '../../../di/injection.dart';
import '../../../widgets/password/common/back_button.dart';

@RoutePage()
class ChangePasswordScreen extends StatefulWidget {
  final String username;
  final String fullname;
  const ChangePasswordScreen({super.key, required this.username, required this.fullname});
  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen>{
  void backToLogin(){
    context.router.pop();
  }
  @override
  Widget build(BuildContext context) {
     return BlocProvider<ChangePasswordBloc>(
       create: (context){
         return getIt<ChangePasswordBloc>();
       },
       child: BlocListener<ChangePasswordBloc, ChangePasswordState>(
         listener: (context, state){
           if(state is ChangePasswordSuccess){
             context.router.replace(ChangePasswordSuccessRoute());
           }
         },
         child: Scaffold(
           body: Stack(
             children: [
               Positioned.fill(
                 child: ImageFiltered(
                   imageFilter: ImageFilter.blur(
                     sigmaY: 10,
                     sigmaX: 10,
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
                 child: ChangePasswordCard(username: widget.username, fullname: widget.fullname),
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