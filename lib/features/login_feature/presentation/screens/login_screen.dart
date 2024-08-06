import 'package:doctor_appointment/features/login_feature/presentation/widgets/login_screen_body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        backgroundColor: Colors.white,
        body:LoginScreenBody()
      ),
    );
  }
}
