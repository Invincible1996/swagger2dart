/// GENERATED CODE - DO NOT MODIFY BY HAND
/// **************************************************************************
/// struct.dart
/// **************************************************************************
class TVisionCupStudInfoRespVo {
  /// 证件号码;
  String? certNo;

  /// 证件类型;
  int? certType;

  /// 课程顾问;
  String? consultantName;

  /// 课程顾问电话;
  String? consultantPhone;

  /// 准考证号;
  String? examCertNo;

  /// 在读年级;
  int? gradeCode;

  /// 在读年级名称;
  String? gradeName;

  /// 唯寻杯链接;
  String? invigilateLink;

  /// 问卷调查是否完成 1-完成 0-未完成;
  int? isFinishInvigilate;

  /// 是否第一次测试 1-是，0-不是;
  int? isFirstTest;

  /// 家长姓名;
  String? parentName;

  /// 家长手机号码;
  String? parentPhone;

  /// 手机号码;
  String? phone;

  /// 报名链接;
  String? registerLink;

  /// 报名来源;
  int? registerSource;

  /// 报名状态：0-未点击，1-未完善，2-未审核, 3-待考试,4-驳回,5-已考试, 8-背景营 9-牛剑营;
  int? registerStatus;

  /// 驳回原因;
  String? rejectReason;

  /// 在读学校;
  String? schoolCode;

  /// 在读学校名称， 有code取code，没code取name;
  String? schoolName;

  /// 成绩等级;
  String? scoreLevel;

  /// 报名系统学生code;
  String? studentCode;

  /// 姓名;
  String? studentName;

  TVisionCupStudInfoRespVo({
    this.certNo,
    this.certType,
    this.consultantName,
    this.consultantPhone,
    this.examCertNo,
    this.gradeCode,
    this.gradeName,
    this.invigilateLink,
    this.isFinishInvigilate,
    this.isFirstTest,
    this.parentName,
    this.parentPhone,
    this.phone,
    this.registerLink,
    this.registerSource,
    this.registerStatus,
    this.rejectReason,
    this.schoolCode,
    this.schoolName,
    this.scoreLevel,
    this.studentCode,
    this.studentName,
  });

  TVisionCupStudInfoRespVo.fromJson(Map<String, dynamic> json) {
    certNo = json['certNo'];
    certType = json['certType'];
    consultantName = json['consultantName'];
    consultantPhone = json['consultantPhone'];
    examCertNo = json['examCertNo'];
    gradeCode = json['gradeCode'];
    gradeName = json['gradeName'];
    invigilateLink = json['invigilateLink'];
    isFinishInvigilate = json['isFinishInvigilate'];
    isFirstTest = json['isFirstTest'];
    parentName = json['parentName'];
    parentPhone = json['parentPhone'];
    phone = json['phone'];
    registerLink = json['registerLink'];
    registerSource = json['registerSource'];
    registerStatus = json['registerStatus'];
    rejectReason = json['rejectReason'];
    schoolCode = json['schoolCode'];
    schoolName = json['schoolName'];
    scoreLevel = json['scoreLevel'];
    studentCode = json['studentCode'];
    studentName = json['studentName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['certNo'] = certNo;
    data['certType'] = certType;
    data['consultantName'] = consultantName;
    data['consultantPhone'] = consultantPhone;
    data['examCertNo'] = examCertNo;
    data['gradeCode'] = gradeCode;
    data['gradeName'] = gradeName;
    data['invigilateLink'] = invigilateLink;
    data['isFinishInvigilate'] = isFinishInvigilate;
    data['isFirstTest'] = isFirstTest;
    data['parentName'] = parentName;
    data['parentPhone'] = parentPhone;
    data['phone'] = phone;
    data['registerLink'] = registerLink;
    data['registerSource'] = registerSource;
    data['registerStatus'] = registerStatus;
    data['rejectReason'] = rejectReason;
    data['schoolCode'] = schoolCode;
    data['schoolName'] = schoolName;
    data['scoreLevel'] = scoreLevel;
    data['studentCode'] = studentCode;
    data['studentName'] = studentName;

    return data;
  }
}
