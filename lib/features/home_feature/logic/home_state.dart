
import 'package:doctor_appointment/core/networking/api_error_handler.dart';
import 'package:doctor_appointment/features/home_feature/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';
@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  // specialization state
  const factory HomeState.specializationLoading() = SpecilazationLoading;
  const factory HomeState.specializationLoaded(SpecializationResponseModel data) = SpecializationLoaded;
  const factory HomeState.error(ErrorHandler error) = SpecializationError;
}
