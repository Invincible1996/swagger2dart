/// GENERATED CODE - DO NOT MODIFY BY HAND
/// **************************************************************************
/// struct.dart
/// **************************************************************************
class TAuditReqVO {
  /// 学生系统 code ,不是 报名系统学生code;
  String? code;

  /// 是否审核通过 true通过，false驳回;
  bool? pass;

  /// 驳回理由;
  String? reason;

  TAuditReqVO({
    this.code,
    this.pass,
    this.reason,
  });

  TAuditReqVO.fromJson(Map<String, dynamic> json) {
    code = json[code];
    pass = json[pass];
    reason = json[reason];
  }
}

class TExamHistoryIdReqVO {
  /// 学员考试记录ID;
  int? examHistoryId;

  TExamHistoryIdReqVO({
    this.examHistoryId,
  });

  TExamHistoryIdReqVO.fromJson(Map<String, dynamic> json) {
    examHistoryId = json[examHistoryId];
  }
}

class TVisionCupStudentCodeReqVO {
  /// 报名系统学生code;
  String? studentCode;

  TVisionCupStudentCodeReqVO({
    this.studentCode,
  });

  TVisionCupStudentCodeReqVO.fromJson(Map<String, dynamic> json) {
    studentCode = json[studentCode];
  }
}

class TListExamsReqVO {
  /// 考试类型  1-考试 2-测试;
  int? examPaperId;

  /// 学生档案 学生CODE;
  String? studentCode;

  TListExamsReqVO({
    this.examPaperId,
    this.studentCode,
  });

  TListExamsReqVO.fromJson(Map<String, dynamic> json) {
    examPaperId = json[examPaperId];
    studentCode = json[studentCode];
  }
}

class TStatusChangeReqVO {
  /// 在读年级;
  int? gradeCode;

  /// 学生编号;
  String? studentCode;

  TStatusChangeReqVO({
    this.gradeCode,
    this.studentCode,
  });

  TStatusChangeReqVO.fromJson(Map<String, dynamic> json) {
    gradeCode = json[gradeCode];
    studentCode = json[studentCode];
  }
}

class TVisionCupStudInfoReqVo {
  /// code;
  String? code;

  /// 合新系统 线索id ;
  String? hexinUid;

  TVisionCupStudInfoReqVo({
    this.code,
    this.hexinUid,
  });

  TVisionCupStudInfoReqVo.fromJson(Map<String, dynamic> json) {
    code = json[code];
    hexinUid = json[hexinUid];
  }
}

class TVisionCupStudentInfoReqVO {
  /// 报名系统学生编号;
  String? studentCode;

  TVisionCupStudentInfoReqVO({
    this.studentCode,
  });

  TVisionCupStudentInfoReqVO.fromJson(Map<String, dynamic> json) {
    studentCode = json[studentCode];
  }
}

class TVisionCupStudentListReqVO {
  /// 准考证号;
  String? examCertNo;

  /// 在读年级列表;
  List<int>? gradeCnList;

  /// 当前页;
  int? pageNumber;

  /// 分页长度;
  int? pageSize;

  /// 手机号;
  String? phone;

  /// 报名来源 1销售邀约，2自主报名;
  int? registerSource;

  /// 报名状态列表  0-未点击，1-未完善，2-未审核, 3-待考试,4-驳回,5-已考试, 8-背景营 9-牛剑营  ;
  List<int>? registerStatusList;

  /// 在读学校;
  String? schoolName;

  /// 成绩等级  S,A,B+,B-,C  ;
  List<String>? scoreLevelList;

  /// 学生姓名;
  String? studentName;

  TVisionCupStudentListReqVO({
    this.examCertNo,
    this.gradeCnList,
    this.pageNumber,
    this.pageSize,
    this.phone,
    this.registerSource,
    this.registerStatusList,
    this.schoolName,
    this.scoreLevelList,
    this.studentName,
  });

  TVisionCupStudentListReqVO.fromJson(Map<String, dynamic> json) {
    examCertNo = json[examCertNo];
    gradeCnList = json[gradeCnList];
    pageNumber = json[pageNumber];
    pageSize = json[pageSize];
    phone = json[phone];
    registerSource = json[registerSource];
    registerStatusList = json[registerStatusList];
    schoolName = json[schoolName];
    scoreLevelList = json[scoreLevelList];
    studentName = json[studentName];
  }
}
