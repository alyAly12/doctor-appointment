
import 'package:doctor_appointment/features/splash_feature/presentation/widgets/splash_screen_body.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SplashScreenBody(),
      )
    );
  }
}
