import 'package:fatora/modules/login/login_screen.dart';
import 'package:fatora/shared/components/components.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 3,),()
    {
      navigateAndFinish(context, LoginScreen());
    });

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(child: Image.asset('assets/images/fatora.png',)),
    );
  }
}
