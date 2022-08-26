/// GENERATED CODE - DO NOT MODIFY BY HAND
/// **************************************************************************
/// struct.dart
/// **************************************************************************
class AreaData {
  /// null
  String? code;

  /// null
  String? name;

  AreaData({
    this.code,
    this.name,
  });

  AreaData.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['code'] = code;
    data['name'] = name;
    return data;
  }
}

class NotifyChangeCustomerNameReqVo {
  /// 客户编码
  String? customerCode;

  /// 客户新名字
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
    final Map<String, dynamic> data = {};
    data['customerCode'] = customerCode;
    data['name'] = name;
    return data;
  }
}

class QuizKnowledgeData {
  /// 知识点ID
  int? id;

  /// 知识点名称
  String? knowledgeName;

  QuizKnowledgeData({
    this.id,
    this.knowledgeName,
  });

  QuizKnowledgeData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    knowledgeName = json['knowledgeName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['knowledgeName'] = knowledgeName;
    return data;
  }
}

class TAnswerInvestigateReqVO {
  /// 学员答案
  String? answer;

  /// 其他内容
  String? elseContent;

  /// 题序号
  String? uid;

  TAnswerInvestigateReqVO({
    this.answer,
    this.elseContent,
    this.uid,
  });

  TAnswerInvestigateReqVO.fromJson(Map<String, dynamic> json) {
    answer = json['answer'];
    elseContent = json['elseContent'];
    uid = json['uid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['answer'] = answer;
    data['elseContent'] = elseContent;
    data['uid'] = uid;
    return data;
  }
}

class TAnswerInvestigatesReqVO {
  /// 答题内容
  List<TAnswerInvestigateReqVO>? records;

  TAnswerInvestigatesReqVO({
    this.records,
  });

  TAnswerInvestigatesReqVO.fromJson(Map<String, dynamic> json) {
    if (json['records'] != null) {
      records = <TAnswerInvestigateReqVO>[];
      json['records'].forEach((v) {
        records!.add(TAnswerInvestigateReqVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TAuditReqVO {
  /// 学生系统 code ,不是 报名系统学生code
  String? code;

  /// 是否审核通过 true通过，false驳回
  bool? pass;

  /// 驳回理由
  String? reason;

  TAuditReqVO({
    this.code,
    this.pass,
    this.reason,
  });

  TAuditReqVO.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    pass = json['pass'];
    reason = json['reason'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['code'] = code;
    data['pass'] = pass;
    data['reason'] = reason;
    return data;
  }
}

class TCertNoLoginInfoReqVo {
  /// 准考证号
  String? examCertNo;

  /// 手机号码
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
    final Map<String, dynamic> data = {};
    data['examCertNo'] = examCertNo;
    data['studentName'] = studentName;
    return data;
  }
}

class TChartDataReqVO {
  /// 如果是网络流量，该值代表网络流量
  String? content;

  /// 主键
  int? id;

  /// 时间 yyyy-MM-dd HH:mm:ss
  String? operateTime;

  /// 事件类型 1-进入考场，2-图片上传，3-摄像头丢失 4-焦点丢失，5-网络异常 7-回到考场 8-离开考场 9-交卷，,10-废弃
  int? operateType;

  TChartDataReqVO({
    this.content,
    this.id,
    this.operateTime,
    this.operateType,
  });

  TChartDataReqVO.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    id = json['id'];
    operateTime = json['operateTime'];
    operateType = json['operateType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['content'] = content;
    data['id'] = id;
    data['operateTime'] = operateTime;
    data['operateType'] = operateType;
    return data;
  }
}

class TCheckMessageCheckCodeReqVo {
  /// 短信验证码
  String? messageCheckCode;

  /// 手机号码
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
    final Map<String, dynamic> data = {};
    data['messageCheckCode'] = messageCheckCode;
    data['phone'] = phone;
    return data;
  }
}

class TExamAnswerListRespVO {
  /// 学员考试答题内容出参集
  List<TExamAnswerRespVO>? records;

  TExamAnswerListRespVO({
    this.records,
  });

  TExamAnswerListRespVO.fromJson(Map<String, dynamic> json) {
    if (json['records'] != null) {
      records = <TExamAnswerRespVO>[];
      json['records'].forEach((v) {
        records!.add(TExamAnswerRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TExamAnswerReqVO {
  /// 考试记录ID
  int? examHistoryId;

  /// 题目解答,答题内容;多选答案以英文逗号分隔拼接字符串，且进行自然排序
  String? questionAnswer;

  /// 题目序号
  int? questionOrder;

  /// 题目UID(教研系统题目UID)
  String? questionUid;

  TExamAnswerReqVO({
    this.examHistoryId,
    this.questionAnswer,
    this.questionOrder,
    this.questionUid,
  });

  TExamAnswerReqVO.fromJson(Map<String, dynamic> json) {
    examHistoryId = json['examHistoryId'];
    questionAnswer = json['questionAnswer'];
    questionOrder = json['questionOrder'];
    questionUid = json['questionUid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['examHistoryId'] = examHistoryId;
    data['questionAnswer'] = questionAnswer;
    data['questionOrder'] = questionOrder;
    data['questionUid'] = questionUid;
    return data;
  }
}

class TExamAnswerRespVO {
  /// 学员考试记录ID
  int? examHistoryId;

  /// 主键
  int? id;

  /// 学员答题内容
  String? questionAnswer;

  /// 题目序号
  int? questionOrder;

  /// 题目UID
  String? questionUid;

  TExamAnswerRespVO({
    this.examHistoryId,
    this.id,
    this.questionAnswer,
    this.questionOrder,
    this.questionUid,
  });

  TExamAnswerRespVO.fromJson(Map<String, dynamic> json) {
    examHistoryId = json['examHistoryId'];
    id = json['id'];
    questionAnswer = json['questionAnswer'];
    questionOrder = json['questionOrder'];
    questionUid = json['questionUid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['examHistoryId'] = examHistoryId;
    data['id'] = id;
    data['questionAnswer'] = questionAnswer;
    data['questionOrder'] = questionOrder;
    data['questionUid'] = questionUid;
    return data;
  }
}

class TExamEventSubmitReqVO {
  /// 考试记录ID
  int? examHistoryId;

  /// 事件名称
  String? name;

  /// 事件类型 1-进入考场，2-图片上传，3-摄像头丢失 4-焦点丢失，5-网络重连  7-回到考场 8-离开考场 9-交卷，,10-废弃,11-网络流量上传,12-全屏浏览器,13-非全屏浏览器,14-关闭浏览器
  int? operateType;

  /// 文件地址
  String? url;

  TExamEventSubmitReqVO({
    this.examHistoryId,
    this.name,
    this.operateType,
    this.url,
  });

  TExamEventSubmitReqVO.fromJson(Map<String, dynamic> json) {
    examHistoryId = json['examHistoryId'];
    name = json['name'];
    operateType = json['operateType'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['examHistoryId'] = examHistoryId;
    data['name'] = name;
    data['operateType'] = operateType;
    data['url'] = url;
    return data;
  }
}

class TExamEventSubmitRespVO {
  /// 扩展字段，operateType=4-焦点丢失时，返回本场考试焦点丢失发生总数
  String? resv;

  TExamEventSubmitRespVO({
    this.resv,
  });

  TExamEventSubmitRespVO.fromJson(Map<String, dynamic> json) {
    resv = json['resv'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['resv'] = resv;
    return data;
  }
}

class TExamHistoryIdReqVO {
  /// 学员考试记录ID
  int? examHistoryId;

  TExamHistoryIdReqVO({
    this.examHistoryId,
  });

  TExamHistoryIdReqVO.fromJson(Map<String, dynamic> json) {
    examHistoryId = json['examHistoryId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['examHistoryId'] = examHistoryId;
    return data;
  }
}

class TExamHistorysRespVO {
  /// 考试记录列表出参集
  List<TQueryExamHistoryRespVO>? records;

  TExamHistorysRespVO({
    this.records,
  });

  TExamHistorysRespVO.fromJson(Map<String, dynamic> json) {
    if (json['records'] != null) {
      records = <TQueryExamHistoryRespVO>[];
      json['records'].forEach((v) {
        records!.add(TQueryExamHistoryRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TExamPaperIdReqVO {
  /// 考试试卷ID
  int? examPaperId;

  TExamPaperIdReqVO({
    this.examPaperId,
  });

  TExamPaperIdReqVO.fromJson(Map<String, dynamic> json) {
    examPaperId = json['examPaperId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['examPaperId'] = examPaperId;
    return data;
  }
}

class TExamPaperInfoRespVO {
  /// 考试规定时长 秒为单位
  int? examDuration;

  /// 唯寻杯-考场表ID
  int? examRoomId;

  /// 考试试卷ID
  int? id;

  /// 等级 1-LEVEL1, 2-LEVEL2
  int? level;

  /// 是否开放时间 true是，false不是
  bool? open;

  /// 开放开始时间 yyyy-MM-dd HH:mm:ss
  String? openBeginTime;

  /// 开放结束时间 yyyy-MM-dd HH:mm:ss
  String? openEndTime;

  /// 开放月 yyyy-MM
  String? openMonth;

  /// 总题数
  int? questionCount;

  /// 试卷备注信息
  String? remark;

  /// 所属科目-1数学，2物理，3化学，4生物，5经济，6人文社科
  int? subject;

  TExamPaperInfoRespVO({
    this.examDuration,
    this.examRoomId,
    this.id,
    this.level,
    this.open,
    this.openBeginTime,
    this.openEndTime,
    this.openMonth,
    this.questionCount,
    this.remark,
    this.subject,
  });

  TExamPaperInfoRespVO.fromJson(Map<String, dynamic> json) {
    examDuration = json['examDuration'];
    examRoomId = json['examRoomId'];
    id = json['id'];
    level = json['level'];
    open = json['open'];
    openBeginTime = json['openBeginTime'];
    openEndTime = json['openEndTime'];
    openMonth = json['openMonth'];
    questionCount = json['questionCount'];
    remark = json['remark'];
    subject = json['subject'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['examDuration'] = examDuration;
    data['examRoomId'] = examRoomId;
    data['id'] = id;
    data['level'] = level;
    data['open'] = open;
    data['openBeginTime'] = openBeginTime;
    data['openEndTime'] = openEndTime;
    data['openMonth'] = openMonth;
    data['questionCount'] = questionCount;
    data['remark'] = remark;
    data['subject'] = subject;
    return data;
  }
}

class TGetChartDataRespVO {
  /// 考试事件发生数据列表
  List<TChartDataReqVO>? eventRecords;

  /// 网络流程数据列表
  List<TChartDataReqVO>? netRecords;

  TGetChartDataRespVO({
    this.eventRecords,
    this.netRecords,
  });

  TGetChartDataRespVO.fromJson(Map<String, dynamic> json) {
    if (json['eventRecords'] != null) {
      eventRecords = <TChartDataReqVO>[];
      json['eventRecords'].forEach((v) {
        eventRecords!.add(TChartDataReqVO.fromJson(v));
      });
    }
    if (json['netRecords'] != null) {
      netRecords = <TChartDataReqVO>[];
      json['netRecords'].forEach((v) {
        netRecords!.add(TChartDataReqVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (eventRecords != null) {
      data['eventRecords'] = eventRecords!.map((v) => v.toJson()).toList();
    }
    if (netRecords != null) {
      data['netRecords'] = netRecords!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TGetCurrentExamRespVO {
  /// 考试日期 yyyy-MM-dd
  String? examDate;

  /// level等级
  int? examLevel;

  /// 考卷ID
  int? examPaperId;

  /// 考场id
  int? examRoomId;

  /// 考试科目(冗余字段) 1数学，2物理，3化学，4生物，5经济，6人文社科
  int? examSubject;

  /// 考试类型 1-考试 2-测试
  int? examType;

  /// 主键
  int? id;

  /// 开考时间  yyyy-MM-dd HH:mm:ss
  String? startTime;

  /// 学生code
  String? studentCode;

  TGetCurrentExamRespVO({
    this.examDate,
    this.examLevel,
    this.examPaperId,
    this.examRoomId,
    this.examSubject,
    this.examType,
    this.id,
    this.startTime,
    this.studentCode,
  });

  TGetCurrentExamRespVO.fromJson(Map<String, dynamic> json) {
    examDate = json['examDate'];
    examLevel = json['examLevel'];
    examPaperId = json['examPaperId'];
    examRoomId = json['examRoomId'];
    examSubject = json['examSubject'];
    examType = json['examType'];
    id = json['id'];
    startTime = json['startTime'];
    studentCode = json['studentCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['examDate'] = examDate;
    data['examLevel'] = examLevel;
    data['examPaperId'] = examPaperId;
    data['examRoomId'] = examRoomId;
    data['examSubject'] = examSubject;
    data['examType'] = examType;
    data['id'] = id;
    data['startTime'] = startTime;
    data['studentCode'] = studentCode;
    return data;
  }
}

class TGradeDetailInfo {
  /// 对应国内年级
  int? cn;

  /// 唯一标志
  int? code;

  /// 年级名称
  String? text;

  TGradeDetailInfo({
    this.cn,
    this.code,
    this.text,
  });

  TGradeDetailInfo.fromJson(Map<String, dynamic> json) {
    cn = json['cn'];
    code = json['code'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['cn'] = cn;
    data['code'] = code;
    data['text'] = text;
    return data;
  }
}

class TGradeInfo {
  /// 体系中年级
  List<TGradeDetailInfo>? children;

  /// 体系
  String? text;

  TGradeInfo({
    this.children,
    this.text,
  });

  TGradeInfo.fromJson(Map<String, dynamic> json) {
    if (json['children'] != null) {
      children = <TGradeDetailInfo>[];
      json['children'].forEach((v) {
        children!.add(TGradeDetailInfo.fromJson(v));
      });
    }
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (children != null) {
      data['children'] = children!.map((v) => v.toJson()).toList();
    }
    data['text'] = text;
    return data;
  }
}

class TGradeInfoRespVo {
  /// 返回数据
  List<TGradeInfo>? dataList;

  TGradeInfoRespVo({
    this.dataList,
  });

  TGradeInfoRespVo.fromJson(Map<String, dynamic> json) {
    if (json['dataList'] != null) {
      dataList = <TGradeInfo>[];
      json['dataList'].forEach((v) {
        dataList!.add(TGradeInfo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (dataList != null) {
      data['dataList'] = dataList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TInvestigateOptionRespVO {
  /// 其他内容
  String? elseContent;

  /// 是否选择，1-选中，0-不选中
  int? isSelect;

  /// 选项内容
  String? name;

  /// 选项  A,B,C,D,E,F,G,H
  String? value;

  TInvestigateOptionRespVO({
    this.elseContent,
    this.isSelect,
    this.name,
    this.value,
  });

  TInvestigateOptionRespVO.fromJson(Map<String, dynamic> json) {
    elseContent = json['elseContent'];
    isSelect = json['isSelect'];
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['elseContent'] = elseContent;
    data['isSelect'] = isSelect;
    data['name'] = name;
    data['value'] = value;
    return data;
  }
}

class TInvestigateOptionVO {
  /// 是否选择，1-选中，0-不选中
  int? isSelect;

  /// 选项内容
  String? name;

  /// 选项  A,B,C,D,E,F,G,H
  String? value;

  TInvestigateOptionVO({
    this.isSelect,
    this.name,
    this.value,
  });

  TInvestigateOptionVO.fromJson(Map<String, dynamic> json) {
    isSelect = json['isSelect'];
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['isSelect'] = isSelect;
    data['name'] = name;
    data['value'] = value;
    return data;
  }
}

class TInvigilateAnswerRespVO {
  /// 学员答题内容
  String? answer;

  /// 主键、序号
  int? id;

  /// 是否必填 1-必填，0-非必填
  int? isRequired;

  /// 选项
  List<TInvestigateOptionRespVO>? options;

  /// 类型 1-单选 2-多选 3-问答
  int? quizType;

  /// 题干
  String? stem;

  TInvigilateAnswerRespVO({
    this.answer,
    this.id,
    this.isRequired,
    this.options,
    this.quizType,
    this.stem,
  });

  TInvigilateAnswerRespVO.fromJson(Map<String, dynamic> json) {
    answer = json['answer'];
    id = json['id'];
    isRequired = json['isRequired'];
    if (json['options'] != null) {
      options = <TInvestigateOptionRespVO>[];
      json['options'].forEach((v) {
        options!.add(TInvestigateOptionRespVO.fromJson(v));
      });
    }
    quizType = json['quizType'];
    stem = json['stem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['answer'] = answer;
    data['id'] = id;
    data['isRequired'] = isRequired;
    if (options != null) {
      data['options'] = options!.map((v) => v.toJson()).toList();
    }
    data['quizType'] = quizType;
    data['stem'] = stem;
    return data;
  }
}

class TInvigilateAnswersRespVO {
  /// 记录
  List<TInvigilateAnswerRespVO>? records;

  TInvigilateAnswersRespVO({
    this.records,
  });

  TInvigilateAnswersRespVO.fromJson(Map<String, dynamic> json) {
    if (json['records'] != null) {
      records = <TInvigilateAnswerRespVO>[];
      json['records'].forEach((v) {
        records!.add(TInvigilateAnswerRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TLinkCreateReqVo {
  /// 学生档案平台 studentCode
  String? code;

  TLinkCreateReqVo({
    this.code,
  });

  TLinkCreateReqVo.fromJson(Map<String, dynamic> json) {
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['code'] = code;
    return data;
  }
}

class TLinkGetReqVo {
  /// 学生档案平台 studentCode
  String? code;

  TLinkGetReqVo({
    this.code,
  });

  TLinkGetReqVo.fromJson(Map<String, dynamic> json) {
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['code'] = code;
    return data;
  }
}

class TLinkGetRespVo {
  /// 链接地址
  String? link;

  TLinkGetRespVo({
    this.link,
  });

  TLinkGetRespVo.fromJson(Map<String, dynamic> json) {
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['link'] = link;
    return data;
  }
}

class TLinkInfoReqVo {
  /// 链接
  String? link;

  TLinkInfoReqVo({
    this.link,
  });

  TLinkInfoReqVo.fromJson(Map<String, dynamic> json) {
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['link'] = link;
    return data;
  }
}

class TLinkInfoRespVo {
  /// 证件号码
  String? certNo;

  /// 证件类型
  int? certType;

  /// 课程顾问姓名
  String? consultantName;

  /// 准考证号码
  String? examCertNo;

  /// 在读年级
  int? gradeCode;

  /// 在读年级名称
  String? gradeName;

  /// 家长姓名
  String? parentName;

  /// 家长手机号码
  String? parentPhone;

  /// 手机号码
  String? phone;

  /// 在读学校
  String? schoolCode;

  /// 在读学校名称， 有code取code，没code取name
  String? schoolName;

  /// 学生姓名
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
    final Map<String, dynamic> data = {};
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

class TListExamEventRespVO {
  /// 主键
  int? id;

  /// 事件名称
  String? name;

  /// 时间 yyyy-MM-dd HH:mm:ss
  String? operateTime;

  /// 事件类型 1-进入考场，2-图片上传，3-摄像头丢失 4-焦点丢失，5-网络异常 7-回到考场 8-离开考场 9-交卷，,10-废弃
  int? operateType;

  /// 系统或者姓名
  String? operator;

  /// 地址
  String? url;

  TListExamEventRespVO({
    this.id,
    this.name,
    this.operateTime,
    this.operateType,
    this.operator,
    this.url,
  });

  TListExamEventRespVO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    operateTime = json['operateTime'];
    operateType = json['operateType'];
    operator = json['operator'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['operateTime'] = operateTime;
    data['operateType'] = operateType;
    data['operator'] = operator;
    data['url'] = url;
    return data;
  }
}

class TListExamEventsRespVO {
  /// 记录
  List<TListExamEventRespVO>? records;

  TListExamEventsRespVO({
    this.records,
  });

  TListExamEventsRespVO.fromJson(Map<String, dynamic> json) {
    if (json['records'] != null) {
      records = <TListExamEventRespVO>[];
      json['records'].forEach((v) {
        records!.add(TListExamEventRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TListExamRespVO {
  /// 是否正常答题 1-正常，0-作弊
  int? cheatingStatus;

  /// 考试耗时 秒为单位
  int? duration;

  /// 考试开始时间 yyyy-MM-dd HH:mm:ss
  String? endTime;

  /// 考试日期
  String? examDate;

  /// level
  int? examLevel;

  /// 月份 11月 1月 2月 6月
  String? examMonth;

  /// 试卷ID
  int? examPaperId;

  /// 考试得分
  int? examScore;

  /// 考试科目 1数学，2物理，3化学，4生物，5经济，6人文社科
  int? examSubject;

  /// 考试类型  1-考试 2-测试
  int? examType;

  /// 主键
  int? id;

  /// 考试开始时间 yyyy-MM-dd HH:mm:ss
  String? startTime;

  /// 报名系统学生code
  String? studentCode;

  TListExamRespVO({
    this.cheatingStatus,
    this.duration,
    this.endTime,
    this.examDate,
    this.examLevel,
    this.examMonth,
    this.examPaperId,
    this.examScore,
    this.examSubject,
    this.examType,
    this.id,
    this.startTime,
    this.studentCode,
  });

  TListExamRespVO.fromJson(Map<String, dynamic> json) {
    cheatingStatus = json['cheatingStatus'];
    duration = json['duration'];
    endTime = json['endTime'];
    examDate = json['examDate'];
    examLevel = json['examLevel'];
    examMonth = json['examMonth'];
    examPaperId = json['examPaperId'];
    examScore = json['examScore'];
    examSubject = json['examSubject'];
    examType = json['examType'];
    id = json['id'];
    startTime = json['startTime'];
    studentCode = json['studentCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['cheatingStatus'] = cheatingStatus;
    data['duration'] = duration;
    data['endTime'] = endTime;
    data['examDate'] = examDate;
    data['examLevel'] = examLevel;
    data['examMonth'] = examMonth;
    data['examPaperId'] = examPaperId;
    data['examScore'] = examScore;
    data['examSubject'] = examSubject;
    data['examType'] = examType;
    data['id'] = id;
    data['startTime'] = startTime;
    data['studentCode'] = studentCode;
    return data;
  }
}

class TListExamsReqVO {
  /// 考试类型  1-考试 2-测试
  int? examPaperId;

  /// 学生档案 学生CODE
  String? studentCode;

  TListExamsReqVO({
    this.examPaperId,
    this.studentCode,
  });

  TListExamsReqVO.fromJson(Map<String, dynamic> json) {
    examPaperId = json['examPaperId'];
    studentCode = json['studentCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['examPaperId'] = examPaperId;
    data['studentCode'] = studentCode;
    return data;
  }
}

class TListExamsRespVO {
  /// 考试记录
  List<TListExamRespVO>? records;

  TListExamsRespVO({
    this.records,
  });

  TListExamsRespVO.fromJson(Map<String, dynamic> json) {
    if (json['records'] != null) {
      records = <TListExamRespVO>[];
      json['records'].forEach((v) {
        records!.add(TListExamRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TListSuitExamRespVO {
  /// 否正常答题 1-正常，0-作弊
  int? cheatingStatus;

  /// 考试耗时 秒为单位
  int? duration;

  /// 考试开始时间 yyyy-MM-dd HH:mm:ss
  String? endTime;

  /// 考试日期
  String? examDate;

  /// level
  int? examLevel;

  /// 月份 11月 1月 2月 6月
  String? examMonth;

  /// 考场秩序 优+  优  良  差
  String? examOrderStatus;

  /// 试卷ID
  int? examPaperId;

  /// 考试得分 学情报告上得分
  String? examScore;

  /// 考试科目 1数学，2物理，3化学，4生物，5经济，6人文社科
  int? examSubject;

  /// 考试类型  1-考试 2-测试
  int? examType;

  /// 主键
  int? id;

  /// 考试开始时间 yyyy-MM-dd HH:mm:ss
  String? startTime;

  /// 报名系统学生code
  String? studentCode;

  TListSuitExamRespVO({
    this.cheatingStatus,
    this.duration,
    this.endTime,
    this.examDate,
    this.examLevel,
    this.examMonth,
    this.examOrderStatus,
    this.examPaperId,
    this.examScore,
    this.examSubject,
    this.examType,
    this.id,
    this.startTime,
    this.studentCode,
  });

  TListSuitExamRespVO.fromJson(Map<String, dynamic> json) {
    cheatingStatus = json['cheatingStatus'];
    duration = json['duration'];
    endTime = json['endTime'];
    examDate = json['examDate'];
    examLevel = json['examLevel'];
    examMonth = json['examMonth'];
    examOrderStatus = json['examOrderStatus'];
    examPaperId = json['examPaperId'];
    examScore = json['examScore'];
    examSubject = json['examSubject'];
    examType = json['examType'];
    id = json['id'];
    startTime = json['startTime'];
    studentCode = json['studentCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['cheatingStatus'] = cheatingStatus;
    data['duration'] = duration;
    data['endTime'] = endTime;
    data['examDate'] = examDate;
    data['examLevel'] = examLevel;
    data['examMonth'] = examMonth;
    data['examOrderStatus'] = examOrderStatus;
    data['examPaperId'] = examPaperId;
    data['examScore'] = examScore;
    data['examSubject'] = examSubject;
    data['examType'] = examType;
    data['id'] = id;
    data['startTime'] = startTime;
    data['studentCode'] = studentCode;
    return data;
  }
}

class TListSuitExamRoomRespVO {
  /// id 主键
  int? id;

  /// title 标题
  String? name;

  /// 考试记录
  List<TListSuitExamRespVO>? suitExamVos;

  TListSuitExamRoomRespVO({
    this.id,
    this.name,
    this.suitExamVos,
  });

  TListSuitExamRoomRespVO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['suitExamVos'] != null) {
      suitExamVos = <TListSuitExamRespVO>[];
      json['suitExamVos'].forEach((v) {
        suitExamVos!.add(TListSuitExamRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    if (suitExamVos != null) {
      data['suitExamVos'] = suitExamVos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TListSuitExamsRespVO {
  /// 考试记录
  List<TListSuitExamRoomRespVO>? records;

  TListSuitExamsRespVO({
    this.records,
  });

  TListSuitExamsRespVO.fromJson(Map<String, dynamic> json) {
    if (json['records'] != null) {
      records = <TListSuitExamRoomRespVO>[];
      json['records'].forEach((v) {
        records!.add(TListSuitExamRoomRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TListVolQuizzesRespVO {
  /// 题目列表
  List<TVolQuizOutData>? quizs;

  TListVolQuizzesRespVO({
    this.quizs,
  });

  TListVolQuizzesRespVO.fromJson(Map<String, dynamic> json) {
    if (json['quizs'] != null) {
      quizs = <TVolQuizOutData>[];
      json['quizs'].forEach((v) {
        quizs!.add(TVolQuizOutData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (quizs != null) {
      data['quizs'] = quizs!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TLoginInfoRespVo {
  /// token
  String? token;

  TLoginInfoRespVo({
    this.token,
  });

  TLoginInfoRespVo.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['token'] = token;
    return data;
  }
}

class TMessageCheckCodeReqVo {
  /// 图片验证码
  String? checkCode;

  /// 1-报名，2-登录
  int? messageType;

  /// 手机号码
  String? phone;

  /// 图片随带code
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
    final Map<String, dynamic> data = {};
    data['checkCode'] = checkCode;
    data['messageType'] = messageType;
    data['phone'] = phone;
    data['picCode'] = picCode;
    return data;
  }
}

class TMessageLoginInfoReqVo {
  /// 短信验证码
  String? messageCheckCode;

  /// 手机号码
  String? phone;

  /// 学生姓名
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
    final Map<String, dynamic> data = {};
    data['messageCheckCode'] = messageCheckCode;
    data['phone'] = phone;
    data['studentName'] = studentName;
    return data;
  }
}

class TMiddleSchool {
  /// null
  AreaData? city;

  /// null
  AreaData? country;

  /// null
  AreaData? province;

  /// null
  String? schoolAddress;

  /// null
  String? schoolCode;

  /// null
  String? schoolEnglishAddress;

  /// null
  String? schoolEnglishName;

  /// null
  String? schoolName;

  /// null
  int? schoolType;

  TMiddleSchool({
    this.city,
    this.country,
    this.province,
    this.schoolAddress,
    this.schoolCode,
    this.schoolEnglishAddress,
    this.schoolEnglishName,
    this.schoolName,
    this.schoolType,
  });

  TMiddleSchool.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    country = json['country'];
    province = json['province'];
    schoolAddress = json['schoolAddress'];
    schoolCode = json['schoolCode'];
    schoolEnglishAddress = json['schoolEnglishAddress'];
    schoolEnglishName = json['schoolEnglishName'];
    schoolName = json['schoolName'];
    schoolType = json['schoolType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['city'] = city;
    data['country'] = country;
    data['province'] = province;
    data['schoolAddress'] = schoolAddress;
    data['schoolCode'] = schoolCode;
    data['schoolEnglishAddress'] = schoolEnglishAddress;
    data['schoolEnglishName'] = schoolEnglishName;
    data['schoolName'] = schoolName;
    data['schoolType'] = schoolType;
    return data;
  }
}

class TMiddleSchoolQueryRequest {
  /// 城市
  String? city;

  /// 国家
  String? country;

  /// 学校名称
  String? name;

  /// 省
  String? province;

  /// 学校类型 初中 高中
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
    final Map<String, dynamic> data = {};
    data['city'] = city;
    data['country'] = country;
    data['name'] = name;
    data['province'] = province;
    data['type'] = type;
    return data;
  }
}

class TMiddleSchoolResponse {
  /// 当前页
  int? pageNumber;

  /// 分页长度
  int? pageSize;

  /// 开始页码
  int? pageStart;

  /// 中学模型
  List<TMiddleSchool>? records;

  /// 总页码
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
    if (json['records'] != null) {
      records = <TMiddleSchool>[];
      json['records'].forEach((v) {
        records!.add(TMiddleSchool.fromJson(v));
      });
    }
    totalCount = json['totalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
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

class TPictureCheckCodeRespVo {
  /// 图片随带code
  String? picCode;

  /// 图片
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
    final Map<String, dynamic> data = {};
    data['picCode'] = picCode;
    data['picStr'] = picStr;
    return data;
  }
}

class TQueryExamHistoryOpenMonthsRespVO {
  /// 考试月份 类似 2021-11
  String? openMonth;

  /// 考场列表出参集
  List<TQueryExamHistoryRespVO>? records;

  TQueryExamHistoryOpenMonthsRespVO({
    this.openMonth,
    this.records,
  });

  TQueryExamHistoryOpenMonthsRespVO.fromJson(Map<String, dynamic> json) {
    openMonth = json['openMonth'];
    if (json['records'] != null) {
      records = <TQueryExamHistoryRespVO>[];
      json['records'].forEach((v) {
        records!.add(TQueryExamHistoryRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['openMonth'] = openMonth;
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TQueryExamHistoryRespVO {
  /// 是否正常答题 1-正常，0-作弊
  int? cheatingStatus;

  /// 考试耗时 秒为单位
  int? duration;

  /// 考试日期 yyyy-MM-dd
  String? examDate;

  /// level 等级
  int? examLevel;

  /// 考试成绩
  int? examScore;

  /// 考试科目(冗余字段) 1数学，2物理，3化学，4生物，5经济，6人文社科
  int? examSubject;

  /// 考试类型  1-考试 2-测试
  int? examType;

  /// 主键
  int? id;

  /// 错误题数
  int? questionErrorCount;

  /// 正确题数
  int? questionRightCount;

  TQueryExamHistoryRespVO({
    this.cheatingStatus,
    this.duration,
    this.examDate,
    this.examLevel,
    this.examScore,
    this.examSubject,
    this.examType,
    this.id,
    this.questionErrorCount,
    this.questionRightCount,
  });

  TQueryExamHistoryRespVO.fromJson(Map<String, dynamic> json) {
    cheatingStatus = json['cheatingStatus'];
    duration = json['duration'];
    examDate = json['examDate'];
    examLevel = json['examLevel'];
    examScore = json['examScore'];
    examSubject = json['examSubject'];
    examType = json['examType'];
    id = json['id'];
    questionErrorCount = json['questionErrorCount'];
    questionRightCount = json['questionRightCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['cheatingStatus'] = cheatingStatus;
    data['duration'] = duration;
    data['examDate'] = examDate;
    data['examLevel'] = examLevel;
    data['examScore'] = examScore;
    data['examSubject'] = examSubject;
    data['examType'] = examType;
    data['id'] = id;
    data['questionErrorCount'] = questionErrorCount;
    data['questionRightCount'] = questionRightCount;
    return data;
  }
}

class TQueryExamHistorysRespVO {
  /// 考场列表出参集
  List<TQueryExamHistoryOpenMonthsRespVO>? records;

  TQueryExamHistorysRespVO({
    this.records,
  });

  TQueryExamHistorysRespVO.fromJson(Map<String, dynamic> json) {
    if (json['records'] != null) {
      records = <TQueryExamHistoryOpenMonthsRespVO>[];
      json['records'].forEach((v) {
        records!.add(TQueryExamHistoryOpenMonthsRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TQueryExamRespVO {
  /// 开始时间 yyyy-MM-dd HH:mm:ss
  String? beginTime;

  /// 结束时间 yyyy-MM-dd HH:mm:ss
  String? endTime;

  /// 开放月份 yyyy-MM-dd
  String? openMonth;

  /// 自定义展示内容 例如R2:  开放时间 01月15号 00：00 - 01月16号 23：59 / 01月22号 00：00 - 01月25号 23：59
  String? remark;

  /// 科目考场分类列表
  List<TSubjectExamsRespVO>? subjectExamList;

  TQueryExamRespVO({
    this.beginTime,
    this.endTime,
    this.openMonth,
    this.remark,
    this.subjectExamList,
  });

  TQueryExamRespVO.fromJson(Map<String, dynamic> json) {
    beginTime = json['beginTime'];
    endTime = json['endTime'];
    openMonth = json['openMonth'];
    remark = json['remark'];
    if (json['subjectExamList'] != null) {
      subjectExamList = <TSubjectExamsRespVO>[];
      json['subjectExamList'].forEach((v) {
        subjectExamList!.add(TSubjectExamsRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['beginTime'] = beginTime;
    data['endTime'] = endTime;
    data['openMonth'] = openMonth;
    data['remark'] = remark;
    if (subjectExamList != null) {
      data['subjectExamList'] =
          subjectExamList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TQueryExamsRespVO {
  /// 考场列表出参集
  List<TQueryExamRespVO>? records;

  TQueryExamsRespVO({
    this.records,
  });

  TQueryExamsRespVO.fromJson(Map<String, dynamic> json) {
    if (json['records'] != null) {
      records = <TQueryExamRespVO>[];
      json['records'].forEach((v) {
        records!.add(TQueryExamRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TQueryInvestigateRespVO {
  /// 主键
  int? id;

  /// 是否必填 1-必填，0-非必填
  int? isRequired;

  /// 学员答题内容
  List<TInvestigateOptionVO>? options;

  /// 类型 1-单选 2-多选 3-问答
  int? quizType;

  /// 题干
  String? stem;

  /// 序号
  String? uid;

  TQueryInvestigateRespVO({
    this.id,
    this.isRequired,
    this.options,
    this.quizType,
    this.stem,
    this.uid,
  });

  TQueryInvestigateRespVO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isRequired = json['isRequired'];
    if (json['options'] != null) {
      options = <TInvestigateOptionVO>[];
      json['options'].forEach((v) {
        options!.add(TInvestigateOptionVO.fromJson(v));
      });
    }
    quizType = json['quizType'];
    stem = json['stem'];
    uid = json['uid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['isRequired'] = isRequired;
    if (options != null) {
      data['options'] = options!.map((v) => v.toJson()).toList();
    }
    data['quizType'] = quizType;
    data['stem'] = stem;
    data['uid'] = uid;
    return data;
  }
}

class TQueryInvestigatesRespVO {
  /// 学员考试答题内容出参集
  List<TQueryInvestigateRespVO>? records;

  TQueryInvestigatesRespVO({
    this.records,
  });

  TQueryInvestigatesRespVO.fromJson(Map<String, dynamic> json) {
    if (json['records'] != null) {
      records = <TQueryInvestigateRespVO>[];
      json['records'].forEach((v) {
        records!.add(TQueryInvestigateRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TQueryPastProblemRespVO {
  /// 答案地址
  String? examAnswerUrl;

  /// 考题地址
  String? examProblemUrl;

  /// 等级 1 LEVEL1, 2 LEVEL2
  int? level;

  /// 等级 1 LEVEL1, 2 LEVEL2
  String? levelName;

  /// 阶段 1 R1,2 R2,3 R3,4 R4
  int? stage;

  /// 阶段 1 R1,2 R2,3 R3,4 R4
  String? stageName;

  TQueryPastProblemRespVO({
    this.examAnswerUrl,
    this.examProblemUrl,
    this.level,
    this.levelName,
    this.stage,
    this.stageName,
  });

  TQueryPastProblemRespVO.fromJson(Map<String, dynamic> json) {
    examAnswerUrl = json['examAnswerUrl'];
    examProblemUrl = json['examProblemUrl'];
    level = json['level'];
    levelName = json['levelName'];
    stage = json['stage'];
    stageName = json['stageName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['examAnswerUrl'] = examAnswerUrl;
    data['examProblemUrl'] = examProblemUrl;
    data['level'] = level;
    data['levelName'] = levelName;
    data['stage'] = stage;
    data['stageName'] = stageName;
    return data;
  }
}

class TQueryPastProblemsRespVO {
  /// 历届真题列表
  List<TYearPastProblemsRespVO>? records;

  TQueryPastProblemsRespVO({
    this.records,
  });

  TQueryPastProblemsRespVO.fromJson(Map<String, dynamic> json) {
    if (json['records'] != null) {
      records = <TYearPastProblemsRespVO>[];
      json['records'].forEach((v) {
        records!.add(TYearPastProblemsRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TQuizAnalysisData {
  /// null
  int? analysisStats;

  /// 解析内容 - 用于显示
  String? content;

  /// 可用于直接渲染内容, 适用于pc、app
  String? htmlContent;

  /// 图片内容
  String? imgContent;

  /// 原始的内容 - 用于编辑
  String? originContent;

  TQuizAnalysisData({
    this.analysisStats,
    this.content,
    this.htmlContent,
    this.imgContent,
    this.originContent,
  });

  TQuizAnalysisData.fromJson(Map<String, dynamic> json) {
    analysisStats = json['analysisStats'];
    content = json['content'];
    htmlContent = json['htmlContent'];
    imgContent = json['imgContent'];
    originContent = json['originContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['analysisStats'] = analysisStats;
    data['content'] = content;
    data['htmlContent'] = htmlContent;
    data['imgContent'] = imgContent;
    data['originContent'] = originContent;
    return data;
  }
}

class TQuizAnswerData {
  /// 答案内容 - 用于显示
  String? content;

  /// 可用于直接渲染内容, 适用于pc、app
  String? htmlContent;

  /// 图片内容
  String? imgContent;

  /// 原始的内容 - 用于编辑
  String? originContent;

  TQuizAnswerData({
    this.content,
    this.htmlContent,
    this.imgContent,
    this.originContent,
  });

  TQuizAnswerData.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    htmlContent = json['htmlContent'];
    imgContent = json['imgContent'];
    originContent = json['originContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['content'] = content;
    data['htmlContent'] = htmlContent;
    data['imgContent'] = imgContent;
    data['originContent'] = originContent;
    return data;
  }
}

class TQuizOptionData {
  /// 选项值
  String? aoVal;

  /// 选项内容
  String? content;

  /// 可用于直接渲染内容, 适用于pc、app
  String? htmlContent;

  /// 图片内容
  String? imgContent;

  /// 原始的内容 - 用于编辑
  String? originContent;

  TQuizOptionData({
    this.aoVal,
    this.content,
    this.htmlContent,
    this.imgContent,
    this.originContent,
  });

  TQuizOptionData.fromJson(Map<String, dynamic> json) {
    aoVal = json['aoVal'];
    content = json['content'];
    htmlContent = json['htmlContent'];
    imgContent = json['imgContent'];
    originContent = json['originContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['aoVal'] = aoVal;
    data['content'] = content;
    data['htmlContent'] = htmlContent;
    data['imgContent'] = imgContent;
    data['originContent'] = originContent;
    return data;
  }
}

class TRoomStudyReportRespVO {
  /// 记录
  List<TStudyReportRespVO>? records;

  /// 月份
  String? roomName;

  TRoomStudyReportRespVO({
    this.records,
    this.roomName,
  });

  TRoomStudyReportRespVO.fromJson(Map<String, dynamic> json) {
    if (json['records'] != null) {
      records = <TStudyReportRespVO>[];
      json['records'].forEach((v) {
        records!.add(TStudyReportRespVO.fromJson(v));
      });
    }
    roomName = json['roomName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    data['roomName'] = roomName;
    return data;
  }
}

class TStatusChangeReqVO {
  /// 在读年级
  int? gradeCode;

  /// 学生编号
  String? studentCode;

  TStatusChangeReqVO({
    this.gradeCode,
    this.studentCode,
  });

  TStatusChangeReqVO.fromJson(Map<String, dynamic> json) {
    gradeCode = json['gradeCode'];
    studentCode = json['studentCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['gradeCode'] = gradeCode;
    data['studentCode'] = studentCode;
    return data;
  }
}

class TStudyReportRespVO {
  /// 学情报告地址
  String? fileUrl;

  /// 学情报告名称
  String? reportName;

  TStudyReportRespVO({
    this.fileUrl,
    this.reportName,
  });

  TStudyReportRespVO.fromJson(Map<String, dynamic> json) {
    fileUrl = json['fileUrl'];
    reportName = json['reportName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['fileUrl'] = fileUrl;
    data['reportName'] = reportName;
    return data;
  }
}

class TStudyReportsRespVO {
  /// 记录
  List<TRoomStudyReportRespVO>? records;

  TStudyReportsRespVO({
    this.records,
  });

  TStudyReportsRespVO.fromJson(Map<String, dynamic> json) {
    if (json['records'] != null) {
      records = <TRoomStudyReportRespVO>[];
      json['records'].forEach((v) {
        records!.add(TRoomStudyReportRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TSubjectExamPaperListRespVO {
  /// 试卷uid
  String? examPaperUid;

  /// 是否首次考试 true是，false不是
  bool? first;

  /// 试卷id
  int? id;

  /// 等级 1 LEVEL1, 2 LEVEL2
  int? level;

  /// 是否开放时间 true是，false不是
  bool? open;

  /// 推荐标识 1推荐，2普通，3挑战
  int? recommendFlag;

  TSubjectExamPaperListRespVO({
    this.examPaperUid,
    this.first,
    this.id,
    this.level,
    this.open,
    this.recommendFlag,
  });

  TSubjectExamPaperListRespVO.fromJson(Map<String, dynamic> json) {
    examPaperUid = json['examPaperUid'];
    first = json['first'];
    id = json['id'];
    level = json['level'];
    open = json['open'];
    recommendFlag = json['recommendFlag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['examPaperUid'] = examPaperUid;
    data['first'] = first;
    data['id'] = id;
    data['level'] = level;
    data['open'] = open;
    data['recommendFlag'] = recommendFlag;
    return data;
  }
}

class TSubjectExamsRespVO {
  /// 科目
  int? subject;

  /// 科目试卷列表
  List<TSubjectExamPaperListRespVO>? subjectExamPaperList;

  /// 科目名称
  String? subjectName;

  TSubjectExamsRespVO({
    this.subject,
    this.subjectExamPaperList,
    this.subjectName,
  });

  TSubjectExamsRespVO.fromJson(Map<String, dynamic> json) {
    subject = json['subject'];
    if (json['subjectExamPaperList'] != null) {
      subjectExamPaperList = <TSubjectExamPaperListRespVO>[];
      json['subjectExamPaperList'].forEach((v) {
        subjectExamPaperList!.add(TSubjectExamPaperListRespVO.fromJson(v));
      });
    }
    subjectName = json['subjectName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['subject'] = subject;
    if (subjectExamPaperList != null) {
      data['subjectExamPaperList'] =
          subjectExamPaperList!.map((v) => v.toJson()).toList();
    }
    data['subjectName'] = subjectName;
    return data;
  }
}

class TSubjectPastProblemsRespVO {
  /// 科目-1数学，2物理，3化学，4生物，5经济，6人文社科
  int? subject;

  /// 科目名称
  String? subjectName;

  /// 科目真题列表
  List<TQueryPastProblemRespVO>? subjectProblemList;

  TSubjectPastProblemsRespVO({
    this.subject,
    this.subjectName,
    this.subjectProblemList,
  });

  TSubjectPastProblemsRespVO.fromJson(Map<String, dynamic> json) {
    subject = json['subject'];
    subjectName = json['subjectName'];
    if (json['subjectProblemList'] != null) {
      subjectProblemList = <TQueryPastProblemRespVO>[];
      json['subjectProblemList'].forEach((v) {
        subjectProblemList!.add(TQueryPastProblemRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['subject'] = subject;
    data['subjectName'] = subjectName;
    if (subjectProblemList != null) {
      data['subjectProblemList'] =
          subjectProblemList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TUpdateVisionCupApplyCertReqVo {
  /// 证件号码
  String? certNo;

  /// 证件类型
  int? certType;

  /// 在读年级
  int? gradeCode;

  /// 短信验证码
  String? messageCheckCode;

  /// 家长姓名
  String? parentName;

  /// 家长手机号码
  String? parentPhone;

  /// 手机号码
  String? phone;

  /// 在读学校
  String? schoolCode;

  /// 在读学校名称， 有code取code，没code取name
  String? schoolName;

  TUpdateVisionCupApplyCertReqVo({
    this.certNo,
    this.certType,
    this.gradeCode,
    this.messageCheckCode,
    this.parentName,
    this.parentPhone,
    this.phone,
    this.schoolCode,
    this.schoolName,
  });

  TUpdateVisionCupApplyCertReqVo.fromJson(Map<String, dynamic> json) {
    certNo = json['certNo'];
    certType = json['certType'];
    gradeCode = json['gradeCode'];
    messageCheckCode = json['messageCheckCode'];
    parentName = json['parentName'];
    parentPhone = json['parentPhone'];
    phone = json['phone'];
    schoolCode = json['schoolCode'];
    schoolName = json['schoolName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['certNo'] = certNo;
    data['certType'] = certType;
    data['gradeCode'] = gradeCode;
    data['messageCheckCode'] = messageCheckCode;
    data['parentName'] = parentName;
    data['parentPhone'] = parentPhone;
    data['phone'] = phone;
    data['schoolCode'] = schoolCode;
    data['schoolName'] = schoolName;
    return data;
  }
}

class TVisionCupApplyReqVo {
  /// 证件号码
  String? certNo;

  /// 证件类型
  int? certType;

  /// 投放渠道
  String? channel;

  /// 在读年级
  int? gradeCode;

  /// 短信验证码
  String? messageCheckCode;

  /// 家长姓名
  String? parentName;

  /// 家长手机号码
  String? parentPhone;

  /// 手机号码
  String? phone;

  /// 一级渠道来源
  String? primarySource;

  /// 在读学校
  String? schoolCode;

  /// 在读学校名称， 有code取code，没code取name
  String? schoolName;

  /// 二级渠道来源
  String? secondarySource;

  /// 学生code
  String? studentCode;

  /// 学生姓名
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
    final Map<String, dynamic> data = {};
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
  /// 准考证号 报名成功才会有数据
  String? examCertNo;

  /// 手机号码
  String? phone;

  /// 报名状态：0-未点击，1-未完善，2-未审核, 3-待考试,4-驳回,5-已考试, 8-背景营 9-牛剑营
  int? registerStatus;

  /// token
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
    final Map<String, dynamic> data = {};
    data['examCertNo'] = examCertNo;
    data['phone'] = phone;
    data['registerStatus'] = registerStatus;
    data['token'] = token;
    return data;
  }
}

class TVisionCupStudInfoReqVo {
  /// code
  String? code;

  /// 合新系统 线索id
  String? hexinUid;

  TVisionCupStudInfoReqVo({
    this.code,
    this.hexinUid,
  });

  TVisionCupStudInfoReqVo.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    hexinUid = json['hexinUid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['code'] = code;
    data['hexinUid'] = hexinUid;
    return data;
  }
}

class TVisionCupStudInfoRespVo {
  /// 证件号码
  String? certNo;

  /// 证件类型
  int? certType;

  /// 课程顾问
  String? consultantName;

  /// 课程顾问电话
  String? consultantPhone;

  /// 准考证号
  String? examCertNo;

  /// 在读年级
  int? gradeCode;

  /// 在读年级名称
  String? gradeName;

  /// 唯寻杯链接
  String? invigilateLink;

  /// 问卷调查是否完成 1-完成 0-未完成
  int? isFinishInvigilate;

  /// 是否第一次测试 1-是，0-不是
  int? isFirstTest;

  /// 家长姓名
  String? parentName;

  /// 家长手机号码
  String? parentPhone;

  /// 手机号码
  String? phone;

  /// 报名链接
  String? registerLink;

  /// 报名来源
  int? registerSource;

  /// 报名状态：0-未点击，1-未完善，2-未审核, 3-待考试,4-驳回,5-已考试, 8-背景营 9-牛剑营
  int? registerStatus;

  /// 驳回原因
  String? rejectReason;

  /// 在读学校
  String? schoolCode;

  /// 在读学校名称， 有code取code，没code取name
  String? schoolName;

  /// 成绩等级
  String? scoreLevel;

  /// 报名系统学生code
  String? studentCode;

  /// 姓名
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
    final Map<String, dynamic> data = {};
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

class TVisionCupStudentCodeReqVO {
  /// 报名系统学生code
  String? studentCode;

  TVisionCupStudentCodeReqVO({
    this.studentCode,
  });

  TVisionCupStudentCodeReqVO.fromJson(Map<String, dynamic> json) {
    studentCode = json['studentCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['studentCode'] = studentCode;
    return data;
  }
}

class TVisionCupStudentInfoReqVO {
  /// 报名系统学生编号
  String? studentCode;

  TVisionCupStudentInfoReqVO({
    this.studentCode,
  });

  TVisionCupStudentInfoReqVO.fromJson(Map<String, dynamic> json) {
    studentCode = json['studentCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['studentCode'] = studentCode;
    return data;
  }
}

class TVisionCupStudentInfoRespVO {
  /// 处理时间
  String? auditTime;

  /// 处理用户姓名
  String? auditorName;

  /// 处理用户ID
  String? auditorUid;

  /// 证件号码
  String? certNo;

  /// 证件类型
  int? certType;

  /// 在读年级名称
  String? gradeName;

  /// 合新_证件号
  String? hexinCertNo;

  /// 合新_证件类型
  int? hexinCertType;

  /// 合新_课程顾问
  String? hexinConsultantName;

  /// 合新_创建时间
  String? hexinCreateTime;

  /// 合新_创建人
  String? hexinCreatorName;

  /// 合新客户编号
  String? hexinCustomerCode;

  /// 合新_在读年级
  String? hexinGradeName;

  /// 合新_家长姓名
  String? hexinParentName;

  /// 合新_家长手机号码
  String? hexinParentPhone;

  /// 合新_手机号码
  String? hexinPhone;

  /// 合新_在读学校
  String? hexinSchoolName;

  /// 合新_管理状态
  String? hexinStatus;

  /// 合新_姓名
  String? hexinStudentName;

  /// 客户编号
  String? hexinUid;

  /// 质检处理状态 质检是否处理 0-否，1-是
  int? isAudit;

  /// 家长姓名
  String? parentName;

  /// 家长手机号
  String? parentPhone;

  /// 手机号
  String? phone;

  /// 报名时间
  String? registerTime;

  /// 在读学校名称
  String? schoolName;

  /// 报名编号 也是 报名系统学生编号
  String? studentCode;

  /// 学生姓名
  String? studentName;

  TVisionCupStudentInfoRespVO({
    this.auditTime,
    this.auditorName,
    this.auditorUid,
    this.certNo,
    this.certType,
    this.gradeName,
    this.hexinCertNo,
    this.hexinCertType,
    this.hexinConsultantName,
    this.hexinCreateTime,
    this.hexinCreatorName,
    this.hexinCustomerCode,
    this.hexinGradeName,
    this.hexinParentName,
    this.hexinParentPhone,
    this.hexinPhone,
    this.hexinSchoolName,
    this.hexinStatus,
    this.hexinStudentName,
    this.hexinUid,
    this.isAudit,
    this.parentName,
    this.parentPhone,
    this.phone,
    this.registerTime,
    this.schoolName,
    this.studentCode,
    this.studentName,
  });

  TVisionCupStudentInfoRespVO.fromJson(Map<String, dynamic> json) {
    auditTime = json['auditTime'];
    auditorName = json['auditorName'];
    auditorUid = json['auditorUid'];
    certNo = json['certNo'];
    certType = json['certType'];
    gradeName = json['gradeName'];
    hexinCertNo = json['hexinCertNo'];
    hexinCertType = json['hexinCertType'];
    hexinConsultantName = json['hexinConsultantName'];
    hexinCreateTime = json['hexinCreateTime'];
    hexinCreatorName = json['hexinCreatorName'];
    hexinCustomerCode = json['hexinCustomerCode'];
    hexinGradeName = json['hexinGradeName'];
    hexinParentName = json['hexinParentName'];
    hexinParentPhone = json['hexinParentPhone'];
    hexinPhone = json['hexinPhone'];
    hexinSchoolName = json['hexinSchoolName'];
    hexinStatus = json['hexinStatus'];
    hexinStudentName = json['hexinStudentName'];
    hexinUid = json['hexinUid'];
    isAudit = json['isAudit'];
    parentName = json['parentName'];
    parentPhone = json['parentPhone'];
    phone = json['phone'];
    registerTime = json['registerTime'];
    schoolName = json['schoolName'];
    studentCode = json['studentCode'];
    studentName = json['studentName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['auditTime'] = auditTime;
    data['auditorName'] = auditorName;
    data['auditorUid'] = auditorUid;
    data['certNo'] = certNo;
    data['certType'] = certType;
    data['gradeName'] = gradeName;
    data['hexinCertNo'] = hexinCertNo;
    data['hexinCertType'] = hexinCertType;
    data['hexinConsultantName'] = hexinConsultantName;
    data['hexinCreateTime'] = hexinCreateTime;
    data['hexinCreatorName'] = hexinCreatorName;
    data['hexinCustomerCode'] = hexinCustomerCode;
    data['hexinGradeName'] = hexinGradeName;
    data['hexinParentName'] = hexinParentName;
    data['hexinParentPhone'] = hexinParentPhone;
    data['hexinPhone'] = hexinPhone;
    data['hexinSchoolName'] = hexinSchoolName;
    data['hexinStatus'] = hexinStatus;
    data['hexinStudentName'] = hexinStudentName;
    data['hexinUid'] = hexinUid;
    data['isAudit'] = isAudit;
    data['parentName'] = parentName;
    data['parentPhone'] = parentPhone;
    data['phone'] = phone;
    data['registerTime'] = registerTime;
    data['schoolName'] = schoolName;
    data['studentCode'] = studentCode;
    data['studentName'] = studentName;
    return data;
  }
}

class TVisionCupStudentListReqVO {
  /// 准考证号
  String? examCertNo;

  /// 在读年级列表
  List<int>? gradeCnList;

  /// 当前页
  int? pageNumber;

  /// 分页长度
  int? pageSize;

  /// 手机号
  String? phone;

  /// 报名来源 1销售邀约，2自主报名
  int? registerSource;

  /// 报名状态列表  0-未点击，1-未完善，2-未审核, 3-待考试,4-驳回,5-已考试, 8-背景营 9-牛剑营
  List<int>? registerStatusList;

  /// 在读学校
  String? schoolName;

  /// 成绩等级  S,A,B+,B-,C
  List<String>? scoreLevelList;

  /// 学生姓名
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
    examCertNo = json['examCertNo'];
    gradeCnList = json['gradeCnList'];
    pageNumber = json['pageNumber'];
    pageSize = json['pageSize'];
    phone = json['phone'];
    registerSource = json['registerSource'];
    registerStatusList = json['registerStatusList'];
    schoolName = json['schoolName'];
    scoreLevelList = json['scoreLevelList'];
    studentName = json['studentName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['examCertNo'] = examCertNo;
    data['gradeCnList'] = gradeCnList;
    data['pageNumber'] = pageNumber;
    data['pageSize'] = pageSize;
    data['phone'] = phone;
    data['registerSource'] = registerSource;
    data['registerStatusList'] = registerStatusList;
    data['schoolName'] = schoolName;
    data['scoreLevelList'] = scoreLevelList;
    data['studentName'] = studentName;
    return data;
  }
}

class TVisionCupStudentListRespVO {
  /// 当前页
  int? pageNumber;

  /// 分页长度
  int? pageSize;

  /// 开始页码
  int? pageStart;

  /// 唯寻杯学员列表集
  List<TVisionCupStudentRespVO>? records;

  /// 总页码
  int? totalCount;

  TVisionCupStudentListRespVO({
    this.pageNumber,
    this.pageSize,
    this.pageStart,
    this.records,
    this.totalCount,
  });

  TVisionCupStudentListRespVO.fromJson(Map<String, dynamic> json) {
    pageNumber = json['pageNumber'];
    pageSize = json['pageSize'];
    pageStart = json['pageStart'];
    if (json['records'] != null) {
      records = <TVisionCupStudentRespVO>[];
      json['records'].forEach((v) {
        records!.add(TVisionCupStudentRespVO.fromJson(v));
      });
    }
    totalCount = json['totalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
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

class TVisionCupStudentRespVO {
  /// 准考证号
  String? examCertNo;

  /// 在读年级等级
  int? gradeCn;

  /// 在读年级
  String? gradeName;

  /// 合新系统 线索ID 字段
  String? hexinUid;

  /// 手机号
  String? phone;

  /// 报名来源 1销售邀约，2自主报名
  int? registerSource;

  /// 报名状态：0-未点击，1-未完善，2-未审核, 3-待考试,4-驳回,5-已考试, 8-背景营 9-牛剑营
  int? registerStatus;

  /// 驳回原因
  String? rejectReason;

  /// 在读学校
  String? schoolName;

  /// 成绩等级
  String? scoreLevel;

  /// 学生姓名
  String? studentName;

  /// 学生档案平台 code
  String? thirdCode;

  TVisionCupStudentRespVO({
    this.examCertNo,
    this.gradeCn,
    this.gradeName,
    this.hexinUid,
    this.phone,
    this.registerSource,
    this.registerStatus,
    this.rejectReason,
    this.schoolName,
    this.scoreLevel,
    this.studentName,
    this.thirdCode,
  });

  TVisionCupStudentRespVO.fromJson(Map<String, dynamic> json) {
    examCertNo = json['examCertNo'];
    gradeCn = json['gradeCn'];
    gradeName = json['gradeName'];
    hexinUid = json['hexinUid'];
    phone = json['phone'];
    registerSource = json['registerSource'];
    registerStatus = json['registerStatus'];
    rejectReason = json['rejectReason'];
    schoolName = json['schoolName'];
    scoreLevel = json['scoreLevel'];
    studentName = json['studentName'];
    thirdCode = json['thirdCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['examCertNo'] = examCertNo;
    data['gradeCn'] = gradeCn;
    data['gradeName'] = gradeName;
    data['hexinUid'] = hexinUid;
    data['phone'] = phone;
    data['registerSource'] = registerSource;
    data['registerStatus'] = registerStatus;
    data['rejectReason'] = rejectReason;
    data['schoolName'] = schoolName;
    data['scoreLevel'] = scoreLevel;
    data['studentName'] = studentName;
    data['thirdCode'] = thirdCode;
    return data;
  }
}

class TVolQuizOutData {
  /// 题目解析内容
  List<TQuizAnalysisData>? analysis;

  /// 批注
  String? annotation;

  /// 题目答案
  List<TQuizAnswerData>? answers;

  /// 子题目列表, 只有综合题会有
  List<TVolQuizOutData>? children;

  /// 题干内容
  String? content;

  /// 题目内容类型, 1-题库录入【默认】, 2-全图片题目
  int? contentType;

  /// 创建时间/毫秒
  int? createTime;

  /// 创建人
  String? creator;

  /// 题目难度
  int? difficulty;

  /// 题目难度标题
  String? difficultyName;

  /// 考试品类
  int? exam;

  /// 考试局
  int? examBoard;

  /// 考试局标题
  String? examBoardName;

  /// 考试品类标题
  String? examName;

  /// 可用于直接渲染内容, 适用于pc、app
  String? htmlContent;

  /// 图片内容
  String? imgContent;

  /// 是否为错题 0-否，1-是
  int? isWrongQuiz;

  /// 知识点
  List<int>? knowledgeIds;

  /// 知识点列表
  List<QuizKnowledgeData>? knowledges;

  /// 引用外部材料ID
  String? linkUid;

  /// 版本号
  int? objectVersion;

  /// 题目选项-只有选择题会有
  List<TQuizOptionData>? options;

  /// 原始内容-用于编辑
  String? originContent;

  /// 考试卷标题列表
  List<String>? paperNames;

  /// 考试卷
  List<int>? papers;

  /// 题目编号
  int? quizSeq;

  /// 题目编号
  String? quizSeqNo;

  /// 题目类型: 1-单选题目, 2-多选题目, 3-填空题, 4-解答题, 5-综合题
  int? quizType;

  /// 题目标题
  String? quizTypeName;

  /// 对象版本号
  int? quizVersion;

  /// 题目分值
  int? score;

  /// 考试季
  int? season;

  /// 考试季标题
  String? seasonName;

  /// 顺序
  int? seq;

  /// 题目来源
  String? source;

  /// 学生答案
  String? studentAnswer;

  /// 学科
  int? subject;

  /// 学科名称
  String? subjectName;

  /// 题目uid
  String? uid;

  /// 所属试卷Uid
  String? volUid;

  /// 年份
  int? year;

  TVolQuizOutData({
    this.analysis,
    this.annotation,
    this.answers,
    this.children,
    this.content,
    this.contentType,
    this.createTime,
    this.creator,
    this.difficulty,
    this.difficultyName,
    this.exam,
    this.examBoard,
    this.examBoardName,
    this.examName,
    this.htmlContent,
    this.imgContent,
    this.isWrongQuiz,
    this.knowledgeIds,
    this.knowledges,
    this.linkUid,
    this.objectVersion,
    this.options,
    this.originContent,
    this.paperNames,
    this.papers,
    this.quizSeq,
    this.quizSeqNo,
    this.quizType,
    this.quizTypeName,
    this.quizVersion,
    this.score,
    this.season,
    this.seasonName,
    this.seq,
    this.source,
    this.studentAnswer,
    this.subject,
    this.subjectName,
    this.uid,
    this.volUid,
    this.year,
  });

  TVolQuizOutData.fromJson(Map<String, dynamic> json) {
    if (json['analysis'] != null) {
      analysis = <TQuizAnalysisData>[];
      json['analysis'].forEach((v) {
        analysis!.add(TQuizAnalysisData.fromJson(v));
      });
    }
    annotation = json['annotation'];
    if (json['answers'] != null) {
      answers = <TQuizAnswerData>[];
      json['answers'].forEach((v) {
        answers!.add(TQuizAnswerData.fromJson(v));
      });
    }
    if (json['children'] != null) {
      children = <TVolQuizOutData>[];
      json['children'].forEach((v) {
        children!.add(TVolQuizOutData.fromJson(v));
      });
    }
    content = json['content'];
    contentType = json['contentType'];
    createTime = json['createTime'];
    creator = json['creator'];
    difficulty = json['difficulty'];
    difficultyName = json['difficultyName'];
    exam = json['exam'];
    examBoard = json['examBoard'];
    examBoardName = json['examBoardName'];
    examName = json['examName'];
    htmlContent = json['htmlContent'];
    imgContent = json['imgContent'];
    isWrongQuiz = json['isWrongQuiz'];
    knowledgeIds = json['knowledgeIds'];
    if (json['knowledges'] != null) {
      knowledges = <QuizKnowledgeData>[];
      json['knowledges'].forEach((v) {
        knowledges!.add(QuizKnowledgeData.fromJson(v));
      });
    }
    linkUid = json['linkUid'];
    objectVersion = json['objectVersion'];
    if (json['options'] != null) {
      options = <TQuizOptionData>[];
      json['options'].forEach((v) {
        options!.add(TQuizOptionData.fromJson(v));
      });
    }
    originContent = json['originContent'];
    paperNames = json['paperNames'];
    papers = json['papers'];
    quizSeq = json['quizSeq'];
    quizSeqNo = json['quizSeqNo'];
    quizType = json['quizType'];
    quizTypeName = json['quizTypeName'];
    quizVersion = json['quizVersion'];
    score = json['score'];
    season = json['season'];
    seasonName = json['seasonName'];
    seq = json['seq'];
    source = json['source'];
    studentAnswer = json['studentAnswer'];
    subject = json['subject'];
    subjectName = json['subjectName'];
    uid = json['uid'];
    volUid = json['volUid'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (analysis != null) {
      data['analysis'] = analysis!.map((v) => v.toJson()).toList();
    }
    data['annotation'] = annotation;
    if (answers != null) {
      data['answers'] = answers!.map((v) => v.toJson()).toList();
    }
    if (children != null) {
      data['children'] = children!.map((v) => v.toJson()).toList();
    }
    data['content'] = content;
    data['contentType'] = contentType;
    data['createTime'] = createTime;
    data['creator'] = creator;
    data['difficulty'] = difficulty;
    data['difficultyName'] = difficultyName;
    data['exam'] = exam;
    data['examBoard'] = examBoard;
    data['examBoardName'] = examBoardName;
    data['examName'] = examName;
    data['htmlContent'] = htmlContent;
    data['imgContent'] = imgContent;
    data['isWrongQuiz'] = isWrongQuiz;
    data['knowledgeIds'] = knowledgeIds;
    if (knowledges != null) {
      data['knowledges'] = knowledges!.map((v) => v.toJson()).toList();
    }
    data['linkUid'] = linkUid;
    data['objectVersion'] = objectVersion;
    if (options != null) {
      data['options'] = options!.map((v) => v.toJson()).toList();
    }
    data['originContent'] = originContent;
    data['paperNames'] = paperNames;
    data['papers'] = papers;
    data['quizSeq'] = quizSeq;
    data['quizSeqNo'] = quizSeqNo;
    data['quizType'] = quizType;
    data['quizTypeName'] = quizTypeName;
    data['quizVersion'] = quizVersion;
    data['score'] = score;
    data['season'] = season;
    data['seasonName'] = seasonName;
    data['seq'] = seq;
    data['source'] = source;
    data['studentAnswer'] = studentAnswer;
    data['subject'] = subject;
    data['subjectName'] = subjectName;
    data['uid'] = uid;
    data['volUid'] = volUid;
    data['year'] = year;
    return data;
  }
}

class TYearPastProblemsRespVO {
  /// 科目考题集
  List<TSubjectPastProblemsRespVO>? subjectPastProblemList;

  /// 年份
  String? year;

  TYearPastProblemsRespVO({
    this.subjectPastProblemList,
    this.year,
  });

  TYearPastProblemsRespVO.fromJson(Map<String, dynamic> json) {
    if (json['subjectPastProblemList'] != null) {
      subjectPastProblemList = <TSubjectPastProblemsRespVO>[];
      json['subjectPastProblemList'].forEach((v) {
        subjectPastProblemList!.add(TSubjectPastProblemsRespVO.fromJson(v));
      });
    }
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (subjectPastProblemList != null) {
      data['subjectPastProblemList'] =
          subjectPastProblemList!.map((v) => v.toJson()).toList();
    }
    data['year'] = year;
    return data;
  }
}
