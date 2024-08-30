
import 'package:doctor_appointment/core/networking/api_error_handler.dart';
import 'package:doctor_appointment/features/home_feature/data/apis/home_api_service.dart';
import 'package:doctor_appointment/features/home_feature/data/models/specialization_response_model.dart';
import '../../../../core/networking/api_result.dart';

class HomeRepo{
  final HomeApiService _homeApiService;
  HomeRepo(this._homeApiService);
  Future<ApiResult<SpecializationResponseModel>>getSpecializations()async{
    try{
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

}