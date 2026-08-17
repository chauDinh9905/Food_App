import 'package:flutter/material.dart';

Widget _infomationBox (String hint, TextEditingController controller, bool hide, String? errorText){
  return TextFormField(
    controller: controller,
    obscureText: hide,
    decoration:  InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
          width: 6,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8),
      ),
     ),
      hintText: hint,
      errorText: errorText,
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    ),
  );
}

Widget informationLogin(TextEditingController usernameController, TextEditingController passwordController, String? usernameError, String? passwordError, String? authenticationError){
  return Container(
    padding: const EdgeInsets.all(16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _infomationBox( 'Tên đăng nhập', usernameController, false, usernameError),
        const SizedBox(height: 16),
        _infomationBox('Mật khẩu', passwordController, true, passwordError),
        if (authenticationError != null) ...[
          const SizedBox(height: 8),
          Text(
            authenticationError,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 13,
            ),
          ),
        ],
      ],
    ),
  );
}