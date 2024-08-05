import 'package:doctor_appointment/core/common_widgets/custom_text_widget.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DocAndTextWidget extends StatelessWidget {
  const DocAndTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.2),
              ],
              stops: const [0.19,0.5],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
            child: Image.asset(AssetsManager.doctor,fit: BoxFit.cover,)),
        Positioned(
          bottom: 50,
          left: 0,
          right: 0,
          child: Center(
            child: CustomTextWidget(title: 'Best Doctor\nAppointment App',
            fontSize:25.sp,
              color: AppColors.mainColor,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Positioned(
          bottom: 3,
          left: 0,
          right: 0,
          child: Center(
            child: CustomTextWidget(
              title: 'Manage and schedule all of your medical appointments\neasily with Docdoc to get a new experience.',
              fontSize:13.sp,
              maxLines: 3,
              color: AppColors.lightTitleColor,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
