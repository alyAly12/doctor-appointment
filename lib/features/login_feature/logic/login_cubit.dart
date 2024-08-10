import 'package:doctor_appointment/features/login_feature/data/models/login_request_body.dart';
import 'package:doctor_appointment/features/login_feature/data/models/login_response_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates()async{
    emit(const LoginState.loading());
    final response  =await _loginRepo.login(LoginRequestBody(
        email: emailController.text,
        password: passwordController.text
    ));
    response.when(
        success: (LoginResponseBody loginResponseBody){
          emit(LoginState.success(loginResponseBody));
        },
        failure: (error){
          emit(LoginState.error(error: error.apiErrorModel.message ??''));
        }
    );
  }
}
