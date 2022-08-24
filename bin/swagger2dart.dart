import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:swagger2dart/swagger2dart.dart' as swagger2dart;

void main(List<String> arguments) async {
  swagger2dart.fetchData();
}
