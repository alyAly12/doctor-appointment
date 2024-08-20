import 'package:doctor_appointment/core/common_widgets/loading_widget.dart';
import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/features/login_feature/logic/login_cubit.dart';
import 'package:doctor_appointment/features/login_feature/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(loading: () {
          showDialog(
              context: context,
              builder: (context) {
                return const LoadingWidget();
              });
        }, success: (loginResponse) {
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
