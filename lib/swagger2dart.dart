import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:dio/dio.dart';
import 'package:swagger2dart/constant.dart';
import 'package:swagger2dart/extension/string_extension.dart';

final formatter = DartFormatter();

int calculate() {
  return 6 * 7;
}

/// @params
/// @params
/// @return
/// @desc
fetchData() async {
  print("请输入swagger api url");
  // Reading name of the Geek
  // String? url = stdin.readLineSync();

  // Printing the name
  // print("swagger_url======$url");

  BaseOptions options = BaseOptions()
    ..baseUrl = 'https://t-k8s-app.visioneschool.com';

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

  var response = await dio.post('/swagger/visioncup/v2/api-docs');

  var rootDir =
      (response.data['info']['title'] as String).transformClassName2FileName();
  await Directory('package').create();
  await Directory('package/net').create();

  await initDio();

  await Directory('package/$rootDir').create();

  createFileRecursively('package/$rootDir/struct.dart', '''
  /// GENERATED CODE - DO NOT MODIFY BY HAND
  /// **************************************************************************
  /// struct.dart
  /// **************************************************************************
  ${generateStructContent(response.data)}
  ''');
  createFileRecursively('package/$rootDir/service.dart', '''
  /// GENERATED CODE - DO NOT MODIFY BY HAND
  /// **************************************************************************
  /// service.dart
  /// **************************************************************************

  import 'struct.dart';
  import '../net/http_util.dart';
  class ${response.data['info']['title']}Service {
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

/// @params
/// @params
/// @return
/// @desc generateServiceContent
generateServiceContent(Map data) {
  var sb = StringBuffer();
  (data['paths'] as Map).forEach((key, value) {
    if ((value as Map).containsKey('post')) {
      sb.write('''
    /// @path $key
    /// @desc ${value['post']['summary']}
    Future<${generateResponseType(value['post']['responses'])}> ${value['post']['operationId']}(${generateReq(value['post'])}) async{
     var path = '$key';
    var response = await HttpUtils.post(path, ${generatePostData(value['post'])});
    return ${generateReturnContent(value['post']['responses']['200']['schema'])}
    }
    ''');
    } else {
      sb.write('''
    /// @path $key
    /// @desc ${value['get']['summary']}
    Future<${generateResponseType(value['get']['responses'])}> ${value['get']['operationId']}(${generateReq(value['get'])}) async{
    var path = '$key';
    var response = await HttpUtils.get(path);
     return ${generateReturnContent(value['get']['responses']['200']['schema'])}
    }
    ''');
    }
  });
  return sb.toString();
}

/// @params [data]
/// @return
/// @desc generateReturnContent
generateReturnContent(Map data) {
  if (data.containsKey(r'$ref')) {
    if ((data[r'$ref'] as String).getClassNameByRef().getReplyEntityGeneric() ==
            'object' ||
        (data[r'$ref'] as String).getClassNameByRef().getReplyEntityGeneric() ==
            'boolean') {
      return 'response;';
    }
    return '${(data[r'$ref'] as String).getClassNameByRef().getReplyEntityGeneric()}.fromJson(response);';
  }
  return 'response;';
}

/// @params [data]
/// @return
/// @desc generateResponseType
generateResponseType(Map data) {
  if ((data['200']['schema'] as Map).containsKey(r'$ref')) {
    return (data['200']['schema'][r'$ref'] as String)
                    .getClassNameByRef()
                    .getReplyEntityGeneric() ==
                'object' ||
            (data['200']['schema'][r'$ref'] as String)
                    .getClassNameByRef()
                    .getReplyEntityGeneric() ==
                'boolean'
        ? 'dynamic'
        : (data['200']['schema'][r'$ref'] as String)
            .getClassNameByRef()
            .getReplyEntityGeneric();
  } else {
    return 'dynamic';
  }
}

/// @params
/// @params
/// @return
/// @desc
generatePostData(Map data) {
  if (data.containsKey('parameters')) {
    return 'data: input.toJson(),';
  } else {
    return '';
  }
}

/// @params
/// @params
/// @return
/// @desc
generateReq(Map data) {
  if (data.containsKey('parameters')) {
    return '${(data['parameters'].first['schema'][r'$ref'] as String).getClassNameByRef()} ${data['parameters'].first['name']}';
  } else {
    return '';
  }
}

/// @params
/// @params
/// @return
/// @desc
generateStructContent(Map value) {
  var sb = StringBuffer();
  (value['definitions'] as Map).forEach((key, value) {
    if (!(key as String).contains('ReplyEntity')) {
      sb.write('''
     class  $key {
     ${generateVariables(value)}
     ${generateConstructors(key, value)}
     ${generateNamedConstructors(key, value)}
     ${generate2Json(key, value)}
     }
      ''');
    }
  });
  return sb.toString();
}

/// @params
/// @params
/// @return
/// @desc generate2Json
generate2Json(String className, Map data) {
  var sb = StringBuffer();
  sb.write('''
  Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = {};
  ''');
  (data['properties'] as Map).forEach((key, value) {
    if (value['type'] == 'array' &&
        !(value['items'] as Map).containsKey('type')) {
      sb.write('''
      if ($key != null) {
      data['$key'] = $key!.map((v) => v.toJson()).toList();
    }
      ''');
    } else {
      sb.write('''
    data['$key']=$key;
    ''');
    }
  });
  sb.write('''
  return data;
  }
  ''');

  return sb.toString();
}

/// @params
/// @params
/// @return
/// @desc generateConstructors
generateConstructors(String className, Map data) {
  var sb = StringBuffer();
  sb.write('''
  $className({
  ''');
  (data['properties'] as Map).forEach((key, _) {
    sb.write('''
    this.$key,
    ''');
  });
  sb.write('''
  });
  ''');

  return sb.toString();
}

/// @params
/// @params
/// @return
/// @desc generateNamedConstructors
generateNamedConstructors(String className, Map data) {
  var sb = StringBuffer();
  sb.write('''
  $className.fromJson(Map<String, dynamic> json) {
  ''');
  (data['properties'] as Map).forEach((key, value) {
    if (value['type'] == 'array' &&
        !(value['items'] as Map).containsKey('type')) {
      sb.write('''
      if(json['$key'] != null){
        $key = <${getListGeneric(value)}>[];
        json['$key'].forEach((v){
        $key!.add(${getListGeneric(value)}.fromJson(v));
        });
      }
      ''');
    } else {
      sb.write('''
    $key = json['$key'];
    ''');
    }
  });
  sb.write('''
  }
  ''');
  return sb.toString();
}

/// @params
/// @params
/// @return
/// @desc generateVariables
generateVariables(Map data) {
  var sb = StringBuffer();
  (data['properties'] as Map).forEach((key, value) {
    sb.write('''
      /// ${value['description']}
      ''');
    if (value['type'] == 'string') {
      sb.write('''
      String? $key;
      ''');
    } else if (value['type'] == 'integer' || value['type'] == 'number') {
      sb.write('''
      int? $key;
      ''');
    } else if (value['type'] == 'boolean') {
      sb.write('''
      bool? $key;
      ''');
    } else if (value['type'] == 'array') {
      sb.write('''
      List<${getListGeneric(value)}>? $key;
      ''');
    } else if ((value as Map).containsKey(r'$ref')) {
      sb.write('''
      ${value[r'$ref'].split('/').last}? $key;
      ''');
    }
  });

  return sb.toString();
}

/// @params
/// @params
/// @return
/// @desc getListGeneric
getListGeneric(Map value) {
  if (value.containsKey('items')) {
    if ((value['items'] as Map).containsKey(r'$ref')) {
      return (value['items'][r'$ref'] as String).getClassNameByRef();
    } else if (value['items']['type'] == 'integer') {
      return 'int';
    } else if (value['items']['type'] == 'string') {
      return 'String';
    }
  }
}

/// @params
/// @params
/// @return
/// @desc createFileRecursively
void createFileRecursively(String filename, String content) {
  var file = File(filename);
  // if (!file.existsSync()) {
  file.create(recursive: true);
  // file.writeAsString(content);
  file.writeAsString(formatter.format(content));
  // }
}
