
//: Declare String Begin

/*: "live/enter" :*/
fileprivate let const_playerTopMessage:[Character] = ["l","i"]
fileprivate let userViewMsg:[Character] = ["v","e","/","e","n","t","e","r"]

/*: "streamerUid" :*/
fileprivate let dataTextSizeValue:[UInt8] = [0x99,0x9e,0x98,0x8f,0x8b,0x87,0x8f,0x98,0xbf,0x83,0x8e]

/*: "live/userNum" :*/
fileprivate let user_linePath:[Character] = ["l","i","v","e","/","u"]
fileprivate let userMessageFrameData:[Character] = ["s","e","r","N","u","m"]

/*: "chatGroupId" :*/
fileprivate let constViewId:[UInt8] = [0xb4,0xb9,0xb2,0xc5,0x98,0xc3,0xc0,0xc6,0xc1,0x9a,0xb5]

fileprivate func textRaw(selected num: UInt8) -> UInt8 {
    let value = Int(num) - 81
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "live/members" :*/
fileprivate let showStyleKey:String = "user view current view videolive/"

/*: "live/mute" :*/
fileprivate let appTitleName:[Character] = ["l","i","v","e","/","m","u","t","e"]

/*: "targetUid" :*/
fileprivate let data_viewFormat:[UInt8] = [0x64,0x69,0x55,0x74,0x65,0x67,0x72,0x61,0x74]

/*: "duration" :*/
fileprivate let userExtraDataReasonTitle:[UInt8] = [0x8a,0x9b,0x98,0x87,0x9a,0x8f,0x95,0x94]

fileprivate func yesBeauty(device num: UInt8) -> UInt8 {
    let value = Int(num) + 218
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "live/unmute" :*/
fileprivate let app_contentShadowFormat:String = "live/udate to"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CookingPanAudienceManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

// 观众/主播
//: class TalkingAudienceManager: NSObject {
class CookingPanAudienceManager: NSObject {
    /// 进房
    //: func req_enterLiveRoom(streamerUid: String, completion: @escaping FinishBlock) {
    func styleChemicalElement(streamerUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "live/enter"
        reqModel.requestPath = (String(const_playerTopMessage) + String(userViewMsg))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["streamerUid": streamerUid]
        reqModel.params = [String(bytes: dataTextSizeValue.map{$0^234}, encoding: .utf8)!: streamerUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线人数
    //: func req_liveRoomOnlineNum(chatGroupId: String, completion: @escaping FinishBlock) {
    func tent(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "live/userNum"
        reqModel.requestPath = (String(user_linePath) + String(userMessageFrameData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: constViewId.map{textRaw(selected: $0)}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线列表
    //: func req_liveRoomOnlineList(chatGroupId: String, completion: @escaping FinishBlock) {
    func openline(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "live/members"
        reqModel.requestPath = (String(showStyleKey.suffix(5)) + "members")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: constViewId.map{textRaw(selected: $0)}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: func req_liveRoomMute(targetUid: String, duration: String, completion: @escaping FinishBlock) {
    func nameOverpopulate(targetUid: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "live/mute"
        reqModel.requestPath = (String(appTitleName))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "duration": duration]
        reqModel.params = [String(bytes: data_viewFormat.reversed(), encoding: .utf8)!: targetUid, String(bytes: userExtraDataReasonTitle.map{yesBeauty(device: $0)}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: func req_liveRoomUnmute(targetUid: String, completion: @escaping FinishBlock) {
    func leapOut(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "live/unmute"
        reqModel.requestPath = (String(app_contentShadowFormat.prefix(6)) + "nmute")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: data_viewFormat.reversed(), encoding: .utf8)!: targetUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
