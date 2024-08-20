import 'package:doctor_appointment/core/common_widgets/loading_widget.dart';
import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/features/signup_feature/logic/signup_cubit.dart';
import 'package:doctor_appointment/features/signup_feature/logic/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_colors.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
      current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(loading: () {
          showDialog(
              context: context,
              builder: (context) {
                return const LoadingWidget();
              });
        }, success: (signupResponse) {
          context.pop();
          context.pushNamed(Routes.homeScreen);
        }, error: (error) {
          context.pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 3),
              backgroundColor: AppColors.deepRed,
              content: Text(
                error,
                style: const TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          );
        });
      },
      child: const SizedBox.shrink(),
    );
  }
}
