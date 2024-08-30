import 'package:doctor_appointment/core/common_widgets/custom_text_widget.dart';
import 'package:doctor_appointment/core/common_widgets/loading_widget.dart';
import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/networking/api_error_model.dart';
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
          context.pushNamed(Routes.rootScreen);
        }, error: (apiErrorModel) {
          setupErrorState(context, apiErrorModel);
        });
      },
      child: const SizedBox.shrink(),
    );
  }
  void setupErrorState(BuildContext context ,ApiErrorModel apiErrorModel){
    context.pop();
    showDialog(
        context: context,
        builder: (context) =>AlertDialog(
          icon: const Icon(Icons.error_outline,color: AppColors.deepRed,size: 32,),
          content: CustomTextWidget(title: apiErrorModel.getAllErrorMessage(),color: AppColors.lightGrey,fontSize: 13,maxLines: 5,),
          actions: [
            TextButton(onPressed: (){
              context.pop();
            }, child: const Text('Ok'))
          ],
        )
    );
  }
}
