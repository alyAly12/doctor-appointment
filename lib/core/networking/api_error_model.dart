import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';
@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
  @JsonKey(name: 'data')
  final Map<String,dynamic>?errors;

  ApiErrorModel({this.errors, this.message, this.code});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  String getAllErrorMessage(){
    if(errors.isNullOrEmpty()) {
      return message ?? 'Unknown error occurred';
    }
    final errorMessage = errors!.entries.map((entry){
      final value = entry.value;
      return '${value.join(',')}';
    }
    ).join('\n');
    return errorMessage;

    /// another way to reduce code
    // return errors!.entries.map((entry){
    //   final value = entry.value;
    //   return '${value.join(',')}';
    // }).join('\n');
  }
}
