import 'package:flutter/material.dart';
import 'package:projects_for_mobile/widgets/signup/buttons/informationButton.dart';
import 'package:projects_for_mobile/widgets/signup/header/signup_header.dart';
import 'package:projects_for_mobile/widgets/signup/input_information/information.dart';

class SignupCard extends StatefulWidget{
   const SignupCard({super.key});
   @override
   State<SignupCard> createState()=> _SignupCardState();
}

class _SignupCardState extends State<SignupCard>{
  void signup(){
    print('Nút đăng ký ở màn hình đăng ký được bấm');
  }
  @override
  Widget build(BuildContext context){
    final widthCard = MediaQuery.of(context).size.width * 0.9;
    final heightCard = MediaQuery.of(context).size.height*0.6;
    return Container(
      width: widthCard,
      height: heightCard,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          signupHeader(),
          informationSignup(),
          informationButton(signup),
        ],
      ),
    );
  }
}