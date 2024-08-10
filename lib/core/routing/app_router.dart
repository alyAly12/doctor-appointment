import 'package:doctor_appointment/core/di/dependency_injection.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/features/home_feature/presentation/screens/home_screen.dart';
import 'package:doctor_appointment/features/login_feature/logic/login_cubit.dart';
import 'package:doctor_appointment/features/login_feature/presentation/screens/login_screen.dart';
import 'package:doctor_appointment/features/signup_feature/presentation/screens/signup_screen.dart';
import 'package:doctor_appointment/features/splash_feature/presentation/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/signup_feature/logic/signup_cubit.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen(),
            ));
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => getIt<SignupCubit>(),
              child: const SignupScreen(),
            ));
      default:
        return MaterialPageRoute(builder: (_) =>
            Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}