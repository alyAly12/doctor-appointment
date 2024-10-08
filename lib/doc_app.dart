import 'package:doctor_appointment/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/helper/shared_pref_keys.dart';
import 'core/routing/routes.dart';
import 'core/utils/app_colors.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child:  MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute:isLoggedInUser ? Routes.rootScreen : Routes.splashScreen,
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
