

import 'package:doctor_appointment/features/signup_feature/data/models/signup_request_body.dart';
import 'package:doctor_appointment/features/signup_feature/logic/signup_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repos/signup_repo.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _singupRepo;
  SignupCubit(this._singupRepo) : super(const SignupState.initial());
  final formKey = GlobalKey<FormState>();
   TextEditingController nameController = TextEditingController();
   TextEditingController emailController = TextEditingController();
   TextEditingController passwordController = TextEditingController();
   TextEditingController confirmPasswordController = TextEditingController();
   TextEditingController phoneController = TextEditingController();
   FocusNode nameNode = FocusNode();
   FocusNode emailNode = FocusNode();
   FocusNode passwordNode = FocusNode();
   FocusNode confirmPasswordNode = FocusNode();
   FocusNode phoneNode = FocusNode();


   void emitSignUpStates()async{
     emit(const SignupState.loading());
     final response = await _singupRepo.signup(SignupRequestBody(
         name: nameController.text,
         email: emailController.text,
         phone: phoneController.text,
         password: passwordController.text,
         passwordConfirmation: confirmPasswordController.text,
         gender: 0
     ));
     response.when(
         success: (signupResponseBody){
           emit(SignupState.success(signupResponseBody));
         },
         failure: (error){
           emit(SignupState.error(error: error.apiErrorModel.message ??''));
         }
     );
   }

}
