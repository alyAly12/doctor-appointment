import 'package:doctor_appointment/core/di/dependency_injection.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/features/home_feature/presentation/screens/home_screen.dart';
import 'package:doctor_appointment/features/login_feature/logic/login_cubit.dart';
import 'package:doctor_appointment/features/login_feature/presentation/screens/login_screen.dart';
import 'package:doctor_appointment/features/signup_feature/presentation/screens/signup_screen.dart';
import 'package:doctor_appointment/features/splash_feature/presentation/screens/splash_screen.dart';
import 'package:doctor_appointment/root_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/calendar_feature/presentation/screens/calendar_screen.dart';
import '../../features/profile_feature/presentation/screens/profile_screen.dart';
import '../../features/search_feature/presentation/screens/search_screen.dart';
import '../../features/signup_feature/logic/signup_cubit.dart';
import '../../features/support_feature/presentation/screens/support_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
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
        return MaterialPageRoute(builder: (_) =>
            const HomeScreen());
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => getIt<SignupCubit>(),
              child: const SignupScreen(),
            ));
        case Routes.rootScreen:
        return MaterialPageRoute(builder: (_) =>
            const RootScreen());
        case Routes.supportScreen:
        return MaterialPageRoute(builder: (_) =>
            const SupportScreen());
        case Routes.calendarScreen:
        return MaterialPageRoute(builder: (_) =>
            const CalendarScreen());
        case Routes.searchScreen:
        return MaterialPageRoute(builder: (_) =>
            const SearchScreen());
        case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) =>
            const ProfileScreen());
      default:
        return null;
    }
  }
}