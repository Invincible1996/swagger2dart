/// GENERATED CODE - DO NOT MODIFY BY HAND
      /// **************************************************************************
      /// struct.dart
      /// **************************************************************************
            class TVisionCupApplyReqVo{
            /// 证件号码;
            String? certNo;
            /// 证件类型;
            int? certType;
            /// 投放渠道;
            String? channel;
            /// 在读年级;
            int? gradeCode;
            /// 短信验证码;
            String? messageCheckCode;
            /// 家长姓名;
            String? parentName;
            /// 家长手机号码;
            String? parentPhone;
            /// 手机号码;
            String? phone;
            /// 一级渠道来源;
            String? primarySource;
            /// 在读学校;
            String? schoolCode;
            /// 在读学校名称， 有code取code，没code取name;
            String? schoolName;
            /// 二级渠道来源;
            String? secondarySource;
            /// 学生code;
            String? studentCode;
            /// 学生姓名;
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
      certNo = json[certNo];
        certType = json[certType];
        channel = json[channel];
        gradeCode = json[gradeCode];
        messageCheckCode = json[messageCheckCode];
        parentName = json[parentName];
        parentPhone = json[parentPhone];
        phone = json[phone];
        primarySource = json[primarySource];
        schoolCode = json[schoolCode];
        schoolName = json[schoolName];
        secondarySource = json[secondarySource];
        studentCode = json[studentCode];
        studentName = json[studentName];
    
  }
  
      }
                
                class TCheckMessageCheckCodeReqVo{
            /// 短信验证码;
            String? messageCheckCode;
            /// 手机号码;
            String? phone;
      
        TCheckMessageCheckCodeReqVo({
          this.messageCheckCode,
        this.phone,
    
  });
  
        TCheckMessageCheckCodeReqVo.fromJson(Map<String, dynamic> json) {
      messageCheckCode = json[messageCheckCode];
        phone = json[phone];
    
  }
  
      }
                
                class TCertNoLoginInfoReqVo{
            /// 准考证号;
            String? examCertNo;
            /// 手机号码;
            String? studentName;
      
        TCertNoLoginInfoReqVo({
          this.examCertNo,
        this.studentName,
    
  });
  
        TCertNoLoginInfoReqVo.fromJson(Map<String, dynamic> json) {
      examCertNo = json[examCertNo];
        studentName = json[studentName];
    
  }
  
      }
                
                class TMessageLoginInfoReqVo{
            /// 短信验证码;
            String? messageCheckCode;
            /// 手机号码;
            String? phone;
            /// 学生姓名;
            String? studentName;
      
        TMessageLoginInfoReqVo({
          this.messageCheckCode,
        this.phone,
        this.studentName,
    
  });
  
        TMessageLoginInfoReqVo.fromJson(Map<String, dynamic> json) {
      messageCheckCode = json[messageCheckCode];
        phone = json[phone];
        studentName = json[studentName];
    
  }
  
      }
                
                class TMessageCheckCodeReqVo{
            /// 图片验证码;
            String? checkCode;
            /// 1-报名，2-登录;
            int? messageType;
            /// 手机号码;
            String? phone;
            /// 图片随带code;
            String? picCode;
      
        TMessageCheckCodeReqVo({
          this.checkCode,
        this.messageType,
        this.phone,
        this.picCode,
    
  });
  
        TMessageCheckCodeReqVo.fromJson(Map<String, dynamic> json) {
      checkCode = json[checkCode];
        messageType = json[messageType];
        phone = json[phone];
        picCode = json[picCode];
    
  }
  
      }
                
                class TLinkInfoReqVo{
            /// 链接;
            String? link;
      
        TLinkInfoReqVo({
          this.link,
    
  });
  
        TLinkInfoReqVo.fromJson(Map<String, dynamic> json) {
      link = json[link];
    
  }
  
      }
                
                class TMiddleSchoolQueryRequest{
            /// 城市;
            String? city;
            /// 国家;
            String? country;
            /// 学校名称;
            String? name;
            /// 省;
            String? province;
            /// 学校类型 初中 高中;
            int? type;
      
        TMiddleSchoolQueryRequest({
          this.city,
        this.country,
        this.name,
        this.province,
        this.type,
    
  });
  
        TMiddleSchoolQueryRequest.fromJson(Map<String, dynamic> json) {
      city = json[city];
        country = json[country];
        name = json[name];
        province = json[province];
        type = json[type];
    
  }
  
      }
                
          
        