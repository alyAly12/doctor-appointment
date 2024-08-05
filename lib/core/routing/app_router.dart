import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/features/home_feature/presentation/screens/home_screen.dart';
import 'package:doctor_appointment/features/login_feature/presentation/screens/login_screen.dart';
import 'package:doctor_appointment/features/splash_feature/presentation/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_)=> const SplashScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_)=> const LoginScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_)=> const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_)=>  Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }
  }
}