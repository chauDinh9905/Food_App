import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/password/change_password/buttons/change_password_button.dart';
import 'package:projects_for_mobile/widgets/password/change_password/header/change_password_header.dart';
import 'package:projects_for_mobile/widgets/password/change_password/input_information/input_information.dart';

Widget changePasswordCard(String fullname, String accountname, TextEditingController newPasswordController, TextEditingController confirmPasswordController, {required VoidCallback changePassword}){
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
}