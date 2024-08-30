


import 'package:doctor_appointment/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_state.freezed.dart';
@freezed
 class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = Loading;
  const factory SignupState.success(T data) = Success;
  const factory SignupState.error(ApiErrorModel apiErrorModel) = Error;
}
