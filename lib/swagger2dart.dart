import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:dio/dio.dart';
import 'package:swagger2dart/extension/string_extension.dart';
import 'package:swagger2dart/model/request_get_dto.dart' as request_get_dto;
import 'package:swagger2dart/model/request_post_dto.dart' as request_post_dto;

import 'constant.dart';

final formatter = DartFormatter();

int calculate() {
  return 6 * 7;
}

final rootDir = 'api';

/// @desc
fetchData() async {
  print("请输入swagger api url");
  // Reading name of the Geek
  // String? url = stdin.readLineSync();

  // Printing the name
  // print("swagger_url======$url");

  // BaseOptions options = BaseOptions()..baseUrl = url!;
  BaseOptions options = BaseOptions();

  Dio dio = Dio(options);
  // ..interceptors.add(
  //   PrettyDioLogger(
  //     requestHeader: true,
  //     requestBody: true,
  //     responseBody: true,
  //     responseHeader: false,
  //     error: true,
  //     compact: true,
  //     maxWidth: 200,
  //   ),
  // );

  // http://47.97.6.227:8081

  var response = await dio.get('http://47.97.6.227:8081/v2/api-docs');

  // var rootDir =
  //     (response.data['info']['title'] as String).transformClassName2FileName();

  await Directory('package').create();
  await Directory('package/net').create();

  await initDio();

  await Directory('package/$rootDir').create();

  createFileRecursively('package/$rootDir/struct.dart', '''
  /// GENERATED CODE - DO NOT MODIFY BY HAND
  /// **************************************************************************
  /// struct.dart
  /// **************************************************************************
  ''');
  createFileRecursively('package/$rootDir/service.dart', '''
  /// GENERATED CODE - DO NOT MODIFY BY HAND
  /// **************************************************************************
  /// service.dart
  /// **************************************************************************
  
  import 'struct.dart';
  import '../net/http_util.dart';
  class ApiService {
  ${generateServiceContent(response.data)}
  }
  ''');
}

initDio() async {
  createFileRecursively('package/net/http.dart', Constant.http);
  createFileRecursively('package/net/cache.dart', Constant.cache);
  createFileRecursively('package/net/proxy.dart', Constant.proxy);
  createFileRecursively('package/net/http_util.dart', Constant.httpUtil);
}

var reqSb = StringBuffer();

/// @desc generateServiceContent
generateServiceContent(Map data) {
  var sb = StringBuffer();
  (data['paths'] as Map).forEach((key, value) {
    if ((key as String).contains('web') || (key as String).contains('test')) {
    } else if ((value as Map).containsKey('get')) {
      print('============== $key');
      var getDTO = request_get_dto.RequestGetDTO.fromJson(value['get']);
      // 将请求参数写到struct.dart
      // var reqSb = StringBuffer();
      reqSb.write('''
      class ${(key as String).pathNameToClassName()}Req {
        ${generateGetReqParams(getDTO.parameters ?? [])} 
        ${generateGetReqConstructor(getDTO.parameters ?? [], (key).pathNameToClassName())} 
        ${generateGetReqFromJsonConstructor(getDTO.parameters ?? [], (key).pathNameToClassName())} 
        ${generateGetReqToJsonFunc(getDTO.parameters ?? [], (key).pathNameToClassName())} 
      }
      ''');
      // print(reqSb.toString());

      final hasParams = getDTO.parameters?.isNotEmpty ?? false;

      final className = (key).pathNameToClassName();

      sb.write('''
      ///@path $key
      ///@desc ${getDTO.summary}
      ///@method GET
      Future ${key.pathToFuncName()}(${hasParams ? '${className}Req req' : ''}) async{
        try {
          final response = await HttpUtils.get('$key', ${hasParams ? 'params: req.toJson()' : ''} );
        } catch (e) {
          rethrow;  
        }
      }
      ''');
    } else {
      var postDTO = request_post_dto.RequestPostDTO.fromJson(value['post']);
      sb.write('''
      ///@path $key
      ///@desc ${postDTO.summary}
      ///@method GET
      Future ${(key as String).pathToFuncName()}() async{
         try {
        } catch (e) {
          rethrow;  
        }
      }
      ''');
    }
  });

  appendToFile(reqSb.toString());

  return sb.toString();
}

/// @desc generateGetReqToJsonFunc
generateGetReqToJsonFunc(
    List<request_get_dto.Parameters> list, pathNameToClassName) {
  var sb = StringBuffer();
  sb.write('''
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
  ''');
  for (var e in list) {
    sb.write('''
    ${e.name} = ${e.name};
    ''');
  }
  sb.write('''
  return data;
  ''');
  sb.write('}');
  return sb.toString();
}

/// @desc generateGetReqFromJsonConstructor
generateGetReqFromJsonConstructor(
    List<request_get_dto.Parameters> list, pathNameToClassName) {
  var sb = StringBuffer();
  sb.write('''
    ${pathNameToClassName}Req.fromJson(Map<String, dynamic> json) {
            
    ''');
  for (var e in list) {
    sb.write('''
    ${e.name} = json['${e.name}'];
    ''');
  }
  sb.write('}');
  return sb.toString();
}

/// 生成请求参数的构造函数
generateGetReqConstructor(
    List<request_get_dto.Parameters> list, String className) {
  if (list.isEmpty) {
    return '';
  }
  var sb = StringBuffer();
  sb.write('''
    ${className}Req({
    ''');
  for (var e in list) {
    sb.write('''
    this.${e.name},
    ''');
  }
  sb.write('});');
  return sb.toString();
}

/// 生成get请求参数
generateGetReqParams(List<request_get_dto.Parameters> parameters) {
  var sb = StringBuffer();
  for (var e in parameters) {
    sb.write('''
    ${e.type?.transformTypeToDartClass()}? ${e.name}; 
    ''');
  }
  return sb.toString();
}

/// @desc createFileRecursively
void createFileRecursively(String filename, String content) {
  var file = File(filename);
  // if (!file.existsSync()) {
  file.create(recursive: true);
  file.writeAsString(content);
  // file.writeAsString(formatter.format(content));
  // }
}

File file = File('package/$rootDir/struct.dart');

void appendToFile(String content) async {
  await file.writeAsString(formatter.format(content), mode: FileMode.append);
}
