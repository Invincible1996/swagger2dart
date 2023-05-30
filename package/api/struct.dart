class CommunityAttentionListReq {
  int? communityId;
  int? position;
  int? status;

  CommunityAttentionListReq({
    this.communityId,
    this.position,
    this.status,
  });
  CommunityAttentionListReq.fromJson(Map<String, dynamic> json) {
    communityId = json['communityId'];
    position = json['position'];
    status = json['status'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    communityId = communityId;
    position = position;
    status = status;
    return data;
  }
}

class CommunityInfoReq {
  int? id;

  CommunityInfoReq({
    this.id,
  });
  CommunityInfoReq.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    id = id;
    return data;
  }
}

class CommunityListReq {
  int? type;
  int? pageStart;
  int? pageSize;

  CommunityListReq({
    this.type,
    this.pageStart,
    this.pageSize,
  });
  CommunityListReq.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    pageStart = json['pageStart'];
    pageSize = json['pageSize'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    type = type;
    pageStart = pageStart;
    pageSize = pageSize;
    return data;
  }
}

class CustCreateTempUserReq {
  CustCreateTempUserReq.fromJson(Map<String, dynamic> json) {}
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class CustInfoReq {
  CustInfoReq.fromJson(Map<String, dynamic> json) {}
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class CustListTempUserReq {
  CustListTempUserReq.fromJson(Map<String, dynamic> json) {}
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class CustSameGroupAndCommunityReq {
  String? userId;

  CustSameGroupAndCommunityReq({
    this.userId,
  });
  CustSameGroupAndCommunityReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    userId = userId;
    return data;
  }
}

class DiscoverArticleListReq {
  String? customerId;
  int? pageStart;
  int? pageSize;

  DiscoverArticleListReq({
    this.customerId,
    this.pageStart,
    this.pageSize,
  });
  DiscoverArticleListReq.fromJson(Map<String, dynamic> json) {
    customerId = json['customerId'];
    pageStart = json['pageStart'];
    pageSize = json['pageSize'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    customerId = customerId;
    pageStart = pageStart;
    pageSize = pageSize;
    return data;
  }
}

class DiscoverInfoReq {
  String? customerId;

  DiscoverInfoReq({
    this.customerId,
  });
  DiscoverInfoReq.fromJson(Map<String, dynamic> json) {
    customerId = json['customerId'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    customerId = customerId;
    return data;
  }
}

class MissionHallReq {
  int? pageStart;
  int? pageSize;

  MissionHallReq({
    this.pageStart,
    this.pageSize,
  });
  MissionHallReq.fromJson(Map<String, dynamic> json) {
    pageStart = json['pageStart'];
    pageSize = json['pageSize'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    pageStart = pageStart;
    pageSize = pageSize;
    return data;
  }
}

class OpenApplicationUpdateReq {
  String? applicationUid;
  String? deviceType;

  OpenApplicationUpdateReq({
    this.applicationUid,
    this.deviceType,
  });
  OpenApplicationUpdateReq.fromJson(Map<String, dynamic> json) {
    applicationUid = json['applicationUid'];
    deviceType = json['deviceType'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    applicationUid = applicationUid;
    deviceType = deviceType;
    return data;
  }
}

class OrderQueryReq {
  int? orderId;

  OrderQueryReq({
    this.orderId,
  });
  OrderQueryReq.fromJson(Map<String, dynamic> json) {
    orderId = json['orderId'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    orderId = orderId;
    return data;
  }
}

class PaynotifyWxReq {
  PaynotifyWxReq.fromJson(Map<String, dynamic> json) {}
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class ProductListReq {
  ProductListReq.fromJson(Map<String, dynamic> json) {}
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class VipGetVipPermissionReq {
  String? permissionType;
  String? targetCode;

  VipGetVipPermissionReq({
    this.permissionType,
    this.targetCode,
  });
  VipGetVipPermissionReq.fromJson(Map<String, dynamic> json) {
    permissionType = json['permissionType'];
    targetCode = json['targetCode'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    permissionType = permissionType;
    targetCode = targetCode;
    return data;
  }
}
