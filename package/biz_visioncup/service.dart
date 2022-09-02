/// GENERATED CODE - DO NOT MODIFY BY HAND
/// **************************************************************************
/// service.dart
/// **************************************************************************

import 'struct.dart';
import '../net/http_util.dart';

class BizVisioncupService {
  /// @path /management/BizVisioncup/v1/api/visioncup/link/create
  /// @desc 生成唯寻杯链接
  Future<dynamic> createUsingPOST(TLinkCreateReqVo input) async {
    var path = '/management/BizVisioncup/v1/api/visioncup/link/create';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return response;
  }

  /// @path /management/BizVisioncup/v1/api/visioncup/link/get
  /// @desc 查看唯寻杯链接
  Future<TLinkGetRespVo> getUsingPOST(TLinkGetReqVo input) async {
    var path = '/management/BizVisioncup/v1/api/visioncup/link/get';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TLinkGetRespVo.fromJson(response);
  }

  /// @path /management/BizVisioncup/v1/api/visioncup/login/getGradeInfo
  /// @desc 获取年级信息
  Future<TGradeInfoRespVo> getGradeInfoUsingPOST_1() async {
    var path = '/management/BizVisioncup/v1/api/visioncup/login/getGradeInfo';
    var response = await HttpUtils.post(
      path,
    );
    return TGradeInfoRespVo.fromJson(response);
  }

  /// @path /management/BizVisioncup/v1/api/visioncup/student/audit
  /// @desc 学员审核
  Future<dynamic> auditUsingPOST(TAuditReqVO input) async {
    var path = '/management/BizVisioncup/v1/api/visioncup/student/audit';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return response;
  }

  /// @path /management/BizVisioncup/v1/api/visioncup/student/discard
  /// @desc 废弃考试记录
  Future<dynamic> discardUsingPOST(TExamHistoryIdReqVO input) async {
    var path = '/management/BizVisioncup/v1/api/visioncup/student/discard';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return response;
  }

  /// @path /management/BizVisioncup/v1/api/visioncup/student/getChartData
  /// @desc 监考秩序记录图表查询
  Future<TGetChartDataRespVO> getChartDataUsingPOST(
      TExamHistoryIdReqVO input) async {
    var path = '/management/BizVisioncup/v1/api/visioncup/student/getChartData';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TGetChartDataRespVO.fromJson(response);
  }

  /// @path /management/BizVisioncup/v1/api/visioncup/student/invigilateAnswers
  /// @desc 问卷调查题干、答题情况接口
  Future<TInvigilateAnswersRespVO> invigilateAnswersUsingPOST(
      TVisionCupStudentCodeReqVO input) async {
    var path =
        '/management/BizVisioncup/v1/api/visioncup/student/invigilateAnswers';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TInvigilateAnswersRespVO.fromJson(response);
  }

  /// @path /management/BizVisioncup/v1/api/visioncup/student/listExamEvents
  /// @desc 监考秩序记录查询
  Future<TListExamEventsRespVO> listExamEventsUsingPOST(
      TExamHistoryIdReqVO input) async {
    var path =
        '/management/BizVisioncup/v1/api/visioncup/student/listExamEvents';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TListExamEventsRespVO.fromJson(response);
  }

  /// @path /management/BizVisioncup/v1/api/visioncup/student/listExams
  /// @desc 考试、测试记录查询
  Future<TListExamsRespVO> listExamsUsingPOST(TListExamsReqVO input) async {
    var path = '/management/BizVisioncup/v1/api/visioncup/student/listExams';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TListExamsRespVO.fromJson(response);
  }

  /// @path /management/BizVisioncup/v1/api/visioncup/student/listSuitExams
  /// @desc 学员当前考试成绩查询
  Future<TListSuitExamsRespVO> listSuitExamsUsingPOST(
      TListExamsReqVO input) async {
    var path =
        '/management/BizVisioncup/v1/api/visioncup/student/listSuitExams';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TListSuitExamsRespVO.fromJson(response);
  }

  /// @path /management/BizVisioncup/v1/api/visioncup/student/scoreChange
  /// @desc 成绩变更
  Future<dynamic> scoreChangeUsingPOST(TExamHistoryIdReqVO input) async {
    var path = '/management/BizVisioncup/v1/api/visioncup/student/scoreChange';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return response;
  }

  /// @path /management/BizVisioncup/v1/api/visioncup/student/statusChange
  /// @desc 注册状态变更
  Future<dynamic> statusChangeUsingPOST(TStatusChangeReqVO input) async {
    var path = '/management/BizVisioncup/v1/api/visioncup/student/statusChange';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return response;
  }

  /// @path /management/BizVisioncup/v1/api/visioncup/student/studentInfo
  /// @desc 唯寻杯学员详情  根据学生档案平台code
  Future<TVisionCupStudInfoRespVo> studentInfoUsingPOST(
      TVisionCupStudInfoReqVo input) async {
    var path = '/management/BizVisioncup/v1/api/visioncup/student/studentInfo';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TVisionCupStudInfoRespVo.fromJson(response);
  }

  /// @path /management/BizVisioncup/v1/api/visioncup/student/studyReports
  /// @desc 学情报告查询
  Future<TStudyReportsRespVO> studyReportsUsingPOST(
      TVisionCupStudentCodeReqVO input) async {
    var path = '/management/BizVisioncup/v1/api/visioncup/student/studyReports';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TStudyReportsRespVO.fromJson(response);
  }

  /// @path /management/BizVisioncup/v1/api/visioncup/student/visionCupStudentInfo
  /// @desc 质检中转学员详情
  Future<TVisionCupStudentInfoRespVO> visionCupStudentInfoUsingPOST(
      TVisionCupStudentInfoReqVO input) async {
    var path =
        '/management/BizVisioncup/v1/api/visioncup/student/visionCupStudentInfo';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TVisionCupStudentInfoRespVO.fromJson(response);
  }

  /// @path /management/BizVisioncup/v1/api/visioncup/student/visionCupStudentList
  /// @desc 唯寻杯学员列表
  Future<TVisionCupStudentListRespVO> visionCupStudentListUsingPOST(
      TVisionCupStudentListReqVO input) async {
    var path =
        '/management/BizVisioncup/v1/api/visioncup/student/visionCupStudentList';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TVisionCupStudentListRespVO.fromJson(response);
  }

  /// @path /test/1
  /// @desc 补充1
  Future<dynamic> test11UsingGET() async {
    var path = '/test/1';
    var response = await HttpUtils.get(path);
    return response;
  }

  /// @path /test/2
  /// @desc 补充2
  Future<dynamic> test2UsingGET() async {
    var path = '/test/2';
    var response = await HttpUtils.get(path);
    return response;
  }

  /// @path /v1/api/visioncup/apply/updateVisionCupApplyCert
  /// @desc 修改准考证
  Future<dynamic> updateVisionCupApplyCertUsingPOST(
      TUpdateVisionCupApplyCertReqVo input) async {
    var path = '/v1/api/visioncup/apply/updateVisionCupApplyCert';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return response;
  }

  /// @path /v1/api/visioncup/exam/answer
  /// @desc 学员答题接口
  Future<dynamic> answerUsingPOST(TExamAnswerReqVO input) async {
    var path = '/v1/api/visioncup/exam/answer';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return response;
  }

  /// @path /v1/api/visioncup/exam/answerInvestigate
  /// @desc 问卷调查答题接口
  Future<dynamic> answerInvestigateUsingPOST(
      TAnswerInvestigatesReqVO input) async {
    var path = '/v1/api/visioncup/exam/answerInvestigate';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return response;
  }

  /// @path /v1/api/visioncup/exam/examHistory
  /// @desc 学员考试记录详细信息
  Future<TExamHistorysRespVO> examHistoryUsingPOST(
      TExamPaperIdReqVO input) async {
    var path = '/v1/api/visioncup/exam/examHistory';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TExamHistorysRespVO.fromJson(response);
  }

  /// @path /v1/api/visioncup/exam/finish
  /// @desc 交卷
  Future<dynamic> finishUsingPOST(TExamHistoryIdReqVO input) async {
    var path = '/v1/api/visioncup/exam/finish';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return response;
  }

  /// @path /v1/api/visioncup/exam/getCurrentExam
  /// @desc 获取当前进行考试记录
  Future<TGetCurrentExamRespVO> getCurrentExamUsingPOST() async {
    var path = '/v1/api/visioncup/exam/getCurrentExam';
    var response = await HttpUtils.post(
      path,
    );
    return TGetCurrentExamRespVO.fromJson(response);
  }

  /// @path /v1/api/visioncup/exam/listAnswer
  /// @desc 试卷学员答题列表
  Future<TExamAnswerListRespVO> listAnswerUsingPOST(
      TExamHistoryIdReqVO input) async {
    var path = '/v1/api/visioncup/exam/listAnswer';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TExamAnswerListRespVO.fromJson(response);
  }

  /// @path /v1/api/visioncup/exam/listExamHistory
  /// @desc 考试记录查询
  Future<TQueryExamHistorysRespVO> listExamHistoryUsingPOST() async {
    var path = '/v1/api/visioncup/exam/listExamHistory';
    var response = await HttpUtils.post(
      path,
    );
    return TQueryExamHistorysRespVO.fromJson(response);
  }

  /// @path /v1/api/visioncup/exam/listInvestigate
  /// @desc 问卷调查题干查询接口
  Future<TQueryInvestigatesRespVO> listInvestigateUsingPOST() async {
    var path = '/v1/api/visioncup/exam/listInvestigate';
    var response = await HttpUtils.post(
      path,
    );
    return TQueryInvestigatesRespVO.fromJson(response);
  }

  /// @path /v1/api/visioncup/exam/paperInfo
  /// @desc 试卷基本信息查询
  Future<TExamPaperInfoRespVO> paperInfoUsingPOST(
      TExamPaperIdReqVO input) async {
    var path = '/v1/api/visioncup/exam/paperInfo';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TExamPaperInfoRespVO.fromJson(response);
  }

  /// @path /v1/api/visioncup/exam/queryExams
  /// @desc 查询考场列表
  Future<TQueryExamsRespVO> queryExamsUsingPOST() async {
    var path = '/v1/api/visioncup/exam/queryExams';
    var response = await HttpUtils.post(
      path,
    );
    return TQueryExamsRespVO.fromJson(response);
  }

  /// @path /v1/api/visioncup/exam/queryPastProblems
  /// @desc 查询历史真题列表
  Future<TQueryPastProblemsRespVO> queryPastProblemsUsingPOST() async {
    var path = '/v1/api/visioncup/exam/queryPastProblems';
    var response = await HttpUtils.post(
      path,
    );
    return TQueryPastProblemsRespVO.fromJson(response);
  }

  /// @path /v1/api/visioncup/exam/submitEvent
  /// @desc 考中事件提交接口
  Future<TExamEventSubmitRespVO> submitEventUsingPOST(
      TExamEventSubmitReqVO input) async {
    var path = '/v1/api/visioncup/exam/submitEvent';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TExamEventSubmitRespVO.fromJson(response);
  }

  /// @path /v1/api/visioncup/exam/volQuizzes
  /// @desc 考试试卷题干信息查询
  Future<TListVolQuizzesRespVO> volQuizzesUsingPOST(
      TExamPaperIdReqVO input) async {
    var path = '/v1/api/visioncup/exam/volQuizzes';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TListVolQuizzesRespVO.fromJson(response);
  }

  /// @path /v1/api/visioncup/login/applyVisionCup
  /// @desc 唯寻杯申请报名并登录
  Future<TVisionCupApplyRespVo> applyVisionCupUsingPOST(
      TVisionCupApplyReqVo input) async {
    var path = '/v1/api/visioncup/login/applyVisionCup';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TVisionCupApplyRespVo.fromJson(response);
  }

  /// @path /v1/api/visioncup/login/checkMessageCheckCode
  /// @desc 获取短信验证码
  Future<dynamic> checkMessageCheckCodeUsingPOST(
      TCheckMessageCheckCodeReqVo input) async {
    var path = '/v1/api/visioncup/login/checkMessageCheckCode';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return response;
  }

  /// @path /v1/api/visioncup/login/doCertNoLogin
  /// @desc 准考证号登录
  Future<TLoginInfoRespVo> doCertNoLoginUsingPOST(
      TCertNoLoginInfoReqVo input) async {
    var path = '/v1/api/visioncup/login/doCertNoLogin';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TLoginInfoRespVo.fromJson(response);
  }

  /// @path /v1/api/visioncup/login/doMessageLogin
  /// @desc 短信验证码登录
  Future<TLoginInfoRespVo> doMessageLoginUsingPOST(
      TMessageLoginInfoReqVo input) async {
    var path = '/v1/api/visioncup/login/doMessageLogin';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TLoginInfoRespVo.fromJson(response);
  }

  /// @path /v1/api/visioncup/login/getGradeInfo
  /// @desc 获取年级信息
  Future<TGradeInfoRespVo> getGradeInfoUsingPOST() async {
    var path = '/v1/api/visioncup/login/getGradeInfo';
    var response = await HttpUtils.post(
      path,
    );
    return TGradeInfoRespVo.fromJson(response);
  }

  /// @path /v1/api/visioncup/login/getMessageCheckCode
  /// @desc 获取短信验证码
  Future<dynamic> getMessageCheckCodeUsingPOST(
      TMessageCheckCodeReqVo input) async {
    var path = '/v1/api/visioncup/login/getMessageCheckCode';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return response;
  }

  /// @path /v1/api/visioncup/login/getPictureCheckCode
  /// @desc 图片验证码生成
  Future<TPictureCheckCodeRespVo> getPictureCheckCodeUsingPOST() async {
    var path = '/v1/api/visioncup/login/getPictureCheckCode';
    var response = await HttpUtils.post(
      path,
    );
    return TPictureCheckCodeRespVo.fromJson(response);
  }

  /// @path /v1/api/visioncup/login/linkInfo
  /// @desc 根据链接获取学员信息
  Future<TLinkInfoRespVo> linkInfoUsingPOST(TLinkInfoReqVo input) async {
    var path = '/v1/api/visioncup/login/linkInfo';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TLinkInfoRespVo.fromJson(response);
  }

  /// @path /v1/api/visioncup/login/listMiddleSchool
  /// @desc 查询中学库列表
  Future<TMiddleSchoolResponse> listMiddleSchoolUsingPOST(
      TMiddleSchoolQueryRequest input) async {
    var path = '/v1/api/visioncup/login/listMiddleSchool';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return TMiddleSchoolResponse.fromJson(response);
  }

  /// @path /v1/api/visioncup/notifyChangeCustomerName
  /// @desc 修改姓名
  Future<dynamic> notifyChangeCustomerNameUsingPOST(
      NotifyChangeCustomerNameReqVo input) async {
    var path = '/v1/api/visioncup/notifyChangeCustomerName';
    var response = await HttpUtils.post(
      path,
      data: input.toJson(),
    );
    return response;
  }

  /// @path /v1/api/visioncup/stud/info
  /// @desc 查询唯寻杯学员信息
  Future<TVisionCupStudInfoRespVo> infoUsingPOST() async {
    var path = '/v1/api/visioncup/stud/info';
    var response = await HttpUtils.post(
      path,
    );
    return TVisionCupStudInfoRespVo.fromJson(response);
  }
}
