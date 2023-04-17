
  ///@desc 审核关注列表请求参数
  class CommunityAttentionListReqDTO {
      int? communityId;
  CommunityAttentionListReqDTO({
      this.communityId,
});  CommunityAttentionListReqDTO.fromJsom(Map<String, dynamic> json) {
      communityId = json['communityId'];
}  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
      data['communityId'] =communityId;
return data;}}  ///@desc 详情请求参数
  class CommunityInfoReqDTO {
      int? id;
  CommunityInfoReqDTO({
      this.id,
});  CommunityInfoReqDTO.fromJsom(Map<String, dynamic> json) {
      id = json['id'];
}  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
      data['id'] =id;
return data;}}  ///@desc 列表请求参数
  class CommunityListReqDTO {
      int? type;
      int? pageStart;
      int? pageSize;
  CommunityListReqDTO({
      this.type,
      this.pageStart,
      this.pageSize,
});  CommunityListReqDTO.fromJsom(Map<String, dynamic> json) {
      type = json['type'];
      pageStart = json['pageStart'];
      pageSize = json['pageSize'];
}  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
      data['type'] =type;
      data['pageStart'] =pageStart;
      data['pageSize'] =pageSize;
return data;}}  ///@desc 图文列表-倒序请求参数
  class DiscoverArticleListReqDTO {
      int? pageStart;
      int? pageSize;
  DiscoverArticleListReqDTO({
      this.pageStart,
      this.pageSize,
});  DiscoverArticleListReqDTO.fromJsom(Map<String, dynamic> json) {
      pageStart = json['pageStart'];
      pageSize = json['pageSize'];
}  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
      data['pageStart'] =pageStart;
      data['pageSize'] =pageSize;
return data;}}  ///@desc 大厅请求参数
  class MissionHallReqDTO {
      int? pageStart;
      int? pageSize;
  MissionHallReqDTO({
      this.pageStart,
      this.pageSize,
});  MissionHallReqDTO.fromJsom(Map<String, dynamic> json) {
      pageStart = json['pageStart'];
      pageSize = json['pageSize'];
}  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
      data['pageStart'] =pageStart;
      data['pageSize'] =pageSize;
return data;}}  ///@desc 查询请求参数
  class OrderQueryReqDTO {
      int? orderId;
  OrderQueryReqDTO({
      this.orderId,
});  OrderQueryReqDTO.fromJsom(Map<String, dynamic> json) {
      orderId = json['orderId'];
}  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
      data['orderId'] =orderId;
return data;}}  ///@desc 模拟app请求参数
  class TestApploginReqDTO {
      int? customerId;
  TestApploginReqDTO({
      this.customerId,
});  TestApploginReqDTO.fromJsom(Map<String, dynamic> json) {
      customerId = json['customerId'];
}  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
      data['customerId'] =customerId;
return data;}}  ///@desc check请求参数
  class TestCheckReqDTO {
      String? userID;
  TestCheckReqDTO({
      this.userID,
});  TestCheckReqDTO.fromJsom(Map<String, dynamic> json) {
      userID = json['userID'];
}  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
      data['userID'] =userID;
return data;}}  ///@desc testimport请求参数
  class TestPayQueryReqDTO {
      String? outRefundNo;
  TestPayQueryReqDTO({
      this.outRefundNo,
});  TestPayQueryReqDTO.fromJsom(Map<String, dynamic> json) {
      outRefundNo = json['outRefundNo'];
}  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
      data['outRefundNo'] =outRefundNo;
return data;}}