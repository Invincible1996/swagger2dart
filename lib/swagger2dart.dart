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
  // var response = await dio.get(
  //     'https://u-k8s-app.visioneschool.com/swagger/qc-service/v2/api-docs');

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
var structClassList = [];

/// @desc generateServiceContent
generateServiceContent(Map data) {
  var sb = StringBuffer();

  // 根据definitions 生成struct
  (data['definitions'] as Map).forEach((key, value) {
    if ((key as String).contains('»')) {
      return;
    } else {
      var className = key;
      // 根据key生成className
      reqSb.write('''
      class $className{
        ${generateParamsByProperties(key, value['properties'])}
        ${generateConstructorByProperties(className, key, value['properties'])}
        ${generateFromJsonConstructorByProperties(className, key, value['properties'])}
        ${generateToJsonFuncByProperties(className, key, value['properties'])}
      }
    ''');
    }
  });

  (data['paths'] as Map).forEach((key, value) {
    if ((key as String).contains('web') || (key).contains('test')) {
    } else if ((value as Map).containsKey('get')) {
      var getDTO = request_get_dto.RequestGetDTO.fromJson(value['get']);
      // 将请求参数写到struct.dart
      // var reqSb = StringBuffer();
      reqSb.write('''
      class ${(key).pathNameToClassName()}Req {
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
      // post 请求
      var postDTO = request_post_dto.RequestPostDTO.fromJson(value['post']);
      print('path==== $key');
      // print(postDTO.parameters?.first.schema);
      final schema = postDTO.parameters?.first.schema;
      final hasParams = schema != null;
      var className = '';
      if (schema != null) {
        className = schema[r'$ref'].split('/').last;
        print(schema[r'$ref'].split('/').last);
      }

      final fucParams = hasParams ? '$className req' : '';

      sb.write('''
      ///@path $key
      ///@desc ${postDTO.summary}
      ///@method POST
      Future ${(key).pathToFuncName()}($fucParams) async{
         try {
         final response = await  await HttpUtils.post('$key', ${hasParams ? 'data: req.toJson()' : ''} );
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

///@desc 根据properties生成toJson方法
generateToJsonFuncByProperties(String className, String key, value) {
  var sb = StringBuffer();
  sb.write('''
  Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = <String, dynamic>{};  
  ''');

  value.forEach((key, value) {
    if (!(value as Map).containsKey(r'$ref')) {
      if ((value as Map).containsKey('type') &&
          value['type'] == 'array' &&
          (value as Map).containsKey('items') &&
          (value['items'] as Map).containsKey(r'$ref')) {
        // 如果是数组
        sb.write('''
        if ($key != null) {
      data['$key'] = this.$key!.map((v) => v.toJson()).toList();
        }
        ''');
      } else {
        sb.write('''
    data['$key'] = $key;
    ''');
      }
    }
  });

  sb.write('''
    return data;
  }
  ''');

  return sb.toString();
}

///@desc
generateFromJsonConstructorByProperties(
    String className, String key, properties) {
  var sb = StringBuffer();
  sb.write('''
  $className.fromJson(Map<String, dynamic> json) {
  ''');

  properties.forEach((key, value) {
    if (!(value as Map).containsKey(r'$ref')) {
      if ((value as Map).containsKey('type') &&
          value['type'] == 'array' &&
          (value as Map).containsKey('items') &&
          (value['items'] as Map).containsKey(r'$ref')) {
        // 如果是数组 从items 中获取类型
        final className = (value['items'] as Map)[r'$ref'].split('/').last;
        sb.write('''
        if (json['$key'] != null) {
      $key= <$className>[];
      json['$key'].forEach((v) {
        $key!.add($className.fromJson(v));
      });
    }
        ''');
      } else {
        sb.write('''
     $key = json['$key'];
    ''');
      }
    }
  });

  sb.write('''
  }
  ''');
  return sb.toString();
}

///@desc
generateConstructorByProperties(String className, String key, properties) {
  var sb = StringBuffer();
  sb.write('''
  $className({
  ''');
  properties.forEach((key, value) {
    //
    if (!(value as Map).containsKey(r'$ref')) {
      sb.write('''
    this.$key,
    ''');
    }
  });
  sb.write('''
  });
  ''');
  return sb.toString();
}

/// 根据properties 生成成员变量
generateParamsByProperties(String key, Map properties) {
  if (key.contains('«')) {
    return '';
  }
  var sb = StringBuffer();
  properties.forEach((key, value) {
    //
    if (!(value as Map).containsKey(r'$ref')) {
      if (value['type'] == 'array') {
        // 获取范型
        if ((value['items'] as Map).containsKey(r'$ref')) {
          var type = value['items'][r'$ref'].split('/').last;
          sb.write('''
        List<$type>? $key;
        ''');
        } else {
          var type =
              (value['items']['type'] as String).transformTypeToDartClass();
          sb.write('''
          List<$type>? $key;
          ''');
        }
      } else {
        sb.write('''
    ${(value['type'] as String).transformTypeToDartClass()}? $key;
    ''');
      }
    }
  });

  return sb.toString();
}

/// @desc generateGetReqToJsonFunc
generateGetReqToJsonFunc(
    List<request_get_dto.Parameters> list, pathNameToClassName) {
  var sb = StringBuffer();
  sb.write('''
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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
