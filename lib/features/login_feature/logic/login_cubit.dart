import 'package:doctor_appointment/core/helper/shared_pref_keys.dart';
import 'package:doctor_appointment/core/helper/shred_prefs.dart';
import 'package:doctor_appointment/core/networking/dio_factory.dart';
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
        success: (LoginResponseBody loginResponseBody)async{
          await saveUserToken(loginResponseBody.userData?.token??'');
          emit(LoginState.success(loginResponseBody));
        },
        failure: (apiErrorModel){
          emit(LoginState.error(apiErrorModel));
        }
    );
  }

  Future<void> saveUserToken(String token)async{
    await SharedPrefsHelper.setSecureString(SharedPrefKeys.userToken, token);
    DioFactory.refreshHeaderAfterLogin(token);
  }
}
