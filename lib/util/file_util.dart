/// @Author: kevin
/// @Date: 2023-04-17
/// @Description:

import 'dart:io';

void addContentToFile(String filePath, String contentToAdd) {
  final file = File(filePath);
  if (file.existsSync()) {
    file.writeAsStringSync(contentToAdd, mode: FileMode.append);
  }
}
