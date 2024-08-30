import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/features/home_feature/presentation/widgets/doctor_blue_banner.dart';
import 'package:doctor_appointment/features/home_feature/presentation/widgets/doctor_speciality_row.dart';
import 'package:doctor_appointment/features/home_feature/presentation/widgets/doctors/doctors_bloc_builder.dart';
import 'package:doctor_appointment/features/home_feature/presentation/widgets/home_top_bar.dart';
import 'package:doctor_appointment/features/home_feature/presentation/widgets/specialization/specialization_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(20, 16, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeTopBar(),
            SizedBox(
              height: 5.h,
            ),
            const DoctorBlueBanner(),
            SizedBox(
              height: 16.h,
            ),
            const DoctorSpecialityRow(
              title: AppStrings.docSpecialist,
            ),
            SizedBox(
              height: 16.h,
            ),
            const SpecializationBlocBuilder(),
            SizedBox(height: 8.h,),
            const DoctorsBlocBuilder()
          ],
        ),
      ),
    );
  }
}
