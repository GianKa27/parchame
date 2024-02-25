import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:parchame/core/http/interceptors.dart';
import 'package:parchame/env.dart';

class HttpClient {
  late Dio dio;

  HttpClient() {
    final BaseOptions options = BaseOptions(
        baseUrl: Env.baseUrl,
        contentType: 'application/json',
        sendTimeout: const Duration(seconds: 3),
        connectTimeout: const Duration(seconds: 3),
        receiveTimeout: const Duration(seconds: 10));

    dio = Dio(options);
    dio.interceptors.add(CustomInterceptors());
    dio.interceptors.add(RetryInterceptor(
      dio: dio,
      retries: 3, // retry count (optional)
      retryDelays: const [
        // set delays between retries (optional)
        Duration(seconds: 1), // wait 1 sec before first retry
        Duration(seconds: 2), // wait 2 sec before second retry
        Duration(seconds: 3), // wait 3 sec before third retry
      ],
    ));
  }
}
