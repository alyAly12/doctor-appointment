import 'package:doctor_appointment/features/home_feature/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';

class RecommendDocListviewItem extends StatelessWidget {
  const RecommendDocListviewItem({super.key, this.doctorModel});
final Doctors? doctorModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://media.istockphoto.com/id/1922549572/photo/portrait-of-young-female-doctor-thinking.jpg?s=1024x1024&w=is&k=20&c=4lviwdg384zsZXU2J7Eex3G29PcoApNb9FjeDQEWlQo=',
              width: 110.w,
              height: 120.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 16.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                  title: doctorModel?.name??'Name',
                  fontSize: 14.sp,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomTextWidget(
                  title: '${doctorModel?.degree} | ${doctorModel?.phone}',
                  fontSize: 12.sp,
                  color: AppColors.lightTitleColor,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomTextWidget(
                  title: doctorModel?.email??'',
                  fontSize: 12.sp,
                  color: AppColors.lightTitleColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
