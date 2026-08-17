import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects_for_mobile/widgets/password/change_password/buttons/change_password_button.dart';
import 'package:projects_for_mobile/widgets/password/change_password/header/change_password_header.dart';
import 'package:projects_for_mobile/widgets/password/change_password/input_information/input_information.dart';

import '../../../../blocs/password/change_password/change_password_bloc.dart';
import '../../../../blocs/password/change_password/change_password_event.dart';
import '../../../../blocs/password/change_password/change_password_state.dart';

class ChangePasswordCard extends StatefulWidget {
  final String username;
  final String fullname;
  final String employeeCode;
  const ChangePasswordCard({super.key, required this.username, required this.fullname, required this.employeeCode});
  @override
  State<ChangePasswordCard> createState() => _ChangePasswordCardState();
}

class _ChangePasswordCardState extends State<ChangePasswordCard>{
  TextEditingController newPassController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  void changePassword(){
    context.read<ChangePasswordBloc>().add(
      ChangePassword(newPassword: newPassController.text, confirmPassword:  confirmPassController.text, username: widget.username, employeeCode: widget.employeeCode)
    );
    print("Nút đặt lại mật khẩu ở màn hình đổi mật khẩu được ấn");
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
      child: BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
        builder: (context, state) {
          String? newPassError;
          String? confirmPassError;
          String? matchError;

          if (state is ChangePasswordValidationFailure) {
            newPassError = state.newPassError;
            confirmPassError = state.confirmPassError;
            matchError = state.matchError;
          }

          return Column(
            children: [
              changePasswordHeader(
                widget.fullname,
                widget.username,
              ),

              inputInformation(
                newPassController,
                confirmPassController,
                newPassError: newPassError,
                confirmPassError: confirmPassError,
                matchError: matchError,
              ),

              changePasswordButton(
                changePassword: changePassword,
              ),
            ],
          );
        },
      ),
    );
  }
  @override
  void dispose(){
    newPassController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }
}