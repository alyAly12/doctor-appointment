import 'package:doctor_appointment/core/routing/app_router.dart';
import 'package:doctor_appointment/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child:  MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splashScreen,
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: AppColors.mainColor,
            scaffoldBackgroundColor: AppColors.whiteColor
          ),
          onGenerateRoute: appRouter.generateRoute,
    ),
    );
  }
}
