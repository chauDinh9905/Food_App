import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/login/buttons/informationButton.dart';
import 'package:projects_for_mobile/widgets/login/header/login_header.dart';
import 'package:projects_for_mobile/widgets/login/input_information/information.dart';
import 'package:auto_route/auto_route.dart';
import 'package:projects_for_mobile/routes/app_route.dart';

class LoginCard extends StatefulWidget{
  const LoginCard({super.key});
  @override
  State<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard>{
  void login(){
    print("Nút Login ở màn hình đăng nhập được bấm");
  }
  void forgotPass(){
    print("Nút quên mật khẩu ở màn hình đăng nhập được bấm");
  }
  void createAccount(){
    context.router.push(
      SignupRoute(),
    );
    print("Nút tạo tài khoản mới ở màn hình đăng nhập được bấm");
  }
  @override
  Widget build(BuildContext context){
    final widthCard = MediaQuery.of(context).size.width * 0.90;
    final heightCard = MediaQuery.of(context).size.height *0.6;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
      ),
      width: widthCard,
      height: heightCard,
      child: Column(
        children: [
          loginHeader(),
          informationLogin(),
          informationButton(onLogin: login, onForgotPass: forgotPass,onCreateAccount:  createAccount),
        ],
      ),
    );
  }
}