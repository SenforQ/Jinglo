
//: Declare String Begin

/*: "party/enter" :*/
fileprivate let noti_toTitleTextId:String = "parrequesty"
fileprivate let dataClickMsg:String = "/enterblock user"

/*: "roomId" :*/
fileprivate let mainTodayFormat:[UInt8] = [0x64,0x49,0x6d,0x6f,0x6f,0x72]

/*: "party/start" :*/
fileprivate let kAppComeFormat:[Character] = ["p","a","r","t","y"]
fileprivate let userTopNosePath:[Character] = ["/","s","t","a","r","t"]

/*: "party/close" :*/
fileprivate let mainViewTitle:String = "info nameparty/c"
fileprivate let const_makeEditValue:[Character] = ["l","o","s","e"]

/*: "party/changeRoom" :*/
fileprivate let const_actualValue:[Character] = ["p","a","r","t","y","/","c","h","a","n","g","e","R","o","o"]
fileprivate let kHiddenTitle:String = "bottom"

/*: "beforeRoomId" :*/
fileprivate let main_sessionId:[UInt8] = [0x96,0x91,0x92,0x9b,0x86,0x91,0xa6,0x9b,0x9b,0x99,0xbd,0x90]

/*: "party/mikeList" :*/
fileprivate let constNameFullKey:[Character] = ["p","a","r","t","y","/","m"]
fileprivate let mainFrameKey:[Character] = ["i","k","e","L","i","s","t"]

/*: "uid" :*/
fileprivate let data_rangeMakeName:[UInt8] = [0xf6,0xea,0xe7]

private func theDisplayLast(size num: UInt8) -> UInt8 {
    return num ^ 131
}

/*: "type" :*/
fileprivate let k_resultBottomText:[UInt8] = [0xa0,0xad,0xa4,0xb1]

private func largeMessage(strength num: UInt8) -> UInt8 {
    return num ^ 212
}

/*: "pos" :*/
fileprivate let k_tableValue:[UInt8] = [0x62,0x7d,0x61]

/*: "toPos" :*/
fileprivate let mainBackgroundUrl:[Character] = ["t","o","P","o","s"]

/*: "party/mike" :*/
fileprivate let show_accountText:String = "P"
fileprivate let data_toolStr:[Character] = ["a","r","t","y","/","m","i","k","e"]

/*: "party/adminMike" :*/
fileprivate let showColorId:[Character] = ["p","a","r","t","y"]
fileprivate let user_imageMessage:String = "/admerror view self connect"

/*: "party/list" :*/
fileprivate let noti_lineStopStr:String = "little content input self titleparty/lis"
fileprivate let mainSaveSectionStr:String = "index"

/*: "party/onlineNum" :*/
fileprivate let notiChildPath:String = "pacornery"
fileprivate let noti_originSourceUrl:String = "neNummore conversation name"

/*: "party/onlineList" :*/
fileprivate let const_centerMsg:[Character] = ["p","a","r","t","y","/","o","n","l","i","n","e","L","i","s","t"]

/*: "party/mute" :*/
fileprivate let data_fileMessage:[Character] = ["p","a","r","t","y","/"]
fileprivate let userDistantUrl:[Character] = ["m","u","t","e"]

/*: "targetUid" :*/
fileprivate let mainCountKey:[UInt8] = [0x24,0x31,0x22,0x37,0x35,0x24,0x5,0x39,0x34]

private func subView(center num: UInt8) -> UInt8 {
    return num ^ 80
}

/*: "duration" :*/
fileprivate let main_likeName:[UInt8] = [0xad,0xbe,0xbb,0xaa,0xbd,0xb2,0xb8,0xb7]

fileprivate func enablingClause(tool num: UInt8) -> UInt8 {
    let value = Int(num) - 73
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "party/unmute" :*/
fileprivate let k_pathText:[Character] = ["p","a","r","t","y","/","u","n","m","u","t","e"]

/*: "party/kickout" :*/
fileprivate let user_backgroundPath:[Character] = ["p","a","r","t","y","/","k"]
fileprivate let constMagnitudeContent:String = "ICKOUT"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ResurveyReqTool.swift
//  SolarisNovaAtlasCore
//
//  Created by DouXiu on 2024/9/19.
//

/// 语聊房相关接口
//: class TalkingVoiceRoomReqTool {
class ResurveyReqTool {
    /// 开启语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    ///   - completion: 回调
    //: class func req_voiceRoomCheck(roomId: String? = nil, completion: @escaping FinishBlock) {
    class func randomCompletion(roomId: String? = nil, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: if let roomId = roomId {
        if let roomId = roomId { // 进入房间
            //: reqModel.requestPath = "party/enter"
            reqModel.requestPath = (noti_toTitleTextId.replacingOccurrences(of: "request", with: "t") + String(dataClickMsg.prefix(6)))
            //: reqModel.params = ["roomId": roomId]
            reqModel.params = [String(bytes: mainTodayFormat.reversed(), encoding: .utf8)!: roomId]
            //: } else {
        } else { // 创建房间
            //: reqModel.requestPath = "party/start"
            reqModel.requestPath = (String(kAppComeFormat) + String(userTopNosePath))
        }
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主销毁语聊房
    //: class func req_voiceRoomClose(roomId: String, completion: FinishBlock? = nil) {
    class func proximate(roomId: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "party/close"
        reqModel.requestPath = (String(mainViewTitle.suffix(7)) + String(const_makeEditValue))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: mainTodayFormat.reversed(), encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 切房
    /// - Parameters:
    ///   - roomId: 当前进入房间Id
    ///   - beforeRoomId: 上一房间Id
    ///   - completion: 回调
    //: class func req_voiceRoomSwitch(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
    class func textTo(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/changeRoom"
        reqModel.requestPath = (String(const_actualValue) + kHiddenTitle.replacingOccurrences(of: "bottom", with: "m"))
        //: reqModel.params = ["roomId": roomId, "beforeRoomId": beforeRoomId]
        reqModel.params = [String(bytes: mainTodayFormat.reversed(), encoding: .utf8)!: roomId, String(bytes: main_sessionId.map{$0^244}, encoding: .utf8)!: beforeRoomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取语聊房麦位列表
    //: class func req_getMikeList(roomId: String, completion: @escaping (_ data: [TalkingMikeListItemModel]) -> Void) {
    class func resumeCompletion(roomId: String, completion: @escaping (_ data: [WithMeasurable]) -> Void) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "party/mikeList"
        reqModel.requestPath = (String(constNameFullKey) + String(mainFrameKey))
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: mainTodayFormat.reversed(), encoding: .utf8)!: roomId]
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { _, result, _ in
        showTopStr.toFromLabel(model: reqModel) { _, result, _ in
            //: var dataArr: [TalkingMikeListItemModel] = []
            var dataArr: [WithMeasurable] = []
            //: guard let arr = result as? [[String: Any]] else {
            guard let arr = result as? [[String: Any]] else {
                //: completion(dataArr)
                completion(dataArr)
                //: return
                return
            }
            //: if let datas = Array<TalkingMikeListItemModel>.deserialize(from: arr as? Array) as? [TalkingMikeListItemModel] {
            if let datas = Array<WithMeasurable>.deserialize(from: arr as? Array) as? [WithMeasurable] {
                //: dataArr.append(contentsOf: datas)
                dataArr.append(contentsOf: datas)
            }
            //: completion(dataArr)
            completion(dataArr)
        }
    }

    /// 房主/观众 语音房操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 上麦，2 下麦，3 切麦，4 开麦，5 闭麦
    ///   - position: 当前麦位
    ///   - toPos: 目标麦位（切麦传值）
    ///   - completion: 回调
    //: class func req_changeMike(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
    class func littleness(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
        //: var params: [String: Any] = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        var params: [String: Any] = [String(bytes: mainTodayFormat.reversed(), encoding: .utf8)!: roomId, String(bytes: data_rangeMakeName.map{theDisplayLast(size: $0)}, encoding: .utf8)!: uid, String(bytes: k_resultBottomText.map{largeMessage(strength: $0)}, encoding: .utf8)!: type, String(bytes: k_tableValue.map{$0^18}, encoding: .utf8)!: position]
        //: if type == 3 {
        if type == 3 {
            //: params["toPos"] = toPos
            params[(String(mainBackgroundUrl))] = toPos
        }
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "party/mike"
        reqModel.requestPath = (show_accountText.lowercased() + String(data_toolStr))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主对他人操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 锁麦，2 解锁麦，3 踢下麦，4 开麦，5 闭麦
    ///   - position: 麦位
    ///   - completion: 回调
    //: class func req_adminChangeMike(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
    class func dose(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "party/adminMike"
        reqModel.requestPath = (String(showColorId) + String(user_imageMessage.prefix(4)) + "inMike")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        reqModel.params = [String(bytes: mainTodayFormat.reversed(), encoding: .utf8)!: roomId, String(bytes: data_rangeMakeName.map{theDisplayLast(size: $0)}, encoding: .utf8)!: uid, String(bytes: k_resultBottomText.map{largeMessage(strength: $0)}, encoding: .utf8)!: type, String(bytes: k_tableValue.map{$0^18}, encoding: .utf8)!: position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// Party 列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_partyList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func stud(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/list"
        reqModel.requestPath = (String(noti_lineStopStr.suffix(9)) + mainSaveSectionStr.replacingOccurrences(of: "index", with: "t"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线人数
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineNum(roomId: String, completion: @escaping FinishBlock) {
    class func libertyParty(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "party/onlineNum"
        reqModel.requestPath = (notiChildPath.replacingOccurrences(of: "corner", with: "rt") + "/onli" + String(noti_originSourceUrl.prefix(5)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: mainTodayFormat.reversed(), encoding: .utf8)!: roomId]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线用户列表
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineList(roomId: String, completion: @escaping FinishBlock) {
    class func credits(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "party/onlineList"
        reqModel.requestPath = (String(const_centerMsg))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: mainTodayFormat.reversed(), encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: class func req_VoiceRoomMute(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
    class func serviceCloakroom(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "party/mute"
        reqModel.requestPath = (String(data_fileMessage) + String(userDistantUrl))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID, "duration": duration]
        reqModel.params = [String(bytes: mainCountKey.map{subView(center: $0)}, encoding: .utf8)!: targetUid, String(bytes: mainTodayFormat.reversed(), encoding: .utf8)!: roomID, String(bytes: main_likeName.map{enablingClause(tool: $0)}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: class func req_VoiceRoomUnMute(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
    class func feeModel(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "party/unmute"
        reqModel.requestPath = (String(k_pathText))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID]
        reqModel.params = [String(bytes: mainCountKey.map{subView(center: $0)}, encoding: .utf8)!: targetUid, String(bytes: mainTodayFormat.reversed(), encoding: .utf8)!: roomID]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 踢出房间
    //: class func req_VoiceRoomKickout(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
    class func phonation(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "party/kickout"
        reqModel.requestPath = (String(user_backgroundPath) + constMagnitudeContent.lowercased())
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomId]
        reqModel.params = [String(bytes: mainCountKey.map{subView(center: $0)}, encoding: .utf8)!: targetUid, String(bytes: mainTodayFormat.reversed(), encoding: .utf8)!: roomId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
