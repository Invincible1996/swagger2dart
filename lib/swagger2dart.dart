import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:dio/dio.dart';
import 'package:swagger2dart/constant.dart';
import 'package:swagger2dart/extension/string_extension.dart';
import 'package:swagger2dart/util/file_util.dart';
import './util/generate_struct_util.dart';

final formatter = DartFormatter();

int calculate() {
  return 6 * 7;
}

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
  var rootDir = 'api';
  await Directory('package').create();
  await Directory('package/net').create();

  await initDio();

  await Directory('package/$rootDir').create();

  // createFileRecursively('package/$rootDir/struct.dart', '''
  // /// GENERATED CODE - DO NOT MODIFY BY HAND
  // /// **************************************************************************
  // /// struct.dart
  // /// **************************************************************************
  // ${generateStructContent(response.data)}
  // ''');
  createFileRecursively('package/$rootDir/service.dart', '''
  /// GENERATED CODE - DO NOT MODIFY BY HAND
  /// **************************************************************************
  /// service.dart
  /// **************************************************************************

  import 'struct.dart';
  import '../net/http_util.dart';
  // class ${response.data['info']['title']}Service {
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

/// @desc generateServiceContent
generateServiceContent(Map data) {
  var sb = StringBuffer();
  (data['paths'] as Map).forEach((key, value) {
    print('generateServiceContent========$key');
    print('${(key as String).pathNameToClassName()}ReqDTO');
    print(
        'pathToFuncName==========${(key.pathNameToClassName() as String).pathToFuncName()}');

    final funName = (key.pathNameToClassName() as String).pathToFuncName();
    final reqClassName = '${key.pathNameToClassName()}ReqDTO';

    if ((value as Map).containsKey('post')) {
      sb.write('''
    /// @path $key
    /// @desc ${value['post']['summary']}
    static Future<${generateResponseType(value['post']['responses'])}> $funName(${generatePostReq(value['post'], reqClassName)}) async{
     var path = '$key';
    var response = await HttpUtils.post(path, ${generatePostData(value['post'])});
    return ${generateReturnContent(value['post']['responses']['200']['schema'])}
    }
    ''');
    } else {
      sb.write('''
    /// @path $key
    /// @desc ${value['get']['summary']}
    static Future<${generateResponseType(value['get']['responses'])}> $funName(${generateGetReq(
        value['get'],
        reqClassName,
        value['get']['summary'],
      )}) async{
    var path = '$key';
    var response = await HttpUtils.get(path,params:req.toJson());
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

/// @desc
generatePostData(Map data) {
  if (data.containsKey('parameters')) {
    return 'data: req.toJson(),';
  } else {
    return '';
  }
}

genrateConstructorByParameters(String reqClassName, List parameters) {
  var sb = StringBuffer();
  sb.write('''
  $reqClassName({
''');
  for (var item in parameters) {
    sb.write('''
      this.${item['name']},
''');
  }

  sb.write('});');

  return sb.toString();
}

///@desc

///@desc
generateGetReq(Map data, String reqClassName, String desc) {
  if (data.containsKey('parameters')) {
    //
    var sb = StringBuffer();
    sb.write('''
  ///@desc $desc请求参数
  class $reqClassName {
''');
    for (var item in data['parameters']) {
      sb.write('''
      ${transformJavaToDart(item['type'])}? ${item['name']};
''');
    }
    sb.write(genrateConstructorByParameters(reqClassName, data['parameters']));
    sb.write(genrateFromJsonConstructorByParameters(
        reqClassName, data['parameters']));
    sb.write(genrateToJsonByParameters(reqClassName, data['parameters']));
    sb.write('}');

    print(sb.toString());
    //add to struct
    addContentToFile('package/api/struct.dart', sb.toString());

    return '$reqClassName req';
  } else {
    return '';
  }
}

transformJavaToDart(type) {
  switch (type) {
    case 'integer':
      return 'int';
    case 'string':
      return 'String';
    case 'boolean':
      return 'bool';
    default:
      return 'dynamic';
  }
}

/// @desc
generatePostReq(Map data, String reqClassName) {
  // if (data.containsKey('parameters')) {
  //   if (data['parameters'].first.containsKey('schema')) {
  //     return '${(data['parameters'].first['schema'][r'$ref'] as String).getClassNameByRef()} ${data['parameters'].first['name']}';
  //   } else {
  //     return 'Base';
  //   }
  // } else {
  //   return '';
  // }
  if (data.containsKey('parameters')) {
    return '$reqClassName req';
  } else {
    return '';
  }
}

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

/// @desc createFileRecursively
void createFileRecursively(String filename, String content) {
  var file = File(filename);
  // if (!file.existsSync()) {
  file.create(recursive: true);
  file.writeAsString(content);
  // file.writeAsString(formatter.format(content));
  // }
}
