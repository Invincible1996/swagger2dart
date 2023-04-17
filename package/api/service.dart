  /// GENERATED CODE - DO NOT MODIFY BY HAND
  /// **************************************************************************
  /// service.dart
  /// **************************************************************************

  import 'struct.dart';
  import '../net/http_util.dart';
  // class circle chat swagger 文档Service {
  class ApiService {
      /// @path /community/add
    /// @desc 创建社区
    static Future<Response> communityAdd(CommunityAddReqDTO req) async{
     var path = '/community/add';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /community/attention
    /// @desc 关注-反向操作
    static Future<Response> communityAttention(CommunityAttentionReqDTO req) async{
     var path = '/community/attention';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /community/attention/list
    /// @desc 审核关注列表
    static Future<AttentionInfoDTO> communityAttentionList(CommunityAttentionListReqDTO req) async{
    var path = '/community/attention/list';
    var response = await HttpUtils.get(path,params:req.toJson());
     return AttentionInfoDTO.fromJson(response);
    }
        /// @path /community/audit
    /// @desc 审核社区
    static Future<Response> communityAudit(CommunityAuditReqDTO req) async{
     var path = '/community/audit';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /community/auditAttention
    /// @desc 审核关注
    static Future<Response> communityAuditAttention(CommunityAuditAttentionReqDTO req) async{
     var path = '/community/auditAttention';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /community/delete
    /// @desc 删除社区
    static Future<Response> communityDelete(CommunityDeleteReqDTO req) async{
     var path = '/community/delete';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /community/info
    /// @desc 详情
    static Future<CommunityInfoDTO> communityInfo(CommunityInfoReqDTO req) async{
    var path = '/community/info';
    var response = await HttpUtils.get(path,params:req.toJson());
     return CommunityInfoDTO.fromJson(response);
    }
        /// @path /community/list
    /// @desc 列表
    static Future<CommunityDTO> communityList(CommunityListReqDTO req) async{
    var path = '/community/list';
    var response = await HttpUtils.get(path,params:req.toJson());
     return CommunityDTO.fromJson(response);
    }
        /// @path /community/modify
    /// @desc 修改社区
    static Future<Response> communityModify(CommunityModifyReqDTO req) async{
     var path = '/community/modify';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /cust/createUserSig
    /// @desc 生成 UserSig -只保持三天的时间
    static Future<string> custCreateUserSig() async{
     var path = '/cust/createUserSig';
    var response = await HttpUtils.post(path, );
    return string.fromJson(response);
    }
        /// @path /cust/info
    /// @desc 详情
    static Future<CustomerInfoDTO> custInfo() async{
    var path = '/cust/info';
    var response = await HttpUtils.get(path,params:req.toJson());
     return CustomerInfoDTO.fromJson(response);
    }
        /// @path /discover/article/add
    /// @desc 图文新增
    static Future<Response> discoverArticleAdd(DiscoverArticleAddReqDTO req) async{
     var path = '/discover/article/add';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /discover/article/del
    /// @desc 图文删除
    static Future<Response> discoverArticleDel(DiscoverArticleDelReqDTO req) async{
     var path = '/discover/article/del';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /discover/article/list
    /// @desc 图文列表-倒序
    static Future<ArticleDTO> discoverArticleList(DiscoverArticleListReqDTO req) async{
    var path = '/discover/article/list';
    var response = await HttpUtils.get(path,params:req.toJson());
     return ArticleDTO.fromJson(response);
    }
        /// @path /discover/article/modify
    /// @desc 图文修改
    static Future<Response> discoverArticleModify(DiscoverArticleModifyReqDTO req) async{
     var path = '/discover/article/modify';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /discover/comment/add
    /// @desc 评论
    static Future<Response> discoverCommentAdd(DiscoverCommentAddReqDTO req) async{
     var path = '/discover/comment/add';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /discover/comment/del
    /// @desc 删除评论
    static Future<Response> discoverCommentDel(DiscoverCommentDelReqDTO req) async{
     var path = '/discover/comment/del';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /discover/info
    /// @desc 详情
    static Future<DiscoverDTO> discoverInfo() async{
    var path = '/discover/info';
    var response = await HttpUtils.get(path,params:req.toJson());
     return DiscoverDTO.fromJson(response);
    }
        /// @path /discover/modify
    /// @desc 更新
    static Future<Response> discoverModify(DiscoverModifyReqDTO req) async{
     var path = '/discover/modify';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /discover/star/add
    /// @desc 点赞
    static Future<Response> discoverStarAdd(DiscoverStarAddReqDTO req) async{
     var path = '/discover/star/add';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /discover/star/del
    /// @desc 取消点赞
    static Future<Response> discoverStarDel(DiscoverStarDelReqDTO req) async{
     var path = '/discover/star/del';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /mission/add
    /// @desc 发布任务
    static Future<Response> missionAdd(MissionAddReqDTO req) async{
     var path = '/mission/add';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /mission/complain
    /// @desc 投诉任务
    static Future<Response> missionComplain(MissionComplainReqDTO req) async{
     var path = '/mission/complain';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /mission/delete
    /// @desc 删除任务
    static Future<Response> missionDelete(MissionDeleteReqDTO req) async{
     var path = '/mission/delete';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /mission/hall
    /// @desc 大厅
    static Future<HallMissionDTO> missionHall(MissionHallReqDTO req) async{
    var path = '/mission/hall';
    var response = await HttpUtils.get(path,params:req.toJson());
     return HallMissionDTO.fromJson(response);
    }
        /// @path /mission/modify
    /// @desc 修改任务
    static Future<Response> missionModify(MissionModifyReqDTO req) async{
     var path = '/mission/modify';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /notify/
    /// @desc 测试1
    static Future<TencentResp> notify(NotifyReqDTO req) async{
     var path = '/notify/';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return TencentResp.fromJson(response);
    }
        /// @path /open/loginOrRegister
    /// @desc 登录、注册
    static Future<SessionDTO> openLoginOrRegister(OpenLoginOrRegisterReqDTO req) async{
     var path = '/open/loginOrRegister';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return SessionDTO.fromJson(response);
    }
        /// @path /open/pict
    /// @desc 图片上传接口
    static Future<Response> openPict(OpenPictReqDTO req) async{
     var path = '/open/pict';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /open/sendCode
    /// @desc 发送短信验证码
    static Future<Response> openSendCode(OpenSendCodeReqDTO req) async{
     var path = '/open/sendCode';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return Response.fromJson(response);
    }
        /// @path /order/prepay
    /// @desc 预下单 返回微信单号
    static Future<PrepayOrderResp> orderPrepay(OrderPrepayReqDTO req) async{
     var path = '/order/prepay';
    var response = await HttpUtils.post(path, data: req.toJson(),);
    return PrepayOrderResp.fromJson(response);
    }
        /// @path /order/query
    /// @desc 查询
    static Future<OrderDTO> orderQuery(OrderQueryReqDTO req) async{
    var path = '/order/query';
    var response = await HttpUtils.get(path,params:req.toJson());
     return OrderDTO.fromJson(response);
    }
        /// @path /paynotify/wx
    /// @desc 微信订单支付通知
    static Future<dynamic> paynotifyWx() async{
     var path = '/paynotify/wx';
    var response = await HttpUtils.post(path, );
    return response;
    }
        /// @path /product/list
    /// @desc 列表
    static Future<ProductDTO> productList() async{
    var path = '/product/list';
    var response = await HttpUtils.get(path,params:req.toJson());
     return ProductDTO.fromJson(response);
    }
        /// @path /test/1
    /// @desc 测试1
    static Future<dynamic> test1() async{
    var path = '/test/1';
    var response = await HttpUtils.get(path,params:req.toJson());
     return response;
    }
        /// @path /test/applogin
    /// @desc 模拟app
    static Future<Response> testApplogin(TestApploginReqDTO req) async{
    var path = '/test/applogin';
    var response = await HttpUtils.get(path,params:req.toJson());
     return Response.fromJson(response);
    }
        /// @path /test/check
    /// @desc check
    static Future<dynamic> testCheck(TestCheckReqDTO req) async{
    var path = '/test/check';
    var response = await HttpUtils.get(path,params:req.toJson());
     return response;
    }
        /// @path /test/pay/query
    /// @desc testimport
    static Future<dynamic> testPayQuery(TestPayQueryReqDTO req) async{
    var path = '/test/pay/query';
    var response = await HttpUtils.get(path,params:req.toJson());
     return response;
    }
        /// @path /test/testdelete
    /// @desc testdelete
    static Future<dynamic> testTestdelete() async{
    var path = '/test/testdelete';
    var response = await HttpUtils.get(path,params:req.toJson());
     return response;
    }
        /// @path /test/testimport
    /// @desc testimport
    static Future<dynamic> testTestimport() async{
    var path = '/test/testimport';
    var response = await HttpUtils.get(path,params:req.toJson());
     return response;
    }
    
  }
  