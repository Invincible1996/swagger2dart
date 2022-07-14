import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:swagger2dart/swagger2dart.dart' as swagger2dart;

void main(List<String> arguments) async {
  print('Hello world: ${swagger2dart.calculate()}!');

  print("请输入swagger api url");
  // Reading name of the Geek
  String? url = stdin.readLineSync();

  // Printing the name
  print("swagger_url======$url");

  BaseOptions options = BaseOptions()..baseUrl = 'https://t-k8s-app.visioneschool.com';

  Dio dio = Dio(options)
    ..interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );

  var response = await dio.post('/swagger/visioncup/v2/api-docs');

  // print(response);
}
