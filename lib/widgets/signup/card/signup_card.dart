import 'package:flutter/material.dart';
import 'package:projects_for_mobile/blocs/signup/signup_event.dart';
import 'package:projects_for_mobile/widgets/signup/buttons/informationButton.dart';
import 'package:projects_for_mobile/widgets/signup/header/signup_header.dart';
import 'package:projects_for_mobile/widgets/signup/input_information/information.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../blocs/signup/signup_bloc.dart';
import '../../../blocs/signup/signup_state.dart';

class SignupCard extends StatefulWidget{
   const SignupCard({super.key});
   @override
   State<SignupCard> createState()=> _SignupCardState();
}

class _SignupCardState extends State<SignupCard>{
  TextEditingController fullnameController = TextEditingController();
  TextEditingController staffcodeController = TextEditingController();
  TextEditingController accountnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void signup(){
    context.read<SignupBloc>().add(
      SignupSubmitted(fullname: fullnameController.text, staffcode: staffcodeController.text, accountname: accountnameController.text, password: passwordController.text)
    );
    print('Nút đăng ký ở màn hình đăng ký được bấm');
  }
  @override
  Widget build(BuildContext context) {
    final widthCard = MediaQuery.of(context).size.width * 0.9;
    final heightCard = MediaQuery.of(context).size.height * 0.6;

    return Container(
      width: widthCard,
      height: heightCard,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
      ),
      child: BlocBuilder<SignupBloc, SignupState>(
        builder: (context, state) {
          String? fullnameError;
          String? staffcodeError;
          String? accountnameError;
          String? passwordError;

          if (state is SignupValidationFailure) {
            fullnameError = state.fullnameError;
            staffcodeError = state.staffcodeError;
            accountnameError = state.accountnameError;
            passwordError = state.passwordError;
          }

          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              signupHeader(),

              informationSignup(
                fullnameController,
                staffcodeController,
                accountnameController,
                passwordController,
                fullnameError,
                staffcodeError,
                accountnameError,
                passwordError,
              ),

              informationButton(signup),
            ],
          );
        },
      ),
    );
  }
  @override
  void dispose(){
    fullnameController.dispose();
    staffcodeController.dispose();
    accountnameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}