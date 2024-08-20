

import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networking/api_constant.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../models/specialization_response_model.dart';
import 'home_api_consts.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConsts.homeSpecialization)

  Future<SpecializationResponseModel> getSpecialization();
}