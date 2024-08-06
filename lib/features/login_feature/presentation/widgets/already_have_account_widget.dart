import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already have an account? ',
              style: TextStyle(
                color: AppColors.greyColor,
                fontSize: 15.sp,
              ),
            ),
            TextSpan(
              text: 'Login',
              style: TextStyle(
                color: AppColors.mainColor,
                fontSize: 15.sp,
              ),
            ),
          ],
        )
    );
  }
}
