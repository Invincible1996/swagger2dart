import 'package:dio/dio.dart';

import 'cache.dart';
import 'http.dart';

class HttpUtils {
  static void init({
    String? baseUrl,
    int? connectTimeout,
    int? receiveTimeout,
    // List<Interceptor>? interceptors,
  }) {
    Http().init(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      // interceptors: interceptors!,
    );
  }

  static void setHeaders(Map<String, dynamic> map) {
    Http().setHeaders(map);
  }

  static void cancelRequests({CancelToken? token}) {
    Http().cancelRequests(token: token!);
  }

  static Future get(
    String path, {
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
    bool refresh = false,
    bool noCache = !cacheEnable,
    String? cacheKey,
    bool cacheDisk = false,
  }) async {
    return await Http().get(
      path,
      params: params,
      options: options,
      cancelToken: cancelToken,
      refresh: refresh,
      noCache: noCache,
      cacheKey: cacheKey,
    );
  }

  static Future post(
    String path, {
    data,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return await Http().post(
      path,
      data: data,
      params: params,
      options: options,
      cancelToken: cancelToken,
    );
  }
}
