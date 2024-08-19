import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/assets_manager.dart';

class DocListviewSpeciality extends StatelessWidget {
  const DocListviewSpeciality({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index){
            return Padding(
              padding: EdgeInsetsDirectional.only(
                start: index ==0?0:24.w
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.lightBlue,
                    child: SvgPicture.asset(AssetsManager.general,height: 40.h,width: 40.w,),
                  ),
                  const SizedBox(height: 8,),
                  CustomTextWidget(
                    title: AppStrings.general,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w300,
                    color: AppColors.greyColor,
                  )
                ],
              ),
            );
          }),
    );
  }
}
