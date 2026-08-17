import 'package:flutter/material.dart';

Widget _informationBox(
    String hint,
    TextEditingController informationController,
    bool hide,
    String? errorText,
    ) {
  final hasError = errorText != null;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextFormField(
        controller: informationController,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: hasError ? Colors.red : Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: hasError ? Colors.red : Colors.blue,
              width: 2,
            ),
          ),
        ),
        obscureText: hide,
      ),
      if (hasError)
        Padding(
          padding: const EdgeInsets.only(
            left: 4,
            top: 4,
          ),
          child: Text(
            errorText,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 12,
            ),
          ),
        ),
    ],
  );
}

Widget inputInformation(
    TextEditingController usernameController,
    TextEditingController staffcodeController, {
      String? accountnameError,
      String? staffcodeError,
    }) {
  return Container(
    padding: const EdgeInsets.all(16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _informationBox(
          "Tên đăng nhập",
          usernameController,
          false,
          accountnameError,
        ),
        const SizedBox(height: 16),
        _informationBox(
          "Mã nhân viên",
          staffcodeController,
          false,
          staffcodeError,
        ),
      ],
    ),
  );
}