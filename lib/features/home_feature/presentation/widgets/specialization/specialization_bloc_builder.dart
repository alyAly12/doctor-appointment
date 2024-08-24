import 'package:doctor_appointment/features/home_feature/presentation/widgets/doctors/doctor_shimmer.dart';
import 'package:doctor_appointment/features/home_feature/presentation/widgets/specialization/specialization_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';
import 'doc_listview_speciality.dart';


class SpecializationBlocBuilder extends StatelessWidget {
  const SpecializationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
        current is SpecilazationLoading ||
            current is SpecializationLoaded ||
            current is SpecializationError,
        builder: (context, state) {
          return state.maybeWhen(
            specializationLoading: () {
              return  setupLoading();
            },
            specializationLoaded: (specializationDataList) {
              var specializationList = specializationDataList;
              return setupSuccess(specializationList);
            },
            error: (error) {
              return const SizedBox.shrink();
            },
            orElse: () {
              return const SizedBox.shrink();
            },
          );
        });
  }
  Widget setupSuccess(specializationList){
    return DocListviewSpeciality(specializationList: specializationList??[],);
  }
  /// shimmer effect
  Widget setupLoading(){
    return Expanded(child:Column(
      children: [
        const SpecializationShimmer(),
        SizedBox(height: 8.h,),
        const DoctorShimmer()
      ],
    ));
  }
}
