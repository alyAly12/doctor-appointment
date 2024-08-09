import 'package:dio/dio.dart';
import 'package:doctor_appointment/features/login_feature/data/models/login_response_body.dart';
import 'package:retrofit/http.dart';

import '../../features/login_feature/data/models/login_request_body.dart';
import 'api_constant.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstant.login)
  Future<LoginResponseBody> login(@Body() LoginRequestBody loginRequestBody);
}
