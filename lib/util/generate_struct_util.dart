///@desc 根据parameters 生成构造函数
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
  sb.write('})');
  return sb.toString();
}

///@desc 根据parameters 生成fromJson构造函数(别名构造函数)
genrateFromJsonConstructorByParameters(String reqClassName, List parameters) {
  var sb = StringBuffer();
  sb.write('''
  $reqClassName.fromJsom(Map<String, dynamic> json) {
''');
  for (var item in parameters) {
    sb.write('''
      ${item['name']} = json['${item['name']}'];
''');
  }
  sb.write('}');
  return sb.toString();
}

///@desc 根据parameters 生成toJson函数
genrateToJsonByParameters(String reqClassName, List parameters) {
  var sb = StringBuffer();
  sb.write('''
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
''');
  for (var item in parameters) {
    sb.write('''
      data['${item['name']}'] =${item['name']};
''');
  }
  sb.write('return data;');
  sb.write('}');
  return sb.toString();
}
