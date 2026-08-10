import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/password/forgot_password/buttons/confirm_button.dart';
import 'package:projects_for_mobile/widgets/password/forgot_password/input_information/input_information.dart';

import '../header/forgot_password_header.dart';

Widget forgotPasswordCard(TextEditingController usernameController, TextEditingController staffcodeController, {required VoidCallback confirm}){
  return Container(
    padding: EdgeInsetsGeometry.all(5),
    child: Column(
      children: [
        forgotPasswordHeader(),
        inputInformation(usernameController, staffcodeController),
        confirmButton(confirm: confirm),
      ],
    ),
  );
}