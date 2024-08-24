import 'package:doctor_appointment/features/home_feature/data/models/specialization_response_model.dart';
import 'package:doctor_appointment/features/home_feature/presentation/widgets/specialization/doc_listview_speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../logic/home_cubit.dart';


class DocListviewSpeciality extends StatefulWidget {
  const DocListviewSpeciality({super.key, required this.specializationList});
final List<SpecializationData?>specializationList;

  @override
  State<DocListviewSpeciality> createState() => _DocListviewSpecialityState();
}

class _DocListviewSpecialityState extends State<DocListviewSpeciality> {

  var selectedSpecializationIndex = 0;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.specializationList.length,
          itemBuilder: (context, index){
            return GestureDetector(
                onTap: (){
                  setState(() {
                    selectedSpecializationIndex = index;
                  });
                  context.read<HomeCubit>().getDoctorList(specializationId: widget.specializationList[index]?.id);
                },
                child: DocListviewSpecialityItem(itemIndex: index, specializationData: widget.specializationList[index], selectedIndex: selectedSpecializationIndex,));
          }),
    );
  }
}
