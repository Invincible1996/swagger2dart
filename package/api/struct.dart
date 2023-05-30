class TencentResp {
  String? ActionStatus;
  int? ErrorCode;
  String? ErrorDisplay;
  String? ErrorInfo;

  TencentResp({
    this.ActionStatus,
    this.ErrorCode,
    this.ErrorDisplay,
    this.ErrorInfo,
  });

  TencentResp.fromJson(Map<String, dynamic> json) {
    ActionStatus = json['ActionStatus'];
    ErrorCode = json['ErrorCode'];
    ErrorDisplay = json['ErrorDisplay'];
    ErrorInfo = json['ErrorInfo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ActionStatus'] = ActionStatus;
    data['ErrorCode'] = ErrorCode;
    data['ErrorDisplay'] = ErrorDisplay;
    data['ErrorInfo'] = ErrorInfo;
    return data;
  }
}

class ArticleModifyReq {
  String? content;
  int? id;
  String? location;
  int? openType;
  List<String>? picList;

  ArticleModifyReq({
    this.content,
    this.id,
    this.location,
    this.openType,
    this.picList,
  });

  ArticleModifyReq.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    id = json['id'];
    location = json['location'];
    openType = json['openType'];
    picList = json['picList'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['content'] = content;
    data['id'] = id;
    data['location'] = location;
    data['openType'] = openType;
    data['picList'] = picList;
    return data;
  }
}

class GroupDTO {
  String? groupCode;
  int? id;
  String? name;
  int? ownerId;
  int? type;

  GroupDTO({
    this.groupCode,
    this.id,
    this.name,
    this.ownerId,
    this.type,
  });

  GroupDTO.fromJson(Map<String, dynamic> json) {
    groupCode = json['groupCode'];
    id = json['id'];
    name = json['name'];
    ownerId = json['ownerId'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['groupCode'] = groupCode;
    data['id'] = id;
    data['name'] = name;
    data['ownerId'] = ownerId;
    data['type'] = type;
    return data;
  }
}

class ApplicationUpdateDTO {
  String? applicationUid;
  int? build;
  int? deviceType;
  int? forceUpdate;
  int? id;
  String? updateContent;
  String? url;
  String? version;

  ApplicationUpdateDTO({
    this.applicationUid,
    this.build,
    this.deviceType,
    this.forceUpdate,
    this.id,
    this.updateContent,
    this.url,
    this.version,
  });

  ApplicationUpdateDTO.fromJson(Map<String, dynamic> json) {
    applicationUid = json['applicationUid'];
    build = json['build'];
    deviceType = json['deviceType'];
    forceUpdate = json['forceUpdate'];
    id = json['id'];
    updateContent = json['updateContent'];
    url = json['url'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['applicationUid'] = applicationUid;
    data['build'] = build;
    data['deviceType'] = deviceType;
    data['forceUpdate'] = forceUpdate;
    data['id'] = id;
    data['updateContent'] = updateContent;
    data['url'] = url;
    data['version'] = version;
    return data;
  }
}

class ArticleDTO {
  List<CommentTreeDTO>? commentTreeDTOs;
  String? content;
  int? customerId;
  String? faceUrl;
  int? id;
  bool? isStar;
  String? location;
  String? nick;
  String? occurTime;
  int? openType;
  List<String>? picList;
  String? pics;
  List<String>? starNickNames;
  String? userId;

  ArticleDTO({
    this.commentTreeDTOs,
    this.content,
    this.customerId,
    this.faceUrl,
    this.id,
    this.isStar,
    this.location,
    this.nick,
    this.occurTime,
    this.openType,
    this.picList,
    this.pics,
    this.starNickNames,
    this.userId,
  });

  ArticleDTO.fromJson(Map<String, dynamic> json) {
    commentTreeDTOs = json['commentTreeDTOs'];
    content = json['content'];
    customerId = json['customerId'];
    faceUrl = json['faceUrl'];
    id = json['id'];
    isStar = json['isStar'];
    location = json['location'];
    nick = json['nick'];
    occurTime = json['occurTime'];
    openType = json['openType'];
    picList = json['picList'];
    pics = json['pics'];
    starNickNames = json['starNickNames'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['commentTreeDTOs'] = commentTreeDTOs;
    data['content'] = content;
    data['customerId'] = customerId;
    data['faceUrl'] = faceUrl;
    data['id'] = id;
    data['isStar'] = isStar;
    data['location'] = location;
    data['nick'] = nick;
    data['occurTime'] = occurTime;
    data['openType'] = openType;
    data['picList'] = picList;
    data['pics'] = pics;
    data['starNickNames'] = starNickNames;
    data['userId'] = userId;
    return data;
  }
}

class AuditAttentionReq {
  int? communityId;
  int? customerId;
  int? isPass;

  AuditAttentionReq({
    this.communityId,
    this.customerId,
    this.isPass,
  });

  AuditAttentionReq.fromJson(Map<String, dynamic> json) {
    communityId = json['communityId'];
    customerId = json['customerId'];
    isPass = json['isPass'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['communityId'] = communityId;
    data['customerId'] = customerId;
    data['isPass'] = isPass;
    return data;
  }
}

class CommunityWebPageListReq {
  int? customerId;
  String? name;
  bool? needTotalCount;
  int? offset;
  int? pageNum;
  int? pageSize;
  int? status;

  CommunityWebPageListReq({
    this.customerId,
    this.name,
    this.needTotalCount,
    this.offset,
    this.pageNum,
    this.pageSize,
    this.status,
  });

  CommunityWebPageListReq.fromJson(Map<String, dynamic> json) {
    customerId = json['customerId'];
    name = json['name'];
    needTotalCount = json['needTotalCount'];
    offset = json['offset'];
    pageNum = json['pageNum'];
    pageSize = json['pageSize'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['customerId'] = customerId;
    data['name'] = name;
    data['needTotalCount'] = needTotalCount;
    data['offset'] = offset;
    data['pageNum'] = pageNum;
    data['pageSize'] = pageSize;
    data['status'] = status;
    return data;
  }
}

class IdDTO {
  int? id;

  IdDTO({
    this.id,
  });

  IdDTO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    return data;
  }
}

class TempUserDTO {
  String? userId;

  TempUserDTO({
    this.userId,
  });

  TempUserDTO.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    return data;
  }
}

class OrderWebPageListReq {
  bool? needTotalCount;
  int? offset;
  int? pageNum;
  int? pageSize;
  int? status;

  OrderWebPageListReq({
    this.needTotalCount,
    this.offset,
    this.pageNum,
    this.pageSize,
    this.status,
  });

  OrderWebPageListReq.fromJson(Map<String, dynamic> json) {
    needTotalCount = json['needTotalCount'];
    offset = json['offset'];
    pageNum = json['pageNum'];
    pageSize = json['pageSize'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['needTotalCount'] = needTotalCount;
    data['offset'] = offset;
    data['pageNum'] = pageNum;
    data['pageSize'] = pageSize;
    data['status'] = status;
    return data;
  }
}

class CommunityWebDTO {
  int? customerId;
  String? faceUrl;
  int? id;
  String? introduce;
  String? name;
  String? nick;
  int? status;

  CommunityWebDTO({
    this.customerId,
    this.faceUrl,
    this.id,
    this.introduce,
    this.name,
    this.nick,
    this.status,
  });

  CommunityWebDTO.fromJson(Map<String, dynamic> json) {
    customerId = json['customerId'];
    faceUrl = json['faceUrl'];
    id = json['id'];
    introduce = json['introduce'];
    name = json['name'];
    nick = json['nick'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['customerId'] = customerId;
    data['faceUrl'] = faceUrl;
    data['id'] = id;
    data['introduce'] = introduce;
    data['name'] = name;
    data['nick'] = nick;
    data['status'] = status;
    return data;
  }
}

class MissionWebDTO {
  String? address;
  String? city;
  String? content;
  String? county;
  int? customerId;
  String? faceUrl;
  int? id;
  String? nick;
  String? privince;
  String? publishTimeStr;

  MissionWebDTO({
    this.address,
    this.city,
    this.content,
    this.county,
    this.customerId,
    this.faceUrl,
    this.id,
    this.nick,
    this.privince,
    this.publishTimeStr,
  });

  MissionWebDTO.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    content = json['content'];
    county = json['county'];
    customerId = json['customerId'];
    faceUrl = json['faceUrl'];
    id = json['id'];
    nick = json['nick'];
    privince = json['privince'];
    publishTimeStr = json['publishTimeStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['city'] = city;
    data['content'] = content;
    data['county'] = county;
    data['customerId'] = customerId;
    data['faceUrl'] = faceUrl;
    data['id'] = id;
    data['nick'] = nick;
    data['privince'] = privince;
    data['publishTimeStr'] = publishTimeStr;
    return data;
  }
}

class AttentionInfoDTO {
  int? communityId;
  String? communityName;
  int? customerId;
  String? faceUrl;
  String? nick;
  String? position;
  int? status;
  String? statusStr;
  String? userId;

  AttentionInfoDTO({
    this.communityId,
    this.communityName,
    this.customerId,
    this.faceUrl,
    this.nick,
    this.position,
    this.status,
    this.statusStr,
    this.userId,
  });

  AttentionInfoDTO.fromJson(Map<String, dynamic> json) {
    communityId = json['communityId'];
    communityName = json['communityName'];
    customerId = json['customerId'];
    faceUrl = json['faceUrl'];
    nick = json['nick'];
    position = json['position'];
    status = json['status'];
    statusStr = json['statusStr'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['communityId'] = communityId;
    data['communityName'] = communityName;
    data['customerId'] = customerId;
    data['faceUrl'] = faceUrl;
    data['nick'] = nick;
    data['position'] = position;
    data['status'] = status;
    data['statusStr'] = statusStr;
    data['userId'] = userId;
    return data;
  }
}

class OrderWebDTO {
  String? code;
  int? customerId;
  String? faceUrl;
  int? id;
  String? nick;
  int? num;
  String? occurTimeStr;
  int? price;
  String? priceStr;
  String? productDesc;
  int? productId;
  String? productName;
  String? productProp;
  Map? productPropMap;
  int? status;
  String? statusStr;
  String? wxOrderId;
  String? wxReturnMsg;
  String? wxReturnNo;

  OrderWebDTO({
    this.code,
    this.customerId,
    this.faceUrl,
    this.id,
    this.nick,
    this.num,
    this.occurTimeStr,
    this.price,
    this.priceStr,
    this.productDesc,
    this.productId,
    this.productName,
    this.productProp,
    this.productPropMap,
    this.status,
    this.statusStr,
    this.wxOrderId,
    this.wxReturnMsg,
    this.wxReturnNo,
  });

  OrderWebDTO.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    customerId = json['customerId'];
    faceUrl = json['faceUrl'];
    id = json['id'];
    nick = json['nick'];
    num = json['num'];
    occurTimeStr = json['occurTimeStr'];
    price = json['price'];
    priceStr = json['priceStr'];
    productDesc = json['productDesc'];
    productId = json['productId'];
    productName = json['productName'];
    productProp = json['productProp'];
    productPropMap = json['productPropMap'];
    status = json['status'];
    statusStr = json['statusStr'];
    wxOrderId = json['wxOrderId'];
    wxReturnMsg = json['wxReturnMsg'];
    wxReturnNo = json['wxReturnNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['customerId'] = customerId;
    data['faceUrl'] = faceUrl;
    data['id'] = id;
    data['nick'] = nick;
    data['num'] = num;
    data['occurTimeStr'] = occurTimeStr;
    data['price'] = price;
    data['priceStr'] = priceStr;
    data['productDesc'] = productDesc;
    data['productId'] = productId;
    data['productName'] = productName;
    data['productProp'] = productProp;
    data['productPropMap'] = productPropMap;
    data['status'] = status;
    data['statusStr'] = statusStr;
    data['wxOrderId'] = wxOrderId;
    data['wxReturnMsg'] = wxReturnMsg;
    data['wxReturnNo'] = wxReturnNo;
    return data;
  }
}

class CreateUserSigReq {
  String? userId;

  CreateUserSigReq({
    this.userId,
  });

  CreateUserSigReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    return data;
  }
}

class SetAsAdminReq {
  int? communityId;
  List<int>? customerIds;

  SetAsAdminReq({
    this.communityId,
    this.customerIds,
  });

  SetAsAdminReq.fromJson(Map<String, dynamic> json) {
    communityId = json['communityId'];
    customerIds = json['customerIds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['communityId'] = communityId;
    data['customerIds'] = customerIds;
    return data;
  }
}

class PrepayOrderReq {
  int? num;
  int? productId;

  PrepayOrderReq({
    this.num,
    this.productId,
  });

  PrepayOrderReq.fromJson(Map<String, dynamic> json) {
    num = json['num'];
    productId = json['productId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['num'] = num;
    data['productId'] = productId;
    return data;
  }
}

class DiscoverDTO {
  int? customerId;
  String? faceUrl;
  int? id;
  int? openType;
  String? userId;

  DiscoverDTO({
    this.customerId,
    this.faceUrl,
    this.id,
    this.openType,
    this.userId,
  });

  DiscoverDTO.fromJson(Map<String, dynamic> json) {
    customerId = json['customerId'];
    faceUrl = json['faceUrl'];
    id = json['id'];
    openType = json['openType'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['customerId'] = customerId;
    data['faceUrl'] = faceUrl;
    data['id'] = id;
    data['openType'] = openType;
    data['userId'] = userId;
    return data;
  }
}

class ArticleAddReq {
  String? content;
  String? location;
  int? openType;
  List<String>? picList;

  ArticleAddReq({
    this.content,
    this.location,
    this.openType,
    this.picList,
  });

  ArticleAddReq.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    location = json['location'];
    openType = json['openType'];
    picList = json['picList'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['content'] = content;
    data['location'] = location;
    data['openType'] = openType;
    data['picList'] = picList;
    return data;
  }
}

class SameGroupAndCommunityDTO {
  List<CommunityDTO>? communityDTOs;
  List<GroupDTO>? groupDTOs;
  int? sameCommunityNum;
  int? sameGroupNum;

  SameGroupAndCommunityDTO({
    this.communityDTOs,
    this.groupDTOs,
    this.sameCommunityNum,
    this.sameGroupNum,
  });

  SameGroupAndCommunityDTO.fromJson(Map<String, dynamic> json) {
    communityDTOs = json['communityDTOs'];
    groupDTOs = json['groupDTOs'];
    sameCommunityNum = json['sameCommunityNum'];
    sameGroupNum = json['sameGroupNum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['communityDTOs'] = communityDTOs;
    data['groupDTOs'] = groupDTOs;
    data['sameCommunityNum'] = sameCommunityNum;
    data['sameGroupNum'] = sameGroupNum;
    return data;
  }
}

class CommentTreeDTO {
  List<CommentTreeDTO>? commentTreeDTOs;
  String? content;
  int? customerId;
  String? faceUrl;
  int? id;
  String? nick;
  String? respNick;
  String? userId;

  CommentTreeDTO({
    this.commentTreeDTOs,
    this.content,
    this.customerId,
    this.faceUrl,
    this.id,
    this.nick,
    this.respNick,
    this.userId,
  });

  CommentTreeDTO.fromJson(Map<String, dynamic> json) {
    commentTreeDTOs = json['commentTreeDTOs'];
    content = json['content'];
    customerId = json['customerId'];
    faceUrl = json['faceUrl'];
    id = json['id'];
    nick = json['nick'];
    respNick = json['respNick'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['commentTreeDTOs'] = commentTreeDTOs;
    data['content'] = content;
    data['customerId'] = customerId;
    data['faceUrl'] = faceUrl;
    data['id'] = id;
    data['nick'] = nick;
    data['respNick'] = respNick;
    data['userId'] = userId;
    return data;
  }
}

class OrderDTO {
  String? code;
  int? customerId;
  int? id;
  int? num;
  int? price;
  String? priceStr;
  String? productDesc;
  int? productId;
  String? productName;
  String? productProp;
  int? status;
  String? statusStr;
  String? wxOrderId;
  String? wxReturnNo;

  OrderDTO({
    this.code,
    this.customerId,
    this.id,
    this.num,
    this.price,
    this.priceStr,
    this.productDesc,
    this.productId,
    this.productName,
    this.productProp,
    this.status,
    this.statusStr,
    this.wxOrderId,
    this.wxReturnNo,
  });

  OrderDTO.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    customerId = json['customerId'];
    id = json['id'];
    num = json['num'];
    price = json['price'];
    priceStr = json['priceStr'];
    productDesc = json['productDesc'];
    productId = json['productId'];
    productName = json['productName'];
    productProp = json['productProp'];
    status = json['status'];
    statusStr = json['statusStr'];
    wxOrderId = json['wxOrderId'];
    wxReturnNo = json['wxReturnNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['customerId'] = customerId;
    data['id'] = id;
    data['num'] = num;
    data['price'] = price;
    data['priceStr'] = priceStr;
    data['productDesc'] = productDesc;
    data['productId'] = productId;
    data['productName'] = productName;
    data['productProp'] = productProp;
    data['status'] = status;
    data['statusStr'] = statusStr;
    data['wxOrderId'] = wxOrderId;
    data['wxReturnNo'] = wxReturnNo;
    return data;
  }
}

class LocalDateTime {
  int? dayOfMonth;
  String? dayOfWeek;
  int? dayOfYear;
  int? hour;
  int? minute;
  String? month;
  int? monthValue;
  int? nano;
  int? second;
  int? year;

  LocalDateTime({
    this.dayOfMonth,
    this.dayOfWeek,
    this.dayOfYear,
    this.hour,
    this.minute,
    this.month,
    this.monthValue,
    this.nano,
    this.second,
    this.year,
  });

  LocalDateTime.fromJson(Map<String, dynamic> json) {
    dayOfMonth = json['dayOfMonth'];
    dayOfWeek = json['dayOfWeek'];
    dayOfYear = json['dayOfYear'];
    hour = json['hour'];
    minute = json['minute'];
    month = json['month'];
    monthValue = json['monthValue'];
    nano = json['nano'];
    second = json['second'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dayOfMonth'] = dayOfMonth;
    data['dayOfWeek'] = dayOfWeek;
    data['dayOfYear'] = dayOfYear;
    data['hour'] = hour;
    data['minute'] = minute;
    data['month'] = month;
    data['monthValue'] = monthValue;
    data['nano'] = nano;
    data['second'] = second;
    data['year'] = year;
    return data;
  }
}

class MissionComplainWebPageListReq {
  String? curTimeEnd;
  String? curTimeStart;
  int? customerId;
  int? missionId;
  bool? needTotalCount;
  int? offset;
  int? pageNum;
  int? pageSize;
  int? status;
  String? type;

  MissionComplainWebPageListReq({
    this.curTimeEnd,
    this.curTimeStart,
    this.customerId,
    this.missionId,
    this.needTotalCount,
    this.offset,
    this.pageNum,
    this.pageSize,
    this.status,
    this.type,
  });

  MissionComplainWebPageListReq.fromJson(Map<String, dynamic> json) {
    curTimeEnd = json['curTimeEnd'];
    curTimeStart = json['curTimeStart'];
    customerId = json['customerId'];
    missionId = json['missionId'];
    needTotalCount = json['needTotalCount'];
    offset = json['offset'];
    pageNum = json['pageNum'];
    pageSize = json['pageSize'];
    status = json['status'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['curTimeEnd'] = curTimeEnd;
    data['curTimeStart'] = curTimeStart;
    data['customerId'] = customerId;
    data['missionId'] = missionId;
    data['needTotalCount'] = needTotalCount;
    data['offset'] = offset;
    data['pageNum'] = pageNum;
    data['pageSize'] = pageSize;
    data['status'] = status;
    data['type'] = type;
    return data;
  }
}

class CustomerTmpUserDTO {
  int? customerId;
  String? id;
  int? status;
  String? tmpUserId;

  CustomerTmpUserDTO({
    this.customerId,
    this.id,
    this.status,
    this.tmpUserId,
  });

  CustomerTmpUserDTO.fromJson(Map<String, dynamic> json) {
    customerId = json['customerId'];
    id = json['id'];
    status = json['status'];
    tmpUserId = json['tmpUserId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['customerId'] = customerId;
    data['id'] = id;
    data['status'] = status;
    data['tmpUserId'] = tmpUserId;
    return data;
  }
}

class HallMissionDTO {
  List<CommunityDTO>? communityDTOs;
  List<int>? communityIds;
  String? content;
  int? customerId;
  String? faceUrl;
  int? id;
  String? nick;
  String? publishTime;
  String? userId;

  HallMissionDTO({
    this.communityDTOs,
    this.communityIds,
    this.content,
    this.customerId,
    this.faceUrl,
    this.id,
    this.nick,
    this.publishTime,
    this.userId,
  });

  HallMissionDTO.fromJson(Map<String, dynamic> json) {
    communityDTOs = json['communityDTOs'];
    communityIds = json['communityIds'];
    content = json['content'];
    customerId = json['customerId'];
    faceUrl = json['faceUrl'];
    id = json['id'];
    nick = json['nick'];
    publishTime = json['publishTime'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['communityDTOs'] = communityDTOs;
    data['communityIds'] = communityIds;
    data['content'] = content;
    data['customerId'] = customerId;
    data['faceUrl'] = faceUrl;
    data['id'] = id;
    data['nick'] = nick;
    data['publishTime'] = publishTime;
    data['userId'] = userId;
    return data;
  }
}

class ProductWebPageListReq {
  bool? needTotalCount;
  int? offset;
  int? pageNum;
  int? pageSize;

  ProductWebPageListReq({
    this.needTotalCount,
    this.offset,
    this.pageNum,
    this.pageSize,
  });

  ProductWebPageListReq.fromJson(Map<String, dynamic> json) {
    needTotalCount = json['needTotalCount'];
    offset = json['offset'];
    pageNum = json['pageNum'];
    pageSize = json['pageSize'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['needTotalCount'] = needTotalCount;
    data['offset'] = offset;
    data['pageNum'] = pageNum;
    data['pageSize'] = pageSize;
    return data;
  }
}

class PrepayOrderResp {
  int? orderId;
  String? prepayId;

  PrepayOrderResp({
    this.orderId,
    this.prepayId,
  });

  PrepayOrderResp.fromJson(Map<String, dynamic> json) {
    orderId = json['orderId'];
    prepayId = json['prepayId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['orderId'] = orderId;
    data['prepayId'] = prepayId;
    return data;
  }
}

class CustomerWebPageListReq {
  int? gender;
  bool? needTotalCount;
  String? nick;
  int? offset;
  int? pageNum;
  int? pageSize;
  String? phone;
  int? status;
  int? vipLevel;

  CustomerWebPageListReq({
    this.gender,
    this.needTotalCount,
    this.nick,
    this.offset,
    this.pageNum,
    this.pageSize,
    this.phone,
    this.status,
    this.vipLevel,
  });

  CustomerWebPageListReq.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    needTotalCount = json['needTotalCount'];
    nick = json['nick'];
    offset = json['offset'];
    pageNum = json['pageNum'];
    pageSize = json['pageSize'];
    phone = json['phone'];
    status = json['status'];
    vipLevel = json['vipLevel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['gender'] = gender;
    data['needTotalCount'] = needTotalCount;
    data['nick'] = nick;
    data['offset'] = offset;
    data['pageNum'] = pageNum;
    data['pageSize'] = pageSize;
    data['phone'] = phone;
    data['status'] = status;
    data['vipLevel'] = vipLevel;
    return data;
  }
}

class MissionComplainReq {
  int? missionId;
  List<String>? pics;
  String? reason;
  String? type;

  MissionComplainReq({
    this.missionId,
    this.pics,
    this.reason,
    this.type,
  });

  MissionComplainReq.fromJson(Map<String, dynamic> json) {
    missionId = json['missionId'];
    pics = json['pics'];
    reason = json['reason'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['missionId'] = missionId;
    data['pics'] = pics;
    data['reason'] = reason;
    data['type'] = type;
    return data;
  }
}

class AuditCommunityReq {
  int? id;
  int? isPass;

  AuditCommunityReq({
    this.id,
    this.isPass,
  });

  AuditCommunityReq.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isPass = json['isPass'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['isPass'] = isPass;
    return data;
  }
}

class SessionDTO {
  int? customerId;
  String? token;
  String? userId;

  SessionDTO({
    this.customerId,
    this.token,
    this.userId,
  });

  SessionDTO.fromJson(Map<String, dynamic> json) {
    customerId = json['customerId'];
    token = json['token'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['customerId'] = customerId;
    data['token'] = token;
    data['userId'] = userId;
    return data;
  }
}

class MissionComplainWebDTO {
  String? curTimeStr;
  int? customerId;
  String? faceUrl;
  int? id;
  String? missionId;
  String? nick;
  List<String>? picList;
  String? pics;
  String? reason;
  int? status;
  String? type;

  MissionComplainWebDTO({
    this.curTimeStr,
    this.customerId,
    this.faceUrl,
    this.id,
    this.missionId,
    this.nick,
    this.picList,
    this.pics,
    this.reason,
    this.status,
    this.type,
  });

  MissionComplainWebDTO.fromJson(Map<String, dynamic> json) {
    curTimeStr = json['curTimeStr'];
    customerId = json['customerId'];
    faceUrl = json['faceUrl'];
    id = json['id'];
    missionId = json['missionId'];
    nick = json['nick'];
    picList = json['picList'];
    pics = json['pics'];
    reason = json['reason'];
    status = json['status'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['curTimeStr'] = curTimeStr;
    data['customerId'] = customerId;
    data['faceUrl'] = faceUrl;
    data['id'] = id;
    data['missionId'] = missionId;
    data['nick'] = nick;
    data['picList'] = picList;
    data['pics'] = pics;
    data['reason'] = reason;
    data['status'] = status;
    data['type'] = type;
    return data;
  }
}

class Chronology {
  String? calendarType;
  String? id;

  Chronology({
    this.calendarType,
    this.id,
  });

  Chronology.fromJson(Map<String, dynamic> json) {
    calendarType = json['calendarType'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['calendarType'] = calendarType;
    data['id'] = id;
    return data;
  }
}

class ProductWebDTO {
  String? desc;
  int? id;
  String? name;
  int? price;
  String? priceStr;
  String? prop;
  Map? propMap;
  int? status;
  String? statusStr;

  ProductWebDTO({
    this.desc,
    this.id,
    this.name,
    this.price,
    this.priceStr,
    this.prop,
    this.propMap,
    this.status,
    this.statusStr,
  });

  ProductWebDTO.fromJson(Map<String, dynamic> json) {
    desc = json['desc'];
    id = json['id'];
    name = json['name'];
    price = json['price'];
    priceStr = json['priceStr'];
    prop = json['prop'];
    propMap = json['propMap'];
    status = json['status'];
    statusStr = json['statusStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['desc'] = desc;
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    data['priceStr'] = priceStr;
    data['prop'] = prop;
    data['propMap'] = propMap;
    data['status'] = status;
    data['statusStr'] = statusStr;
    return data;
  }
}

class ProductDTO {
  String? desc;
  int? id;
  String? name;
  int? price;
  String? priceStr;
  String? prop;
  Map? propMap;
  int? status;
  String? statusStr;

  ProductDTO({
    this.desc,
    this.id,
    this.name,
    this.price,
    this.priceStr,
    this.prop,
    this.propMap,
    this.status,
    this.statusStr,
  });

  ProductDTO.fromJson(Map<String, dynamic> json) {
    desc = json['desc'];
    id = json['id'];
    name = json['name'];
    price = json['price'];
    priceStr = json['priceStr'];
    prop = json['prop'];
    propMap = json['propMap'];
    status = json['status'];
    statusStr = json['statusStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['desc'] = desc;
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    data['priceStr'] = priceStr;
    data['prop'] = prop;
    data['propMap'] = propMap;
    data['status'] = status;
    data['statusStr'] = statusStr;
    return data;
  }
}

class CommunityModifyReq {
  int? id;
  String? introduce;
  String? name;

  CommunityModifyReq({
    this.id,
    this.introduce,
    this.name,
  });

  CommunityModifyReq.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    introduce = json['introduce'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['introduce'] = introduce;
    data['name'] = name;
    return data;
  }
}

class MissionWebPageListReq {
  int? customerId;
  bool? needTotalCount;
  int? offset;
  int? pageNum;
  int? pageSize;
  String? publishTimeEnd;
  String? publishTimeStart;

  MissionWebPageListReq({
    this.customerId,
    this.needTotalCount,
    this.offset,
    this.pageNum,
    this.pageSize,
    this.publishTimeEnd,
    this.publishTimeStart,
  });

  MissionWebPageListReq.fromJson(Map<String, dynamic> json) {
    customerId = json['customerId'];
    needTotalCount = json['needTotalCount'];
    offset = json['offset'];
    pageNum = json['pageNum'];
    pageSize = json['pageSize'];
    publishTimeEnd = json['publishTimeEnd'];
    publishTimeStart = json['publishTimeStart'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['customerId'] = customerId;
    data['needTotalCount'] = needTotalCount;
    data['offset'] = offset;
    data['pageNum'] = pageNum;
    data['pageSize'] = pageSize;
    data['publishTimeEnd'] = publishTimeEnd;
    data['publishTimeStart'] = publishTimeStart;
    return data;
  }
}

class MissionModifyReq {
  String? address;
  String? city;
  List<int>? communityIds;
  String? content;
  String? county;
  int? id;
  String? province;

  MissionModifyReq({
    this.address,
    this.city,
    this.communityIds,
    this.content,
    this.county,
    this.id,
    this.province,
  });

  MissionModifyReq.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    communityIds = json['communityIds'];
    content = json['content'];
    county = json['county'];
    id = json['id'];
    province = json['province'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['city'] = city;
    data['communityIds'] = communityIds;
    data['content'] = content;
    data['county'] = county;
    data['id'] = id;
    data['province'] = province;
    return data;
  }
}

class VipPermissionResult {
  int? isAllow;
  String? msg;

  VipPermissionResult({
    this.isAllow,
    this.msg,
  });

  VipPermissionResult.fromJson(Map<String, dynamic> json) {
    isAllow = json['isAllow'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isAllow'] = isAllow;
    data['msg'] = msg;
    return data;
  }
}

class CustomerWebDTO {
  String? birthDay;
  String? faceUrl;
  int? gender;
  int? id;
  String? imeiCode;
  String? nick;
  String? phone;
  int? status;
  String? userId;
  String? vipExpireTimeStr;
  int? vipLevel;

  CustomerWebDTO({
    this.birthDay,
    this.faceUrl,
    this.gender,
    this.id,
    this.imeiCode,
    this.nick,
    this.phone,
    this.status,
    this.userId,
    this.vipExpireTimeStr,
    this.vipLevel,
  });

  CustomerWebDTO.fromJson(Map<String, dynamic> json) {
    birthDay = json['birthDay'];
    faceUrl = json['faceUrl'];
    gender = json['gender'];
    id = json['id'];
    imeiCode = json['imeiCode'];
    nick = json['nick'];
    phone = json['phone'];
    status = json['status'];
    userId = json['userId'];
    vipExpireTimeStr = json['vipExpireTimeStr'];
    vipLevel = json['vipLevel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['birthDay'] = birthDay;
    data['faceUrl'] = faceUrl;
    data['gender'] = gender;
    data['id'] = id;
    data['imeiCode'] = imeiCode;
    data['nick'] = nick;
    data['phone'] = phone;
    data['status'] = status;
    data['userId'] = userId;
    data['vipExpireTimeStr'] = vipExpireTimeStr;
    data['vipLevel'] = vipLevel;
    return data;
  }
}

class StarReq {
  int? articleId;
  int? discoverId;

  StarReq({
    this.articleId,
    this.discoverId,
  });

  StarReq.fromJson(Map<String, dynamic> json) {
    articleId = json['articleId'];
    discoverId = json['discoverId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['articleId'] = articleId;
    data['discoverId'] = discoverId;
    return data;
  }
}

class Response {
  String? code;
  String? message;
  bool? success;

  Response({
    this.code,
    this.message,
    this.success,
  });

  Response.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['message'] = message;
    data['success'] = success;
    return data;
  }
}

class LoginOrRegisterReq {
  String? code;
  String? imeiCode;
  String? phone;

  LoginOrRegisterReq({
    this.code,
    this.imeiCode,
    this.phone,
  });

  LoginOrRegisterReq.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    imeiCode = json['imeiCode'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['imeiCode'] = imeiCode;
    data['phone'] = phone;
    return data;
  }
}

class SendCodeReq {
  String? phone;

  SendCodeReq({
    this.phone,
  });

  SendCodeReq.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['phone'] = phone;
    return data;
  }
}

class CommunityInfoDTO {
  int? attentionCount;
  String? createTime;
  int? customerId;
  String? faceUrl;
  int? id;
  String? introduce;
  int? missionCount;
  String? name;
  String? nick;
  int? status;
  String? userId;

  CommunityInfoDTO({
    this.attentionCount,
    this.createTime,
    this.customerId,
    this.faceUrl,
    this.id,
    this.introduce,
    this.missionCount,
    this.name,
    this.nick,
    this.status,
    this.userId,
  });

  CommunityInfoDTO.fromJson(Map<String, dynamic> json) {
    attentionCount = json['attentionCount'];
    createTime = json['createTime'];
    customerId = json['customerId'];
    faceUrl = json['faceUrl'];
    id = json['id'];
    introduce = json['introduce'];
    missionCount = json['missionCount'];
    name = json['name'];
    nick = json['nick'];
    status = json['status'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['attentionCount'] = attentionCount;
    data['createTime'] = createTime;
    data['customerId'] = customerId;
    data['faceUrl'] = faceUrl;
    data['id'] = id;
    data['introduce'] = introduce;
    data['missionCount'] = missionCount;
    data['name'] = name;
    data['nick'] = nick;
    data['status'] = status;
    data['userId'] = userId;
    return data;
  }
}

class CustomerInfoDTO {
  String? birthDay;
  String? faceUrl;
  int? gender;
  int? id;
  String? imeiCode;
  String? nickName;
  String? phone;
  String? userId;
  int? vipLevel;

  CustomerInfoDTO({
    this.birthDay,
    this.faceUrl,
    this.gender,
    this.id,
    this.imeiCode,
    this.nickName,
    this.phone,
    this.userId,
    this.vipLevel,
  });

  CustomerInfoDTO.fromJson(Map<String, dynamic> json) {
    birthDay = json['birthDay'];
    faceUrl = json['faceUrl'];
    gender = json['gender'];
    id = json['id'];
    imeiCode = json['imeiCode'];
    nickName = json['nickName'];
    phone = json['phone'];
    userId = json['userId'];
    vipLevel = json['vipLevel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['birthDay'] = birthDay;
    data['faceUrl'] = faceUrl;
    data['gender'] = gender;
    data['id'] = id;
    data['imeiCode'] = imeiCode;
    data['nickName'] = nickName;
    data['phone'] = phone;
    data['userId'] = userId;
    data['vipLevel'] = vipLevel;
    return data;
  }
}

class MissionAddReq {
  String? address;
  String? city;
  List<int>? communityIds;
  String? content;
  String? county;
  String? province;

  MissionAddReq({
    this.address,
    this.city,
    this.communityIds,
    this.content,
    this.county,
    this.province,
  });

  MissionAddReq.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    communityIds = json['communityIds'];
    content = json['content'];
    county = json['county'];
    province = json['province'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['city'] = city;
    data['communityIds'] = communityIds;
    data['content'] = content;
    data['county'] = county;
    data['province'] = province;
    return data;
  }
}

class CommunityDTO {
  int? customerId;
  int? id;
  String? introduce;
  String? name;
  int? status;

  CommunityDTO({
    this.customerId,
    this.id,
    this.introduce,
    this.name,
    this.status,
  });

  CommunityDTO.fromJson(Map<String, dynamic> json) {
    customerId = json['customerId'];
    id = json['id'];
    introduce = json['introduce'];
    name = json['name'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['customerId'] = customerId;
    data['id'] = id;
    data['introduce'] = introduce;
    data['name'] = name;
    data['status'] = status;
    return data;
  }
}

class CommunityAddReq {
  String? introduce;
  double? latitude;
  double? longitude;
  String? name;

  CommunityAddReq({
    this.introduce,
    this.latitude,
    this.longitude,
    this.name,
  });

  CommunityAddReq.fromJson(Map<String, dynamic> json) {
    introduce = json['introduce'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['introduce'] = introduce;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['name'] = name;
    return data;
  }
}

class CommentAddReq {
  int? articleId;
  int? commentId;
  String? content;

  CommentAddReq({
    this.articleId,
    this.commentId,
    this.content,
  });

  CommentAddReq.fromJson(Map<String, dynamic> json) {
    articleId = json['articleId'];
    commentId = json['commentId'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['articleId'] = articleId;
    data['commentId'] = commentId;
    data['content'] = content;
    return data;
  }
}

class DiscardReq {
  int? customerId;
  int? type;

  DiscardReq({
    this.customerId,
    this.type,
  });

  DiscardReq.fromJson(Map<String, dynamic> json) {
    customerId = json['customerId'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['customerId'] = customerId;
    data['type'] = type;
    return data;
  }
}

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
    final Map<String, dynamic> data = <String, dynamic>{};
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
    final Map<String, dynamic> data = <String, dynamic>{};
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
    final Map<String, dynamic> data = <String, dynamic>{};
    type = type;
    pageStart = pageStart;
    pageSize = pageSize;
    return data;
  }
}

class CustCreateTempUserReq {
  CustCreateTempUserReq.fromJson(Map<String, dynamic> json) {}
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    return data;
  }
}

class CustInfoReq {
  CustInfoReq.fromJson(Map<String, dynamic> json) {}
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    return data;
  }
}

class CustListTempUserReq {
  CustListTempUserReq.fromJson(Map<String, dynamic> json) {}
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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
    final Map<String, dynamic> data = <String, dynamic>{};
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
    final Map<String, dynamic> data = <String, dynamic>{};
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
    final Map<String, dynamic> data = <String, dynamic>{};
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
    final Map<String, dynamic> data = <String, dynamic>{};
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
    final Map<String, dynamic> data = <String, dynamic>{};
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
    final Map<String, dynamic> data = <String, dynamic>{};
    orderId = orderId;
    return data;
  }
}

class PaynotifyWxReq {
  PaynotifyWxReq.fromJson(Map<String, dynamic> json) {}
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    return data;
  }
}

class ProductListReq {
  ProductListReq.fromJson(Map<String, dynamic> json) {}
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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
    final Map<String, dynamic> data = <String, dynamic>{};
    permissionType = permissionType;
    targetCode = targetCode;
    return data;
  }
}
