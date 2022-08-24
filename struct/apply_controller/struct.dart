/// GENERATED CODE - DO NOT MODIFY BY HAND
      /// **************************************************************************
      /// struct.dart
      /// **************************************************************************
            class TUpdateVisionCupApplyCertReqVo{
            /// 证件号码;
            String? certNo;
            /// 证件类型;
            int? certType;
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
            /// 在读学校;
            String? schoolCode;
            /// 在读学校名称， 有code取code，没code取name;
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
      certNo = json[certNo];
        certType = json[certType];
        gradeCode = json[gradeCode];
        messageCheckCode = json[messageCheckCode];
        parentName = json[parentName];
        parentPhone = json[parentPhone];
        phone = json[phone];
        schoolCode = json[schoolCode];
        schoolName = json[schoolName];
    
  }
  
      }
                
          
        