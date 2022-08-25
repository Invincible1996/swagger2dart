/// GENERATED CODE - DO NOT MODIFY BY HAND
/// **************************************************************************
/// struct.dart
/// **************************************************************************
class TVisionCupApplyReqVo {
  /// 证件号码;
  String? certNo;

  /// 证件类型;
  int? certType;

  /// 投放渠道;
  String? channel;

  /// 在读年级;
  int? gradeCode;

  /// 短信验证码;
  String? messageCheckCode;

  /// 家长姓名;
  String? parentName;

  /// 家长手机号码;
  String? parentPhone;

  /// 手机号码;
  String? phone;

  /// 一级渠道来源;
  String? primarySource;

  /// 在读学校;
  String? schoolCode;

  /// 在读学校名称， 有code取code，没code取name;
  String? schoolName;

  /// 二级渠道来源;
  String? secondarySource;

  /// 学生code;
  String? studentCode;

  /// 学生姓名;
  String? studentName;

  TVisionCupApplyReqVo({
    this.certNo,
    this.certType,
    this.channel,
    this.gradeCode,
    this.messageCheckCode,
    this.parentName,
    this.parentPhone,
    this.phone,
    this.primarySource,
    this.schoolCode,
    this.schoolName,
    this.secondarySource,
    this.studentCode,
    this.studentName,
  });

  TVisionCupApplyReqVo.fromJson(Map<String, dynamic> json) {
    certNo = json['certNo'];
    certType = json['certType'];
    channel = json['channel'];
    gradeCode = json['gradeCode'];
    messageCheckCode = json['messageCheckCode'];
    parentName = json['parentName'];
    parentPhone = json['parentPhone'];
    phone = json['phone'];
    primarySource = json['primarySource'];
    schoolCode = json['schoolCode'];
    schoolName = json['schoolName'];
    secondarySource = json['secondarySource'];
    studentCode = json['studentCode'];
    studentName = json['studentName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['certNo'] = certNo;
    data['certType'] = certType;
    data['channel'] = channel;
    data['gradeCode'] = gradeCode;
    data['messageCheckCode'] = messageCheckCode;
    data['parentName'] = parentName;
    data['parentPhone'] = parentPhone;
    data['phone'] = phone;
    data['primarySource'] = primarySource;
    data['schoolCode'] = schoolCode;
    data['schoolName'] = schoolName;
    data['secondarySource'] = secondarySource;
    data['studentCode'] = studentCode;
    data['studentName'] = studentName;

    return data;
  }
}

class TVisionCupApplyRespVo {
  /// 准考证号 报名成功才会有数据;
  String? examCertNo;

  /// 手机号码;
  String? phone;

  /// 报名状态：0-未点击，1-未完善，2-未审核, 3-待考试,4-驳回,5-已考试, 8-背景营 9-牛剑营 ;
  int? registerStatus;

  /// token;
  String? token;

  TVisionCupApplyRespVo({
    this.examCertNo,
    this.phone,
    this.registerStatus,
    this.token,
  });

  TVisionCupApplyRespVo.fromJson(Map<String, dynamic> json) {
    examCertNo = json['examCertNo'];
    phone = json['phone'];
    registerStatus = json['registerStatus'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['examCertNo'] = examCertNo;
    data['phone'] = phone;
    data['registerStatus'] = registerStatus;
    data['token'] = token;

    return data;
  }
}

class TCheckMessageCheckCodeReqVo {
  /// 短信验证码;
  String? messageCheckCode;

  /// 手机号码;
  String? phone;

  TCheckMessageCheckCodeReqVo({
    this.messageCheckCode,
    this.phone,
  });

  TCheckMessageCheckCodeReqVo.fromJson(Map<String, dynamic> json) {
    messageCheckCode = json['messageCheckCode'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['messageCheckCode'] = messageCheckCode;
    data['phone'] = phone;

    return data;
  }
}

class TCertNoLoginInfoReqVo {
  /// 准考证号;
  String? examCertNo;

  /// 手机号码;
  String? studentName;

  TCertNoLoginInfoReqVo({
    this.examCertNo,
    this.studentName,
  });

  TCertNoLoginInfoReqVo.fromJson(Map<String, dynamic> json) {
    examCertNo = json['examCertNo'];
    studentName = json['studentName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['examCertNo'] = examCertNo;
    data['studentName'] = studentName;

    return data;
  }
}

class TLoginInfoRespVo {
  /// token;
  String? token;

  TLoginInfoRespVo({
    this.token,
  });

  TLoginInfoRespVo.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = token;

    return data;
  }
}

class TMessageLoginInfoReqVo {
  /// 短信验证码;
  String? messageCheckCode;

  /// 手机号码;
  String? phone;

  /// 学生姓名;
  String? studentName;

  TMessageLoginInfoReqVo({
    this.messageCheckCode,
    this.phone,
    this.studentName,
  });

  TMessageLoginInfoReqVo.fromJson(Map<String, dynamic> json) {
    messageCheckCode = json['messageCheckCode'];
    phone = json['phone'];
    studentName = json['studentName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['messageCheckCode'] = messageCheckCode;
    data['phone'] = phone;
    data['studentName'] = studentName;

    return data;
  }
}

class TLoginInfoRespVo {
  /// token;
  String? token;

  TLoginInfoRespVo({
    this.token,
  });

  TLoginInfoRespVo.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = token;

    return data;
  }
}

class TGradeInfoRespVo {
  /// 返回数据;
  List<TGradeInfo>? dataList;

  TGradeInfoRespVo({
    this.dataList,
  });

  TGradeInfoRespVo.fromJson(Map<String, dynamic> json) {
    if (dataList != null) {
      dataList = <TGradeInfo>[];
      json['dataList'].forEach((v) {
        dataList!.add(TGradeInfo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (dataList != null) {
      data['dataList'] = dataList!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class TMessageCheckCodeReqVo {
  /// 图片验证码;
  String? checkCode;

  /// 1-报名，2-登录;
  int? messageType;

  /// 手机号码;
  String? phone;

  /// 图片随带code;
  String? picCode;

  TMessageCheckCodeReqVo({
    this.checkCode,
    this.messageType,
    this.phone,
    this.picCode,
  });

  TMessageCheckCodeReqVo.fromJson(Map<String, dynamic> json) {
    checkCode = json['checkCode'];
    messageType = json['messageType'];
    phone = json['phone'];
    picCode = json['picCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['checkCode'] = checkCode;
    data['messageType'] = messageType;
    data['phone'] = phone;
    data['picCode'] = picCode;

    return data;
  }
}

class TPictureCheckCodeRespVo {
  /// 图片随带code;
  String? picCode;

  /// 图片;
  String? picStr;

  TPictureCheckCodeRespVo({
    this.picCode,
    this.picStr,
  });

  TPictureCheckCodeRespVo.fromJson(Map<String, dynamic> json) {
    picCode = json['picCode'];
    picStr = json['picStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['picCode'] = picCode;
    data['picStr'] = picStr;

    return data;
  }
}

class TLinkInfoReqVo {
  /// 链接;
  String? link;

  TLinkInfoReqVo({
    this.link,
  });

  TLinkInfoReqVo.fromJson(Map<String, dynamic> json) {
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['link'] = link;

    return data;
  }
}

class TLinkInfoRespVo {
  /// 证件号码;
  String? certNo;

  /// 证件类型;
  int? certType;

  /// 课程顾问姓名;
  String? consultantName;

  /// 准考证号码;
  String? examCertNo;

  /// 在读年级;
  int? gradeCode;

  /// 在读年级名称;
  String? gradeName;

  /// 家长姓名;
  String? parentName;

  /// 家长手机号码;
  String? parentPhone;

  /// 手机号码;
  String? phone;

  /// 在读学校;
  String? schoolCode;

  /// 在读学校名称， 有code取code，没code取name;
  String? schoolName;

  /// 学生姓名;
  String? studentName;

  TLinkInfoRespVo({
    this.certNo,
    this.certType,
    this.consultantName,
    this.examCertNo,
    this.gradeCode,
    this.gradeName,
    this.parentName,
    this.parentPhone,
    this.phone,
    this.schoolCode,
    this.schoolName,
    this.studentName,
  });

  TLinkInfoRespVo.fromJson(Map<String, dynamic> json) {
    certNo = json['certNo'];
    certType = json['certType'];
    consultantName = json['consultantName'];
    examCertNo = json['examCertNo'];
    gradeCode = json['gradeCode'];
    gradeName = json['gradeName'];
    parentName = json['parentName'];
    parentPhone = json['parentPhone'];
    phone = json['phone'];
    schoolCode = json['schoolCode'];
    schoolName = json['schoolName'];
    studentName = json['studentName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['certNo'] = certNo;
    data['certType'] = certType;
    data['consultantName'] = consultantName;
    data['examCertNo'] = examCertNo;
    data['gradeCode'] = gradeCode;
    data['gradeName'] = gradeName;
    data['parentName'] = parentName;
    data['parentPhone'] = parentPhone;
    data['phone'] = phone;
    data['schoolCode'] = schoolCode;
    data['schoolName'] = schoolName;
    data['studentName'] = studentName;

    return data;
  }
}

class TMiddleSchoolQueryRequest {
  /// 城市;
  String? city;

  /// 国家;
  String? country;

  /// 学校名称;
  String? name;

  /// 省;
  String? province;

  /// 学校类型 初中 高中;
  int? type;

  TMiddleSchoolQueryRequest({
    this.city,
    this.country,
    this.name,
    this.province,
    this.type,
  });

  TMiddleSchoolQueryRequest.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    country = json['country'];
    name = json['name'];
    province = json['province'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = city;
    data['country'] = country;
    data['name'] = name;
    data['province'] = province;
    data['type'] = type;

    return data;
  }
}

class TMiddleSchoolResponse {
  /// 当前页;
  int? pageNumber;

  /// 分页长度;
  int? pageSize;

  /// 开始页码;
  int? pageStart;

  /// 中学模型;
  List<TMiddleSchool>? records;

  /// 总页码;
  int? totalCount;

  TMiddleSchoolResponse({
    this.pageNumber,
    this.pageSize,
    this.pageStart,
    this.records,
    this.totalCount,
  });

  TMiddleSchoolResponse.fromJson(Map<String, dynamic> json) {
    pageNumber = json['pageNumber'];
    pageSize = json['pageSize'];
    pageStart = json['pageStart'];
    if (records != null) {
      records = <TMiddleSchool>[];
      json['records'].forEach((v) {
        records!.add(TMiddleSchool.fromJson(v));
      });
    }
    totalCount = json['totalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pageNumber'] = pageNumber;
    data['pageSize'] = pageSize;
    data['pageStart'] = pageStart;
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    data['totalCount'] = totalCount;

    return data;
  }
}
