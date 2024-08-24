import 'package:doctor_appointment/features/home_feature/logic/home_cubit.dart';
import 'package:doctor_appointment/features/home_feature/logic/home_state.dart';
import 'package:doctor_appointment/features/home_feature/presentation/widgets/doctors/recommended_doc_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
      current is DoctorsLoaded|| current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
            doctorsLoaded:(doctorsList) {
              return setupSuccess(doctorsList);
            },
            doctorsError:(errorHandler)=>setupError() ,
            orElse: (){
              return const SizedBox.shrink();
            });
      },
    );
  }
  Widget setupSuccess(doctorList){
    return RecommendedDocListview(doctorsList: doctorList);
  }
  Widget setupError(){
    return const SizedBox.shrink();
  }
}

