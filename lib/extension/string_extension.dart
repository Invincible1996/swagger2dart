/// @date: 2022/8/23 11:43
/// @author: kevin
/// @description: dart
extension StringExtension on String {
  ///@desc
  pathNameToClassName() {
    var className = StringBuffer();
    List<String> pathList = split('/');
    for (var item in pathList) {
      if (item.isNotEmpty) {
        className.write(item.firstLetterUppercase());
      }
    }
    return className.toString();
  }

  ///@desc
  pathToFuncName() {
    final s = pathNameToClassName();
    return '${s.substring(0, 1).toLowerCase()}${s.substring(1)}';
  }

  /// @desc
  formatFileName() {
    return replaceAll('-', '_');
  }

  /// @desc
  transformFileNameToClassName() {
    var list = split('-')
        .map(
          (e) => e.firstLetterUppercase(),
        )
        .toList();
    var sb = StringBuffer();
    for (var item in list) {
      sb.write(item);
    }
    return sb.toString();
  }

  /// @return
  /// @desc
  firstLetterUppercase() {
    return '${substring(0, 1).toUpperCase()}${substring(1)}';
  }

  /// @return
  /// @desc
  firstLetterLowercase() {
    return '${substring(0, 1).toLowerCase()}${substring(1)}';
  }

  /// @desc
  String getClassNameByRef() {
    return split('/').last;
  }

  /// @desc
  getReplyEntityGeneric() {
    return split("«").last.split("»").first;
  }

  transformTypeToDartClass() {
    switch (this) {
      case 'string':
        return 'String';
      case 'integer':
        return 'int';
      case 'boolean':
        return 'bool';
      case 'number':
        return 'double';
      case 'array':
        return 'List';
      case 'object':
        return 'Map';
    }
  }

  getClassNameFromDefinitionWithList() {
    int startIndex = indexOf("«");
    int endIndex = lastIndexOf("»");

    if (startIndex != -1 && endIndex != -1 && endIndex > startIndex) {
      String typeField = substring(startIndex + 1, endIndex);
      print(typeField);
      return typeField.split("«").last.split("»").first;
    } else {
      print("无法提取类型字段");
      return '';
    }
  }

  getTypeFromProperties() {
    switch (this) {

    }
  }
}
