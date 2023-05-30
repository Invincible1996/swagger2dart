/// GENERATED CODE - DO NOT MODIFY BY HAND
/// **************************************************************************
/// service.dart
/// **************************************************************************

import '../net/http_util.dart';
import 'struct.dart';

class ApiService {
  ///@path /community/add
  ///@desc 创建社区
  ///@method GET
  Future communityAdd() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /community/attention
  ///@desc 关注-反向操作
  ///@method GET
  Future communityAttention() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /community/attention/list
  ///@desc 审核关注列表
  ///@method GET
  Future communityAttentionList(CommunityAttentionListReq req) async {
    try {
      final response = await HttpUtils.get('/community/attention/list',
          params: req.toJson());
    } catch (e) {
      rethrow;
    }
  }

  ///@path /community/auditAttention
  ///@desc 审核关注
  ///@method GET
  Future communityAuditAttention() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /community/cancelAsAdmin
  ///@desc 取消管理员
  ///@method GET
  Future communityCancelAsAdmin() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /community/delete
  ///@desc 删除社区
  ///@method GET
  Future communityDelete() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /community/info
  ///@desc 详情
  ///@method GET
  Future communityInfo(CommunityInfoReq req) async {
    try {
      final response =
          await HttpUtils.get('/community/info', params: req.toJson());
    } catch (e) {
      rethrow;
    }
  }

  ///@path /community/list
  ///@desc 列表
  ///@method GET
  Future communityList(CommunityListReq req) async {
    try {
      final response =
          await HttpUtils.get('/community/list', params: req.toJson());
    } catch (e) {
      rethrow;
    }
  }

  ///@path /community/modify
  ///@desc 修改社区
  ///@method GET
  Future communityModify() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /community/setAsAdmin
  ///@desc 设置成管理员
  ///@method GET
  Future communitySetAsAdmin() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /cust/createTempUser
  ///@desc 生成临时用户
  ///@method GET
  Future custCreateTempUser() async {
    try {
      final response = await HttpUtils.get(
        '/cust/createTempUser',
      );
    } catch (e) {
      rethrow;
    }
  }

  ///@path /cust/createTmpUserSig
  ///@desc 生成 临时 UserSig
  ///@method GET
  Future custCreateTmpUserSig() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /cust/createUserSig
  ///@desc 生成 UserSig -只保持三天的时间
  ///@method GET
  Future custCreateUserSig() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /cust/info
  ///@desc 详情
  ///@method GET
  Future custInfo() async {
    try {
      final response = await HttpUtils.get(
        '/cust/info',
      );
    } catch (e) {
      rethrow;
    }
  }

  ///@path /cust/listTempUser
  ///@desc 查询所有临时用户
  ///@method GET
  Future custListTempUser() async {
    try {
      final response = await HttpUtils.get(
        '/cust/listTempUser',
      );
    } catch (e) {
      rethrow;
    }
  }

  ///@path /cust/sameGroupAndCommunity
  ///@desc 共同的群组和社区
  ///@method GET
  Future custSameGroupAndCommunity(CustSameGroupAndCommunityReq req) async {
    try {
      final response = await HttpUtils.get('/cust/sameGroupAndCommunity',
          params: req.toJson());
    } catch (e) {
      rethrow;
    }
  }

  ///@path /discover/article/add
  ///@desc 图文新增
  ///@method GET
  Future discoverArticleAdd() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /discover/article/del
  ///@desc 图文删除
  ///@method GET
  Future discoverArticleDel() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /discover/article/list
  ///@desc 图文列表-倒序-customerId如果没传，取当前会话
  ///@method GET
  Future discoverArticleList(DiscoverArticleListReq req) async {
    try {
      final response =
          await HttpUtils.get('/discover/article/list', params: req.toJson());
    } catch (e) {
      rethrow;
    }
  }

  ///@path /discover/article/modify
  ///@desc 图文修改
  ///@method GET
  Future discoverArticleModify() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /discover/comment/add
  ///@desc 评论
  ///@method GET
  Future discoverCommentAdd() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /discover/comment/del
  ///@desc 删除评论
  ///@method GET
  Future discoverCommentDel() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /discover/info
  ///@desc 详情-customerId如果没传，取当前会话
  ///@method GET
  Future discoverInfo(DiscoverInfoReq req) async {
    try {
      final response =
          await HttpUtils.get('/discover/info', params: req.toJson());
    } catch (e) {
      rethrow;
    }
  }

  ///@path /discover/modify
  ///@desc 更新
  ///@method GET
  Future discoverModify() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /discover/star/add
  ///@desc 点赞
  ///@method GET
  Future discoverStarAdd() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /discover/star/del
  ///@desc 取消点赞
  ///@method GET
  Future discoverStarDel() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /mission/add
  ///@desc 发布任务
  ///@method GET
  Future missionAdd() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /mission/complain
  ///@desc 投诉任务
  ///@method GET
  Future missionComplain() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /mission/delete
  ///@desc 删除任务
  ///@method GET
  Future missionDelete() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /mission/hall
  ///@desc 大厅
  ///@method GET
  Future missionHall(MissionHallReq req) async {
    try {
      final response =
          await HttpUtils.get('/mission/hall', params: req.toJson());
    } catch (e) {
      rethrow;
    }
  }

  ///@path /mission/modify
  ///@desc 修改任务
  ///@method GET
  Future missionModify() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /notify/
  ///@desc 测试1
  ///@method GET
  Future notify() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /open/applicationUpdate
  ///@desc app版本信息
  ///@method GET
  Future openApplicationUpdate(OpenApplicationUpdateReq req) async {
    try {
      final response =
          await HttpUtils.get('/open/applicationUpdate', params: req.toJson());
    } catch (e) {
      rethrow;
    }
  }

  ///@path /open/file
  ///@desc 文件上传接口
  ///@method GET
  Future openFile() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /open/loginOrRegister
  ///@desc 登录、注册
  ///@method GET
  Future openLoginOrRegister() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /open/pict
  ///@desc 图片上传接口
  ///@method GET
  Future openPict() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /open/sendCode
  ///@desc 发送短信验证码
  ///@method GET
  Future openSendCode() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /order/prepay
  ///@desc 预下单 返回微信单号
  ///@method GET
  Future orderPrepay() async {
    try {} catch (e) {
      rethrow;
    }
  }

  ///@path /order/query
  ///@desc 查询
  ///@method GET
  Future orderQuery(OrderQueryReq req) async {
    try {
      final response =
          await HttpUtils.get('/order/query', params: req.toJson());
    } catch (e) {
      rethrow;
    }
  }

  ///@path /paynotify/wx
  ///@desc 微信订单支付通知
  ///@method GET
  Future paynotifyWx() async {
    try {
      final response = await HttpUtils.get(
        '/paynotify/wx',
      );
    } catch (e) {
      rethrow;
    }
  }

  ///@path /product/list
  ///@desc 列表
  ///@method GET
  Future productList() async {
    try {
      final response = await HttpUtils.get(
        '/product/list',
      );
    } catch (e) {
      rethrow;
    }
  }

  ///@path /vip/getVipPermission
  ///@desc 查询是否有权限
  ///@method GET
  Future vipGetVipPermission(VipGetVipPermissionReq req) async {
    try {
      final response =
          await HttpUtils.get('/vip/getVipPermission', params: req.toJson());
    } catch (e) {
      rethrow;
    }
  }
}
