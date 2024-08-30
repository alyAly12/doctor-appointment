import 'package:doctor_appointment/core/networking/api_error_handler.dart';
import 'package:doctor_appointment/features/signup_feature/data/models/signup_request_body.dart';
import 'package:doctor_appointment/features/signup_feature/data/models/signup_response_body.dart';

import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class SignupRepo{
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponseBody>>signup(SignupRequestBody signupRequestBody)async{
    try{
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}