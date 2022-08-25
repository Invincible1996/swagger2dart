/// GENERATED CODE - DO NOT MODIFY BY HAND
/// **************************************************************************
/// struct.dart
/// **************************************************************************
class NotifyChangeCustomerNameReqVo {
  /// 客户编码;
  String? customerCode;

  /// 客户新名字;
  String? name;

  NotifyChangeCustomerNameReqVo({
    this.customerCode,
    this.name,
  });

  NotifyChangeCustomerNameReqVo.fromJson(Map<String, dynamic> json) {
    customerCode = json['customerCode'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customerCode'] = customerCode;
    data['name'] = name;

    return data;
  }
}
