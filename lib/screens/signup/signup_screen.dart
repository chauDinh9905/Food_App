import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects_for_mobile/blocs/signup/signup_bloc.dart';
import 'package:projects_for_mobile/blocs/signup/signup_state.dart';

import '../../constants/images/app_assets.dart';
import '../../di/injection.dart';
import '../../widgets/signup/card/signup_card.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SignupScreen extends StatefulWidget{
  const SignupScreen({super.key});
  @override
  State<SignupScreen> createState()=> _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>{
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignupBloc>(
      create: (context){
        return getIt<SignupBloc>();
      },
      child: BlocListener<SignupBloc, SignupState>(
        listener: (context, state){
          if(state is SignupSuccess){
            context.router.pop();
          }
        },
        child: Scaffold(
          body: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  AppAssets.signupBackground,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
              ),
              Center(
                child: SignupCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}