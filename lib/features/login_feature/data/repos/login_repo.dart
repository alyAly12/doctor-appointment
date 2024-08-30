import 'package:doctor_appointment/core/networking/api_error_handler.dart';
import 'package:doctor_appointment/core/networking/api_service.dart';
import 'package:doctor_appointment/features/login_feature/data/models/login_request_body.dart';
import 'package:doctor_appointment/features/login_feature/data/models/login_response_body.dart';

import '../../../../core/networking/api_result.dart';

class LoginRepo{
  final ApiService _apiService;

  LoginRepo(this._apiService);
  Future<ApiResult<LoginResponseBody>> login(LoginRequestBody loginRequestBody)async{
    try{
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}