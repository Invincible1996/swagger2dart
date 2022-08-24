import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:dio/dio.dart';
import 'package:swagger2dart/extension/string_extension.dart';
import 'package:swagger2dart/util/index.dart';

final formatter = DartFormatter();

int calculate() {
  return 6 * 7;
}

fetchData() async {
  print("请输入swagger api url");
  // Reading name of the Geek
  // String? url = stdin.readLineSync();

  // Printing the name
  // print("swagger_url======$url");

  BaseOptions options = BaseOptions()..baseUrl = 'https://t-k8s-app.visioneschool.com';

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
  var formatMap = {};
  // generate struct
  // generateStruct(response);

  // generate service
  generateService(response, formatMap);
}

/// @params
/// @params
/// @return
/// @desc generateService
void generateService(Response<dynamic> response, Map<dynamic, dynamic> formatMap) {
  (response.data['paths'] as Map).forEach((key, value) {
    // print(key);
    // print((value as Map).containsKey('post'));
    if ((value).containsKey('post')) {
      if (!formatMap.containsKey(value['post']['tags']?.first)) {
        formatMap.putIfAbsent(
            value['post']['tags']?.first,
            () => [
                  {
                    'path': key,
                    'value': value,
                  }
                ]);
      } else {
        formatMap[value['post']['tags']?.first].add({
          'path': key,
          'value': value,
        });
      }
    } else {
      if (!formatMap.containsKey(value['get']['tags']?.first)) {
        formatMap.putIfAbsent(
            value['get']['tags']?.first,
            () => [
                  {
                    'path': key,
                    'value': value,
                  }
                ]);
      } else {
        formatMap[value['get']['tags']?.first].add({
          'path': key,
          'value': value,
        });
      }
    }
  });
  formatMap.forEach((key, value) {
    // create directory
    Directory('struct/${(key as String).formatFileName()}').create();

    // create struct.dart
    createFileRecursively(
      'struct/${key.formatFileName()}/struct.dart',
      '''/// GENERATED CODE - DO NOT MODIFY BY HAND
      /// **************************************************************************
      /// struct.dart
      /// **************************************************************************
      ${writeContentToStruct(response, value)}
        ''',
    );

    // createFileRecursively(
    //   'service/$key.dart'.formatFileName(),
    //   '''
    //     /// @params
    //     /// @return
    //     /// @desc
    //     class ${(key).transformFileNameToClassName()} {
    //       ${generateDescription(value)}
    //     }
    //     ''',
    // );
  });
}

/// @params
/// @params
/// @return
/// @desc writeContentToStruct
writeContentToStruct(response, List value) {
  var sb = StringBuffer();
  for (var item in value) {
    if ((item['value'] as Map).containsKey('post')) {
      if ((item['value']['post'] as Map).containsKey('parameters')) {
        // generate request struct
        if (!sb.toString().contains((item['value']['post']['parameters'].first['schema'][r'$ref'] as String).getClassNameByRef())) {
          sb.write('''
      class ${(item['value']['post']['parameters'].first['schema'][r'$ref'] as String).getClassNameByRef()}{
      ${generateReqVariables(response, (item['value']['post']['parameters'].first['schema'][r'$ref'] as String).getClassNameByRef())}
      ${generateConstructor(response, (item['value']['post']['parameters'].first['schema'][r'$ref'] as String).getClassNameByRef())}
      ${generateNamedConstructor(response, (item['value']['post']['parameters'].first['schema'][r'$ref'] as String).getClassNameByRef())}
      }
      ''');
          sb.write('''
          ${generateReqClass(response, (item['value']['post']['parameters'].first['schema'][r'$ref'] as String).getClassNameByRef())}
          ''');
        }
      }
    } else {
      if ((item['value']['get'] as Map).containsKey('parameters')) {
        // generate request struct
        if (!sb.toString().contains((item['value']['get']['parameters'].first['schema'][r'$ref'] as String).getClassNameByRef())) {
          sb.write('''
      class ${(item['value']['get']['parameters'].first['schema'][r'$ref'] as String).getClassNameByRef()}{
        ${generateReqVariables(response, (item['value']['get']['parameters'].first['schema'][r'$ref'] as String).getClassNameByRef())}
        ${generateConstructor(response, (item['value']['get']['parameters'].first['schema'][r'$ref'] as String).getClassNameByRef())}
      ${generateNamedConstructor(response, (item['value']['get']['parameters'].first['schema'][r'$ref'] as String).getClassNameByRef())}
      }
      ''');
          sb.write('''
          ${generateReqClass(response, (item['value']['get']['parameters'].first['schema'][r'$ref'] as String).getClassNameByRef())}
          ''');
        }
      }
    }
  }
  return sb.toString();
}

/// @params
/// @params
/// @return
/// @desc generateNamedConstructor
generateNamedConstructor(response, classNameByRef) {
  var sb = StringBuffer();
  sb.write('''
  $classNameByRef.fromJson(Map<String, dynamic> json) {
  ${generateReqNamedConstructorVariables(response, classNameByRef)}
  }
  ''');
  return sb.toString();
}

/// @params
/// @params
/// @return
/// @desc generateReqNamedConstructorVariables
generateReqNamedConstructorVariables(response, className) {
  var sb = StringBuffer();
  printMsg(response.data['definitions'][className]);

  (response.data['definitions'][className]['properties'] as Map).forEach((key, value) {
    print(key);
    print(value['type']);
    sb.write('''
    $key = json[$key];
    ''');
  });

  return sb.toString();
}

/// @params
/// @params
/// @return
/// @desc 声称构造函数
generateConstructor(response, classNameByRef) {
  var sb = StringBuffer();
  sb.write('''
  $classNameByRef({
      ${generateReqConstructorVariables(response, classNameByRef)}
  });
  ''');

  return sb.toString();
}

/// @params
/// @params
/// @return
/// @desc generateReqVariables
generateReqConstructorVariables(response, className) {
  // get request dto from definitions
  var sb = StringBuffer();
  printMsg(response.data['definitions'][className]);

  (response.data['definitions'][className]['properties'] as Map).forEach((key, value) {
    print(key);
    print(value['type']);
    sb.write('''
    this.$key,
    ''');
  });

  return sb.toString();
}

/// @params
/// @params
/// @return
/// @desc
generateReqClass(response, className) {
  var sb = StringBuffer();
  (response.data['definitions'][className]['properties'] as Map).forEach((key, value) {
    if (value['type'] == 'array' && (value['items'] as Map).containsKey(r'$ref')) {
      sb.write('''
     class ${getListGeneric(value)} {
      ${generateReqVariables(response, getListGeneric(value))}
      ${generateConstructor(response, getListGeneric(value))}
      ${generateNamedConstructor(response, getListGeneric(value))}
     }
      ''');
    }
  });
  return sb.toString();
}

/// @params
/// @params
/// @return
/// @desc generateReqVariables
generateReqVariables(response, className) {
  // get request dto from definitions
  var sb = StringBuffer();
  printMsg(response.data['definitions'][className]);

  (response.data['definitions'][className]['properties'] as Map).forEach((key, value) {
    print(key);
    print(value['type']);
    if (value['type'] == 'string') {
      sb.write('''
      /// ${value['description']};
      ''');
      sb.write('''
      String? $key;
      ''');
    } else if (value['type'] == 'integer') {
      sb.write('''
      /// ${value['description']};
      ''');
      sb.write('''
      int? $key;
      ''');
    } else if (value['type'] == 'boolean') {
      sb.write('''
      /// ${value['description']};
      ''');
      sb.write('''
      bool? $key;
      ''');
    } else if (value['type'] == 'array') {
      sb.write('''
      /// ${value['description']};
      ''');
      sb.write('''
      List<${getListGeneric(value)}>? $key;
      ''');
    }
  });

  return sb.toString();
}

/// @params
/// @params
/// @return
/// @desc generateStruct
void generateStruct(Response<dynamic> response) {
  (response.data['definitions'] as Map).forEach((key, value) {
    if (!(key as String).startsWith('ReplyEntity')) {
      createFileRecursively(
        'struct/$key.dart',
        '''
            /// @params
            /// @return
            /// @desc
            class $key{
              ${generateVariable(key, value)}
            }
            ''',
      );
    }
  });
}

/// @params
/// @params
/// @return
/// @desc
generateVariable(String pKey, Map pValue) {
  var sb = StringBuffer();
  (pValue['properties'] as Map).forEach((key, value) {
    if (value['type'] == 'string') {
      sb.write('''/// ${value['description']}
      String? $key;
      ''');
    } else if (value['type'] == 'integer') {
      sb.write('''/// ${value['description']}
      int? $key;
      ''');
    } else if (value['type'] == 'array' && (value as Map).containsKey('items')) {
      sb.write('''
      class ${getListGeneric(value)}
      ''');
    }
  });
  return sb.toString();
}

/// @params
/// @params
/// @return
/// @desc
getListGeneric(Map value) {
  if (value.containsKey('items')) {
    print(value['items']);
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
/// @desc
generateDescription(List value) {
  var sb = StringBuffer();
  for (var value in value) {
    if ((value['value'] as Map).containsKey('post')) {
      sb.write('''///@ path ${value['path']}
    ///@ desc ${value['value']['post']['summary']}
    Future ${value['value']['post']['operationId']}() async{
    }
     ''');
    } else {
      sb.write('''///@ path ${value['path']}
    ///@ desc ${value['value']['get']['summary']}
    Future ${value['value']['get']['operationId']}() async{
    }
     ''');
    }
  }
  return sb.toString();
}

void createFileRecursively(String filename, String content) {
  // Create a new directory, recursively creating non-existent directories.
  // Directory.fromPath(Path(filename).directoryPath).createSync(recursive: true);
  var file = File(filename);
  // if (!file.existsSync()) {
  file.create(recursive: true);
  file.writeAsString(content);
  // file.writeAsString(formatter.format(content));
  // }
}
