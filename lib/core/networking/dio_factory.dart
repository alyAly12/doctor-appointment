import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../helper/shared_pref_keys.dart';
import '../helper/shred_prefs.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      addDioInterceptors();
      return dio!;
    } else {
      return dio!;
    }
  }
  static void addDioHeaders()async {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${await SharedPrefsHelper.getSecureString(SharedPrefKeys.userToken)}',
    };
  }
  static void refreshHeaderAfterLogin(String token)async{
    dio?.options.headers = {
      'Authorization': 'Bearer ${await SharedPrefsHelper.getSecureString(SharedPrefKeys.userToken)}',
    };
  }

  static void addDioInterceptors() {
    dio?.interceptors.add(PrettyDioLogger(
        requestBody: true, requestHeader: true, responseHeader: true));
  }
}
