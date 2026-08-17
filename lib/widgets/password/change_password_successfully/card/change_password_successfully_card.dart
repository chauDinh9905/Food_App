import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/password/change_password_successfully/buttons/back_to_login_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../blocs/password/change_password_successful/change_password_successful_bloc.dart';
import '../../../../blocs/password/change_password_successful/change_password_successful_event.dart';
import '../information/information.dart';

class ChangePasswordSuccessfullyCard extends StatefulWidget {
  const ChangePasswordSuccessfullyCard({super.key});
  @override
  State<ChangePasswordSuccessfullyCard> createState() => _ChangePasswordSuccessfullyCardState();
}

class _ChangePasswordSuccessfullyCardState extends State<ChangePasswordSuccessfullyCard>{
  void backToLogin(){
    context.read<ChangePasswordSuccessfulBloc>().add(BackToLogin());
    print("Nút đăng nhập ngay ở màn hình đổi mật khẩu thành công được ấn");
  }
  @override
  Widget build(BuildContext context) {
    final widthCard = MediaQuery.of(context).size.width*0.9;
    final heightCard = MediaQuery.of(context).size.height*0.4;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusGeometry.circular(35),
      ),
      width: widthCard,
      height: heightCard,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          information(),
          backToLoginButton(backToLogin: backToLogin),
        ],
      ),
    );
  }
  @override
  void dispose(){
    super.dispose();
  }
}