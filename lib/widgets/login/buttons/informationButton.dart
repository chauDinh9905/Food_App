
import 'package:flutter/material.dart';

Widget _informationButtonColumn(Color colorButton, String label, VoidCallback onPressed){
  return Container(
    width: double.infinity,
    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
    child: FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: colorButton,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
      ),
      child: Text(label),
    ),
  );
}

Widget _forgetPassButton(Color colorButton, String label, VoidCallback onPressed){
  return TextButton(
    onPressed: onPressed,
    child: Text(label, style: TextStyle(color: colorButton,),),
  );
}

Widget informationButton({required VoidCallback onLogin, required VoidCallback onForgotPass, required VoidCallback onCreateAccount}){
  return Column(
    children: [
      _informationButtonColumn(Colors.blue, 'Login', onLogin),
      _forgetPassButton(Colors.green, 'Quên mật khẩu', onForgotPass),
      _informationButtonColumn(Colors.green, 'Tạo tài khoản mới', onCreateAccount),
    ],
  );
}

