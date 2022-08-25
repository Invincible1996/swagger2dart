/// GENERATED CODE - DO NOT MODIFY BY HAND
/// **************************************************************************
/// struct.dart
/// **************************************************************************
class TExamAnswerReqVO {
  /// 考试记录ID;
  int? examHistoryId;

  /// 题目解答,答题内容;多选答案以英文逗号分隔拼接字符串，且进行自然排序;
  String? questionAnswer;

  /// 题目序号;
  int? questionOrder;

  /// 题目UID(教研系统题目UID);
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['examHistoryId'] = examHistoryId;
    data['questionAnswer'] = questionAnswer;
    data['questionOrder'] = questionOrder;
    data['questionUid'] = questionUid;

    return data;
  }
}

class TAnswerInvestigatesReqVO {
  /// 答题内容;
  List<TAnswerInvestigateReqVO>? records;

  TAnswerInvestigatesReqVO({
    this.records,
  });

  TAnswerInvestigatesReqVO.fromJson(Map<String, dynamic> json) {
    if (records != null) {
      records = <TAnswerInvestigateReqVO>[];
      json['records'].forEach((v) {
        records!.add(TAnswerInvestigateReqVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class TAnswerInvestigateReqVO {
  /// 学员答案;
  String? answer;

  /// 其他内容;
  String? elseContent;

  /// 题序号;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['answer'] = answer;
    data['elseContent'] = elseContent;
    data['uid'] = uid;

    return data;
  }
}

class TExamPaperIdReqVO {
  /// 考试试卷ID;
  int? examPaperId;

  TExamPaperIdReqVO({
    this.examPaperId,
  });

  TExamPaperIdReqVO.fromJson(Map<String, dynamic> json) {
    examPaperId = json['examPaperId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['examPaperId'] = examPaperId;

    return data;
  }
}

class TExamHistorysRespVO {
  /// 考试记录列表出参集;
  List<TQueryExamHistoryRespVO>? records;

  TExamHistorysRespVO({
    this.records,
  });

  TExamHistorysRespVO.fromJson(Map<String, dynamic> json) {
    if (records != null) {
      records = <TQueryExamHistoryRespVO>[];
      json['records'].forEach((v) {
        records!.add(TQueryExamHistoryRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class TExamHistoryIdReqVO {
  /// 学员考试记录ID;
  int? examHistoryId;

  TExamHistoryIdReqVO({
    this.examHistoryId,
  });

  TExamHistoryIdReqVO.fromJson(Map<String, dynamic> json) {
    examHistoryId = json['examHistoryId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['examHistoryId'] = examHistoryId;

    return data;
  }
}

class TGetCurrentExamRespVO {
  /// 考试日期 yyyy-MM-dd ;
  String? examDate;

  /// level等级;
  int? examLevel;

  /// 考卷ID;
  int? examPaperId;

  /// 考场id;
  int? examRoomId;

  /// 考试科目(冗余字段) 1数学，2物理，3化学，4生物，5经济，6人文社科;
  int? examSubject;

  /// 考试类型 1-考试 2-测试;
  int? examType;

  /// 主键;
  int? id;

  /// 开考时间  yyyy-MM-dd HH:mm:ss;
  String? startTime;

  /// 学生code;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
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

class TExamAnswerListRespVO {
  /// 学员考试答题内容出参集;
  List<TExamAnswerRespVO>? records;

  TExamAnswerListRespVO({
    this.records,
  });

  TExamAnswerListRespVO.fromJson(Map<String, dynamic> json) {
    if (records != null) {
      records = <TExamAnswerRespVO>[];
      json['records'].forEach((v) {
        records!.add(TExamAnswerRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class TQueryExamHistorysRespVO {
  /// 考场列表出参集;
  List<TQueryExamHistoryOpenMonthsRespVO>? records;

  TQueryExamHistorysRespVO({
    this.records,
  });

  TQueryExamHistorysRespVO.fromJson(Map<String, dynamic> json) {
    if (records != null) {
      records = <TQueryExamHistoryOpenMonthsRespVO>[];
      json['records'].forEach((v) {
        records!.add(TQueryExamHistoryOpenMonthsRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class TQueryInvestigatesRespVO {
  /// 学员考试答题内容出参集;
  List<TQueryInvestigateRespVO>? records;

  TQueryInvestigatesRespVO({
    this.records,
  });

  TQueryInvestigatesRespVO.fromJson(Map<String, dynamic> json) {
    if (records != null) {
      records = <TQueryInvestigateRespVO>[];
      json['records'].forEach((v) {
        records!.add(TQueryInvestigateRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class TExamPaperInfoRespVO {
  /// 考试规定时长 秒为单位;
  int? examDuration;

  /// 唯寻杯-考场表ID;
  int? examRoomId;

  /// 考试试卷ID;
  int? id;

  /// 等级 1-LEVEL1, 2-LEVEL2;
  int? level;

  /// 是否开放时间 true是，false不是;
  bool? open;

  /// 开放开始时间 yyyy-MM-dd HH:mm:ss;
  String? openBeginTime;

  /// 开放结束时间 yyyy-MM-dd HH:mm:ss;
  String? openEndTime;

  /// 开放月 yyyy-MM;
  String? openMonth;

  /// 总题数;
  int? questionCount;

  /// 试卷备注信息;
  String? remark;

  /// 所属科目-1数学，2物理，3化学，4生物，5经济，6人文社科;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
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

class TQueryExamsRespVO {
  /// 考场列表出参集;
  List<TQueryExamRespVO>? records;

  TQueryExamsRespVO({
    this.records,
  });

  TQueryExamsRespVO.fromJson(Map<String, dynamic> json) {
    if (records != null) {
      records = <TQueryExamRespVO>[];
      json['records'].forEach((v) {
        records!.add(TQueryExamRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class TQueryPastProblemsRespVO {
  /// 历届真题列表;
  List<TYearPastProblemsRespVO>? records;

  TQueryPastProblemsRespVO({
    this.records,
  });

  TQueryPastProblemsRespVO.fromJson(Map<String, dynamic> json) {
    if (records != null) {
      records = <TYearPastProblemsRespVO>[];
      json['records'].forEach((v) {
        records!.add(TYearPastProblemsRespVO.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class TExamEventSubmitReqVO {
  /// 考试记录ID;
  int? examHistoryId;

  /// 事件名称;
  String? name;

  /// 事件类型 1-进入考场，2-图片上传，3-摄像头丢失 4-焦点丢失，5-网络重连  7-回到考场 8-离开考场 9-交卷，,10-废弃,11-网络流量上传,12-全屏浏览器,13-非全屏浏览器,14-关闭浏览器 ;
  int? operateType;

  /// 文件地址;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['examHistoryId'] = examHistoryId;
    data['name'] = name;
    data['operateType'] = operateType;
    data['url'] = url;

    return data;
  }
}

class TExamEventSubmitRespVO {
  /// 扩展字段，operateType=4-焦点丢失时，返回本场考试焦点丢失发生总数;
  String? resv;

  TExamEventSubmitRespVO({
    this.resv,
  });

  TExamEventSubmitRespVO.fromJson(Map<String, dynamic> json) {
    resv = json['resv'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resv'] = resv;

    return data;
  }
}

class TListVolQuizzesRespVO {
  /// 题目列表;
  List<TVolQuizOutData>? quizs;

  TListVolQuizzesRespVO({
    this.quizs,
  });

  TListVolQuizzesRespVO.fromJson(Map<String, dynamic> json) {
    if (quizs != null) {
      quizs = <TVolQuizOutData>[];
      json['quizs'].forEach((v) {
        quizs!.add(TVolQuizOutData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (quizs != null) {
      data['quizs'] = quizs!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}
