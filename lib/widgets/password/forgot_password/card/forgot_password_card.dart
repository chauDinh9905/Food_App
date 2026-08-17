import 'package:flutter/material.dart';
import 'package:projects_for_mobile/blocs/password/forgot_password/forgot_password_event.dart';
import 'package:projects_for_mobile/widgets/password/forgot_password/buttons/confirm_button.dart';
import 'package:projects_for_mobile/widgets/password/forgot_password/input_information/input_information.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../blocs/password/forgot_password/forgot_password_bloc.dart';
import '../../../../blocs/password/forgot_password/forgot_password_state.dart';
import '../header/forgot_password_header.dart';

class ForgotPasswordCard extends StatefulWidget {
  const ForgotPasswordCard({super.key});
  @override
  State<ForgotPasswordCard> createState() => _ForgotPasswordCardState();
}

class _ForgotPasswordCardState extends State<ForgotPasswordCard>{
  TextEditingController usernameController  = TextEditingController();
  TextEditingController staffcodeController = TextEditingController();
  void confirm() {
    context.read<ForgotPasswordBloc>().add(
      Confirm(accountname: usernameController.text, staffcode: staffcodeController.text)
    );
    print("Nút confirm ở màn hình quên mật khẩu được bấm");
  }
  @override
  Widget build(BuildContext context) {
    final widthCard = MediaQuery.of(context).size.width * 0.9;
    final heightCard = MediaQuery.of(context).size.height * 0.4;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusGeometry.circular(35),
      ),
      width: widthCard,
      height: heightCard,
      child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
        builder: (context, state) {
          String? accountnameError;
          String? staffcodeError;

          if (state is ForgotPasswordValidationFailure) {
            accountnameError = state.accountnameError;
            staffcodeError = state.staffcodeError;
          }

          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              forgotPasswordHeader(),

              inputInformation(
                usernameController,
                staffcodeController,
                accountnameError: accountnameError,
                staffcodeError: staffcodeError,
              ),

              if (state is ForgotPasswordAuthenticationFailure)
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: Text(
                    "Thông tin xác minh không đúng",
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

              confirmButton(
                confirm: confirm,
              ),
            ],
          );
        },
      ),
    );
  }
  @override
  void dispose(){
    usernameController.dispose();
    staffcodeController.dispose();
    super.dispose();
  }
}