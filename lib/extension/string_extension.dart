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
    return firstLetterLowercase();
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

  /// @desc
  transformClassName2FileName() {
    var str = '';
    var newList = runes.map((int rune) {
      var character = String.fromCharCode(rune);
      if (character.toUpperCase() == character) {
        str += '_${character.toLowerCase()}';
        return '_${character.toLowerCase()}';
      } else {
        str += character;
        return character;
      }
    }).toList();
    // for (var item in newList) {
    //   str += item;
    // }
    print(str.replaceFirst('_', ''));
    return str.replaceFirst('_', '');
  }
}
