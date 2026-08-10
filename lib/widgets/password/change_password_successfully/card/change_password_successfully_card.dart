import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/password/change_password_successfully/buttons/back_to_login_button.dart';

import '../information/information.dart';

Widget changePasswordSuccessfullyCard({required VoidCallback backToLogin}){
  return Container(
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        information(),
        backToLoginButton(backToLogin: backToLogin),
      ],
    ),
  );
}