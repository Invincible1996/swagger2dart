/// @date: 2022/8/26 17:08
/// @author: kevin
/// @description: dart

class Constant {
  static String http = r'''
  import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

import 'cache.dart';
import 'proxy.dart';
/// * @
class Http {
  ///超时时间
  static const int connectTimeout = 30000;
  static const int receiveTimeout = 30000;

  static final Http _instance = Http._internal();

  factory Http() => _instance;

  late Dio dio;

  final CancelToken _cancelToken = CancelToken();

  Http._internal() {
    BaseOptions options = BaseOptions(
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      headers: {},
    );

    // 添加拦截器
    dio = Dio(options);

    // 在调试模式下需要抓包调试，所以我们使用代理，并禁用HTTPS证书校验
    if (proxyEnable) {
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (client) {
        client.findProxy = (uri) {
          return "PROXY $proxyIP:$proxyPort";
        };
        //代理工具会提供一个抓包的自签名证书，会通不过证书校验，所以我们禁用证书校验
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
      };
    }
  }

  /// @params [map]
  /// @retun void
  /// @desc 设置headers
  void setHeaders(Map<String, dynamic> map) {
    dio.options.headers.addAll(map);
  }

  /// @params [token]
  /// @retun void
  /// @desc 取消请求
  void cancelRequests({CancelToken? token}) {
    token ?? _cancelToken.cancel("cancelled");
  }

  /// @params
  /// @params
  /// @retun void
  /// @desc  读取本地配置
  Map<String, dynamic> getAuthorizationHeader() {
    Map<String, String> headers;
    // String accessToken = Global.accessToken;
    String accessToken = "";
    headers = {
      'Authorization': 'JWT $accessToken',
    };
    return headers;
  }

  ///初始化公共属性
  ///
  /// [baseUrl] 地址前缀
  /// [connectTimeout] 连接超时赶时间
  /// [receiveTimeout] 接收超时赶时间
  /// [interceptors] 基础拦截器
  void init({String? baseUrl, int? connectTimeout, int? receiveTimeout}) {
    // dio.options = dio.options.copyWith(
    //   baseUrl: baseUrl,
    //   connectTimeout: connectTimeout,
    //   receiveTimeout: receiveTimeout,
    // );
    // dio.interceptors.addAll(interceptors);
  }

  /// restful get 操作
  Future get(
    String path, {
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
    bool refresh = false,
    bool noCache = !cacheEnable,
    String? cacheKey,
    bool cacheDisk = false,
  }) async {
    Options requestOptions = options ?? Options();
    // requestOptions = requestOptions.copyWith(extra: {
    //   "refresh": refresh,
    //   "noCache": noCache,
    //   "cacheKey": cacheKey,
    //   "cacheDisk": cacheDisk,
    // });
    // Map<String, dynamic> _authorization = getAuthorizationHeader();
    // requestOptions = requestOptions.copyWith(headers: _authorization);
    Response response;
    response = await dio.get(
      path,
      queryParameters: params,
      options: requestOptions,
      cancelToken: cancelToken ?? _cancelToken,
    );
    return response.data;
  }

  /// restful post 操作
  Future post(
    String path, {
    Map<String, dynamic>? params,
    data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    Options requestOptions = options ?? Options();
    // Map<String, dynamic> _authorization = getAuthorizationHeader();
    // requestOptions = requestOptions.copyWith(headers: _authorization);
    var response = await dio.post(
      path,
      data: data,
      queryParameters: params,
      options: requestOptions,
      cancelToken: cancelToken ?? _cancelToken,
    );
    return response.data;
  }
}
  ''';

  static String proxy = '''
// 是否启用代理
const proxyEnable = false;

/// 代理服务IP
const proxyIP = '192.168.204.17';

/// 代理服务端口
const proxyPort = 8888;

  ''';

  static String cache = '''
  ///
/// @date: 2022/7/12 13:53
/// @author: kevin
/// @description: dart
// 是否启用缓存
const cacheEnable = true;

// 缓存的最长时间，单位（秒）
const cacheMaxAge = 1000;

// 最大缓存数
const cacheMaxCount = 100;
''';

  static String httpUtil = '''
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
  ''';
}
