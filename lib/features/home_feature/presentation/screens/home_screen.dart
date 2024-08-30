import 'package:doctor_appointment/features/home_feature/logic/home_cubit.dart';
import 'package:doctor_appointment/features/home_feature/presentation/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/dependency_injection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(getIt())..getSpecialization(),
      child: const Scaffold(
          backgroundColor: Colors.white,
          body: HomeScreenBody()
      ),
    );
  }
}
