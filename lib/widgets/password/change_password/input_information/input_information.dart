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
            borderRadius: BorderRadius.circular(5),
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: hasError ? Colors.red : Colors.grey,
            ),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
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

Widget _note() {
  return const Text(
    "Tối thiểu 6 ký tự",
    style: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget inputInformation(
    TextEditingController newPasswordController,
    TextEditingController confirmPasswordController, {
      String? newPassError,
      String? confirmPassError,
      String? matchError,
    }) {
  return Container(
    padding: const EdgeInsets.all(16),
    color: Colors.white,
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _informationBox(
          "Mật khẩu mới",
          newPasswordController,
          true,
          newPassError,
        ),

        const SizedBox(height: 16),

        _informationBox(
          "Xác nhận mật khẩu mới",
          confirmPasswordController,
          true,
          confirmPassError,
        ),

        if (matchError != null)
          Padding(
            padding: const EdgeInsets.only(
              top: 4,
            ),
            child: Text(
              matchError,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),

        _note(),
      ],
    ),
  );
}