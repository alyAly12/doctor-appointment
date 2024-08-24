import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utils/app_colors.dart';

class DoctorShimmer extends StatelessWidget {
  const DoctorShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index){
            return Container(
              margin: EdgeInsets.only(bottom: 16.h),
              child: Row(
                children: [
                  Shimmer.fromColors(
                      baseColor: AppColors.borderContainerColor,
                      highlightColor: Colors.white,
                      child: Container(
                        height: 120.h,
                        width: 110.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white
                        ),
                      )
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Expanded(
                      child: Column(
                        children: [
                          Shimmer.fromColors(
                              baseColor: AppColors.borderContainerColor,
                              highlightColor: Colors.white,
                              child: Container(
                                height: 18.h,
                                width: 180.w,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white
                                ),
                              )
                          ),
                          SizedBox(height: 5.h,),
                          Shimmer.fromColors(
                              baseColor: AppColors.borderContainerColor,
                              highlightColor: Colors.white,
                              child: Container(
                                height: 14.h,
                                width: 160.w,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white
                                ),
                              )
                          ),
                          SizedBox(height: 5.h,),
                          Shimmer.fromColors(
                              baseColor: AppColors.borderContainerColor,
                              highlightColor: Colors.white,
                              child: Container(
                                height: 14.h,
                                width: 160.w,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white
                                ),
                              )
                          ),
                        ],
                      ))
                ],
              ),
            );
          }),
    );
  }
}
