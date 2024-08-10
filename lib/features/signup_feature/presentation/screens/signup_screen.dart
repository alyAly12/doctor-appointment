import 'package:doctor_appointment/features/signup_feature/presentation/widgets/signup_screen_body.dart';
import 'package:flutter/material.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        backgroundColor: Colors.white,
        body:SignupScreenBody()
      ),
    );
  }
}
