import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects_for_mobile/widgets/password/change_password/buttons/change_password_button.dart';
import 'package:projects_for_mobile/widgets/password/change_password/header/change_password_header.dart';
import 'package:projects_for_mobile/widgets/password/change_password/input_information/input_information.dart';

import '../../../../blocs/password/change_password/change_password_bloc.dart';
import '../../../../blocs/password/change_password/change_password_event.dart';

/*
Widget ChangePasswordCard(String fullname, String accountname, TextEditingController newPasswordController, TextEditingController confirmPasswordController, {required VoidCallback changePassword}){
  return Container(
    padding: EdgeInsetsGeometry.all(5),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      children: [
        changePasswordHeader(fullname, accountname),
        inputInformation(newPasswordController, confirmPasswordController),
        changePasswordButton(changePassword: changePassword),
      ],
    ),
  );
}*/

class ChangePasswordCard extends StatefulWidget {
  const ChangePasswordCard({super.key});
  @override
  State<ChangePasswordCard> createState() => _ChangePasswordCardState();
}

class _ChangePasswordCardState extends State<ChangePasswordCard>{
  String? fullname;
  String? accountname;
  TextEditingController newPassController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  void changePassword(){
    context.read<ChangePasswordBloc>().add(
      ChangePassword(newPassword: newPassController.text, confirmPassword:  confirmPassController.text)
    );
    print("Nút đặt lại mật khẩu ở màn hình đổi mật khẩu được ấn");
  }
  @override
  Widget build(BuildContext context){
    final widthCard = MediaQuery.of(context).size.width*0.9;
    final heightCard = MediaQuery.of(context).size.height*0.8;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusGeometry.circular(35),
      ),
      width: widthCard,
      height: heightCard,
      child: Column(
         children: [
           changePasswordHeader(fullname, accountname),
           inputInformation(newPassController, confirmPassController),
           changePasswordButton(changePassword: changePassword),
         ],
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