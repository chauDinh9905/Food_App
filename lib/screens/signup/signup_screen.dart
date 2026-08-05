import 'package:flutter/material.dart';

import '../../constants/images/app_assets.dart';
import '../../widgets/signup/card/signup_card.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SignupScreen extends StatefulWidget{
  const SignupScreen({super.key});
  @override
  State<SignupScreen> createState()=> _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppAssets.signupBackground,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: 40,
              left: 20,
              child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
            ),
          ),
          Center(
            child: SignupCard(),
          ),
        ],
      ),
    );
  }
}