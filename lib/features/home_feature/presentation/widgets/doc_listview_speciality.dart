import 'package:doctor_appointment/features/home_feature/data/models/specialization_response_model.dart';
import 'package:doctor_appointment/features/home_feature/presentation/widgets/doc_listview_speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DocListviewSpeciality extends StatelessWidget {
  const DocListviewSpeciality({super.key, required this.specializationList});
final List<SpecializationData?>specializationList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: specializationList.length,
          itemBuilder: (context, index){
            return DocListviewSpecialityItem(itemIndex: index, specializationData: specializationList[index]);
          }),
    );
  }
}
