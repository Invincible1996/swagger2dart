/// @date: 2022/8/23 11:43
/// @author: kevin
/// @description: dart
extension StringExtension on String {
  /// @params
  /// @params
  /// @return
  /// @desc
  formatFileName() {
    return replaceAll('-', '_');
  }

  /// @params
  /// @params
  /// @return
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

  /// @params
  /// @params
  /// @return
  /// @desc
  firstLetterUppercase() {
    return '${substring(0, 1).toUpperCase()}${substring(1)}';
  }

  /// "#/definitions/TChartDataReqVO"
  /// @params
  /// @params
  /// @return
  /// @desc
  String getClassNameByRef() {
    return split('/').last;
  }

  /// @params
  /// @params
  /// @return
  /// @desc
  getReplyEntityGeneric() {
    return split("«").last.split("»").first;
  }

  /// @params
  /// @params
  /// @return
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
