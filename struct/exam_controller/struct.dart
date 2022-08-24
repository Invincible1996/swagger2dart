/// GENERATED CODE - DO NOT MODIFY BY HAND
      /// **************************************************************************
      /// struct.dart
      /// **************************************************************************
            class TExamAnswerReqVO{
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
      examHistoryId = json[examHistoryId];
        questionAnswer = json[questionAnswer];
        questionOrder = json[questionOrder];
        questionUid = json[questionUid];
    
  }
  
      }
                
                class TAnswerInvestigatesReqVO{
            /// 答题内容;
            List<TAnswerInvestigateReqVO>? records;
      
        TAnswerInvestigatesReqVO({
          this.records,
    
  });
  
        TAnswerInvestigatesReqVO.fromJson(Map<String, dynamic> json) {
      records = json[records];
    
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
      answer = json[answer];
        elseContent = json[elseContent];
        uid = json[uid];
    
  }
  
     }
      
                class TExamPaperIdReqVO{
            /// 考试试卷ID;
            int? examPaperId;
      
        TExamPaperIdReqVO({
          this.examPaperId,
    
  });
  
        TExamPaperIdReqVO.fromJson(Map<String, dynamic> json) {
      examPaperId = json[examPaperId];
    
  }
  
      }
                
                class TExamHistoryIdReqVO{
            /// 学员考试记录ID;
            int? examHistoryId;
      
        TExamHistoryIdReqVO({
          this.examHistoryId,
    
  });
  
        TExamHistoryIdReqVO.fromJson(Map<String, dynamic> json) {
      examHistoryId = json[examHistoryId];
    
  }
  
      }
                
                class TExamEventSubmitReqVO{
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
      examHistoryId = json[examHistoryId];
        name = json[name];
        operateType = json[operateType];
        url = json[url];
    
  }
  
      }
                
          
        