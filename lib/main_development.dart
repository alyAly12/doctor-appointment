import 'package:doctor_appointment/core/di/dependency_injection.dart';
import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/routing/app_router.dart';
import 'package:doctor_appointment/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/helper/shared_pref_keys.dart';
import 'core/helper/shred_prefs.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkedIfLoggedInUser();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
checkedIfLoggedInUser()async{
  String? userToken = await SharedPrefsHelper.getSecureString(SharedPrefKeys.userToken);
  if(!userToken.isNullOrEmpty()){
    isLoggedInUser = true;
  }else{
    isLoggedInUser = false;
  }
}
