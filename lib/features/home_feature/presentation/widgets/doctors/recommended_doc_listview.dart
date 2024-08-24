import 'package:doctor_appointment/features/home_feature/presentation/widgets/doctors/recommend_doc_listview_item.dart';
import 'package:flutter/material.dart';
import '../../../data/models/specialization_response_model.dart';

class RecommendedDocListview extends StatelessWidget {
  const RecommendedDocListview({super.key, this.doctorsList});

  final List<Doctors?>? doctorsList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection:Axis.vertical ,
          itemCount: doctorsList?.length,
          itemBuilder: (context, index) {
            return RecommendDocListviewItem(doctorModel: doctorsList?[index]);
          }),
    );
  }
}
