  /// GENERATED CODE - DO NOT MODIFY BY HAND
  /// **************************************************************************
  /// service.dart
  /// **************************************************************************
  
  import 'struct.dart';
  import '../net/http_util.dart';
  class ApiService {
        ///@path /community/add
      ///@desc 创建社区
      ///@method POST
      Future communityAdd(CommunityAddReq req) async{
         try {
         final response = await  await HttpUtils.post('/community/add', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /community/attention
      ///@desc 关注-反向操作
      ///@method POST
      Future communityAttention(IdDTO req) async{
         try {
         final response = await  await HttpUtils.post('/community/attention', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /community/attention/list
      ///@desc 审核关注列表
      ///@method GET
      Future communityAttentionList(CommunityAttentionListReq req) async{
        try {
          final response = await HttpUtils.get('/community/attention/list', params: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /community/auditAttention
      ///@desc 审核关注
      ///@method POST
      Future communityAuditAttention(AuditAttentionReq req) async{
         try {
         final response = await  await HttpUtils.post('/community/auditAttention', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /community/cancelAsAdmin
      ///@desc 取消管理员
      ///@method POST
      Future communityCancelAsAdmin(SetAsAdminReq req) async{
         try {
         final response = await  await HttpUtils.post('/community/cancelAsAdmin', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /community/delete
      ///@desc 删除社区
      ///@method POST
      Future communityDelete(IdDTO req) async{
         try {
         final response = await  await HttpUtils.post('/community/delete', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /community/info
      ///@desc 详情
      ///@method GET
      Future communityInfo(CommunityInfoReq req) async{
        try {
          final response = await HttpUtils.get('/community/info', params: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /community/list
      ///@desc 列表
      ///@method GET
      Future communityList(CommunityListReq req) async{
        try {
          final response = await HttpUtils.get('/community/list', params: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /community/modify
      ///@desc 修改社区
      ///@method POST
      Future communityModify(CommunityModifyReq req) async{
         try {
         final response = await  await HttpUtils.post('/community/modify', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /community/setAsAdmin
      ///@desc 设置成管理员
      ///@method POST
      Future communitySetAsAdmin(SetAsAdminReq req) async{
         try {
         final response = await  await HttpUtils.post('/community/setAsAdmin', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /cust/createTempUser
      ///@desc 生成临时用户
      ///@method GET
      Future custCreateTempUser() async{
        try {
          final response = await HttpUtils.get('/cust/createTempUser',  );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /cust/createTmpUserSig
      ///@desc 生成 临时 UserSig 
      ///@method POST
      Future custCreateTmpUserSig(CreateUserSigReq req) async{
         try {
         final response = await  await HttpUtils.post('/cust/createTmpUserSig', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /cust/createUserSig
      ///@desc 生成 UserSig -只保持三天的时间
      ///@method POST
      Future custCreateUserSig() async{
         try {
         final response = await  await HttpUtils.post('/cust/createUserSig',  );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /cust/info
      ///@desc 详情
      ///@method GET
      Future custInfo() async{
        try {
          final response = await HttpUtils.get('/cust/info',  );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /cust/listTempUser
      ///@desc 查询所有临时用户
      ///@method GET
      Future custListTempUser() async{
        try {
          final response = await HttpUtils.get('/cust/listTempUser',  );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /cust/sameGroupAndCommunity
      ///@desc 共同的群组和社区
      ///@method GET
      Future custSameGroupAndCommunity(CustSameGroupAndCommunityReq req) async{
        try {
          final response = await HttpUtils.get('/cust/sameGroupAndCommunity', params: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /discover/article/add
      ///@desc 图文新增
      ///@method POST
      Future discoverArticleAdd(ArticleAddReq req) async{
         try {
         final response = await  await HttpUtils.post('/discover/article/add', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /discover/article/del
      ///@desc 图文删除
      ///@method POST
      Future discoverArticleDel(IdDTO req) async{
         try {
         final response = await  await HttpUtils.post('/discover/article/del', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /discover/article/list
      ///@desc 图文列表-倒序-customerId如果没传，取当前会话
      ///@method GET
      Future discoverArticleList(DiscoverArticleListReq req) async{
        try {
          final response = await HttpUtils.get('/discover/article/list', params: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /discover/article/modify
      ///@desc 图文修改
      ///@method POST
      Future discoverArticleModify(ArticleModifyReq req) async{
         try {
         final response = await  await HttpUtils.post('/discover/article/modify', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /discover/comment/add
      ///@desc 评论
      ///@method POST
      Future discoverCommentAdd(CommentAddReq req) async{
         try {
         final response = await  await HttpUtils.post('/discover/comment/add', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /discover/comment/del
      ///@desc 删除评论
      ///@method POST
      Future discoverCommentDel(IdDTO req) async{
         try {
         final response = await  await HttpUtils.post('/discover/comment/del', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /discover/info
      ///@desc 详情-customerId如果没传，取当前会话
      ///@method GET
      Future discoverInfo(DiscoverInfoReq req) async{
        try {
          final response = await HttpUtils.get('/discover/info', params: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /discover/modify
      ///@desc 更新
      ///@method POST
      Future discoverModify(DiscoverDTO req) async{
         try {
         final response = await  await HttpUtils.post('/discover/modify', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /discover/star/add
      ///@desc 点赞
      ///@method POST
      Future discoverStarAdd(StarReq req) async{
         try {
         final response = await  await HttpUtils.post('/discover/star/add', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /discover/star/del
      ///@desc 取消点赞
      ///@method POST
      Future discoverStarDel(StarReq req) async{
         try {
         final response = await  await HttpUtils.post('/discover/star/del', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /mission/add
      ///@desc 发布任务
      ///@method POST
      Future missionAdd(MissionAddReq req) async{
         try {
         final response = await  await HttpUtils.post('/mission/add', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /mission/complain
      ///@desc 投诉任务
      ///@method POST
      Future missionComplain(MissionComplainReq req) async{
         try {
         final response = await  await HttpUtils.post('/mission/complain', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /mission/delete
      ///@desc 删除任务
      ///@method POST
      Future missionDelete(IdDTO req) async{
         try {
         final response = await  await HttpUtils.post('/mission/delete', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /mission/hall
      ///@desc 大厅
      ///@method GET
      Future missionHall(MissionHallReq req) async{
        try {
          final response = await HttpUtils.get('/mission/hall', params: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /mission/modify
      ///@desc 修改任务
      ///@method POST
      Future missionModify(MissionModifyReq req) async{
         try {
         final response = await  await HttpUtils.post('/mission/modify', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /notify/
      ///@desc 测试1
      ///@method POST
      Future notify() async{
         try {
         final response = await  await HttpUtils.post('/notify/',  );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /open/applicationUpdate
      ///@desc app版本信息
      ///@method GET
      Future openApplicationUpdate(OpenApplicationUpdateReq req) async{
        try {
          final response = await HttpUtils.get('/open/applicationUpdate', params: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /open/file
      ///@desc 文件上传接口
      ///@method POST
      Future openFile() async{
         try {
         final response = await  await HttpUtils.post('/open/file',  );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /open/loginOrRegister
      ///@desc 登录、注册
      ///@method POST
      Future openLoginOrRegister(LoginOrRegisterReq req) async{
         try {
         final response = await  await HttpUtils.post('/open/loginOrRegister', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /open/pict
      ///@desc 图片上传接口
      ///@method POST
      Future openPict() async{
         try {
         final response = await  await HttpUtils.post('/open/pict',  );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /open/sendCode
      ///@desc 发送短信验证码
      ///@method POST
      Future openSendCode(SendCodeReq req) async{
         try {
         final response = await  await HttpUtils.post('/open/sendCode', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /order/prepay
      ///@desc 预下单 返回微信单号
      ///@method POST
      Future orderPrepay(PrepayOrderReq req) async{
         try {
         final response = await  await HttpUtils.post('/order/prepay', data: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /order/query
      ///@desc 查询
      ///@method GET
      Future orderQuery(OrderQueryReq req) async{
        try {
          final response = await HttpUtils.get('/order/query', params: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /paynotify/wx
      ///@desc 微信订单支付通知
      ///@method GET
      Future paynotifyWx() async{
        try {
          final response = await HttpUtils.get('/paynotify/wx',  );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /product/list
      ///@desc 列表
      ///@method GET
      Future productList() async{
        try {
          final response = await HttpUtils.get('/product/list',  );
        } catch (e) {
          rethrow;  
        }
      }
            ///@path /vip/getVipPermission
      ///@desc 查询是否有权限
      ///@method GET
      Future vipGetVipPermission(VipGetVipPermissionReq req) async{
        try {
          final response = await HttpUtils.get('/vip/getVipPermission', params: req.toJson() );
        } catch (e) {
          rethrow;  
        }
      }
      
  }
  