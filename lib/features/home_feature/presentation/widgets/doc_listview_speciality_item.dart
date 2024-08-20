import 'package:doctor_appointment/features/home_feature/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets_manager.dart';


class DocListviewSpecialityItem extends StatelessWidget {
  const DocListviewSpecialityItem({super.key, this.specializationData, required this.itemIndex});
final SpecializationData? specializationData;
final int itemIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          start: itemIndex ==0?0:24.w
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: AppColors.lightBlue,
            child: SvgPicture.asset(AssetsManager.logo1,height: 40.h,width: 40.w,),
          ),
          const SizedBox(height: 8,),
          CustomTextWidget(
            title: specializationData?.name??'Specialization',
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            color: AppColors.greyColor,
          )
        ],
      ),
    );
  }
}
