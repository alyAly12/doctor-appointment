

import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/models/specialization_response_model.dart';
import '../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

List<SpecializationData?>? specializationList = [];
  void getSpecialization() async {
    emit(const HomeState.specializationLoading());
    final response = await _homeRepo.getSpecializations();
    response.when(
        success: (specializationResponseModel) {
          specializationList = specializationResponseModel.specializationDataList ?? [];
          getDoctorList(specializationId: specializationList?.first?.id);
          emit(HomeState.specializationLoaded(specializationList));
        },
        failure: (apiErrorModel){
          emit(HomeState.error(apiErrorModel));
        }
    );
  }

  void getDoctorList({required int? specializationId}) {
    List<Doctors?>? doctorsList = getDoctorsBySpecializationListById(specializationId!);
    if(!doctorsList.isNullOrEmpty()){
      emit(HomeState.doctorsLoaded(doctorsList));
    }else{
      emit(const HomeState.doctorsError());
    }

  }

   getDoctorsBySpecializationListById( int specializationId){
    return specializationList?.firstWhere((specialization) => specialization?.id == specializationId)?.doctorList;
  }
}
