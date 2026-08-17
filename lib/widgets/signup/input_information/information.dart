import 'package:flutter/material.dart';

Widget _informationBox(String hint, TextEditingController controller, bool hide, String? errorText,){
  return TextFormField(
    decoration: InputDecoration(
      hintText: hint,
      errorText: errorText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Colors.red,
          width: 2,
        ),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Colors.red,
          width: 2,
        ),
      ),
    ),
    controller: controller,
    obscureText: hide,
  );
}

Widget informationSignup(TextEditingController fullnameController, TextEditingController staffcodeController, TextEditingController accountnameController, TextEditingController passwordController,
    String? fullnameError, String? staffcodeError, String? accountnameError, String? passwordError,){
  return Container(
    padding: const EdgeInsets.all(16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _informationBox('Tên đầy đủ', fullnameController, false, fullnameError),
        const SizedBox(height: 16),
        _informationBox('Mã nhân viên', staffcodeController, false, staffcodeError),
        const SizedBox(height: 16),
        _informationBox('Tên tài khoản', accountnameController, false, accountnameError),
        const SizedBox(height: 16),
        _informationBox('Mật khẩu', passwordController, true, passwordError),
      ],
    ),
  );
}