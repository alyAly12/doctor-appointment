import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networking/api_service.dart';
import 'package:doctor_appointment/core/networking/dio_factory.dart';
import 'package:doctor_appointment/features/login_feature/data/repos/login_repo.dart';
import 'package:doctor_appointment/features/signup_feature/data/repos/signup_repo.dart';
import 'package:doctor_appointment/features/signup_feature/logic/signup_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/login_feature/logic/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
// Dio & Api service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
//   Repositories

//   Login repo
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // Signup repo
  getIt.registerLazySingleton<SignupRepo>(()=>SignupRepo(getIt()));


// Cubits

// login cubit
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // signup cubit
  getIt.registerFactory<SignupCubit>(()=>SignupCubit(getIt()));
}
