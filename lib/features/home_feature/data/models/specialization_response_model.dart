
import 'package:json_annotation/json_annotation.dart';
part 'specialization_response_model.g.dart';
@JsonSerializable()
class SpecializationResponseModel{
  @JsonKey(name: "data")
  List<SpecializationData?>? specializationDataList;

  SpecializationResponseModel({this.specializationDataList});

  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) => _$SpecializationResponseModelFromJson(json);

}
@JsonSerializable()
class SpecializationData{
  int? id;
  String? name;
  @JsonKey(name: "doctors")
  List<Doctors?>?doctorList;

  SpecializationData({this.id, this.name, this.doctorList});

  factory SpecializationData.fromJson(Map<String, dynamic> json) => _$SpecializationDataFromJson(json);
}
@JsonSerializable()
class Doctors{
  int? id;
  String? name;
  String? photo;
  String?email;
  String?phone;
  String degree;
  @JsonKey(name:"appoint_price")
  int?price;
  String?gender;

  Doctors(
      {this.id,
      this.name,
      this.photo,
      this.email,
      this.phone,
      required this.degree,
      this.price,
      this.gender});

  factory Doctors.fromJson(Map<String, dynamic> json) => _$DoctorsFromJson(json);
}