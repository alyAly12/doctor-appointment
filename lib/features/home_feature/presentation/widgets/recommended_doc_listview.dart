import 'package:doctor_appointment/core/common_widgets/custom_text_widget.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedDocListview extends StatelessWidget {
  const RecommendedDocListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 16.h),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://img.freepik.com/free-photo/portrait-friendly-male-doctor-dressed-uniform_171337-105.jpg?t=st=1724091539~exp=1724095139~hmac=b263a66272a12b4bc02d0775e449b3b6a006eae84a29b9377a8bc890af40c4db&w=900',
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
                      children: [
                        CustomTextWidget(
                          title: 'Name',
                          fontSize: 14.sp,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomTextWidget(
                          title: 'Degree | 01111111',
                          fontSize: 12.sp,
                          color: AppColors.lightTitleColor,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomTextWidget(
                          title: 'Email@email.com',
                          fontSize: 12.sp,
                          color: AppColors.lightTitleColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
