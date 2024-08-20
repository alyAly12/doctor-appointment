

import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());


  void getSpecialization() async {
    emit(const HomeState.specializationLoading());
    final response = await _homeRepo.getSpecializations();
    response.when(
        success: (specializationResponseModel) {
          emit(HomeState.specializationLoaded(specializationResponseModel));
        },
        failure: (failure){
          emit(HomeState.error(failure));
        }
    );
  }
}
