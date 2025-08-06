
//: Declare String Begin

/*: "mf/user/getUserInfo" :*/
fileprivate let show_imageStr:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","U","s","e","r","I","n","f","o"]

/*: "uid" :*/
fileprivate let constServiceTitle:[UInt8] = [0x64,0x69,0x75]

/*: "mf/user/getReceivedGifts" :*/
fileprivate let app_mePath:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","R","e","c","e","i","v"]
fileprivate let app_modelErrorValue:[Character] = ["e","d","G","i","f","t","s"]

/*: "mf/crush/send" :*/
fileprivate let data_phoneMessage:[Character] = ["m"]
fileprivate let main_timeStr:[Character] = ["f","/","c","r","u","s","h","/","s","e","n","d"]

/*: "targetUid" :*/
fileprivate let showSessionValue:[UInt8] = [0x64,0x69,0x55,0x74,0x65,0x67,0x72,0x61,0x74]

/*: "user/attention" :*/
fileprivate let notiIconStr:[UInt8] = [0x2f,0x29,0x3f,0x28,0x75,0x3b,0x2e,0x2e,0x3f,0x34,0x2e,0x33,0x35,0x34]

private func collectionTop(log num: UInt8) -> UInt8 {
    return num ^ 90
}

/*: "user/removeAttention" :*/
fileprivate let notiButtonPath:String = "user/rfor view now else"
fileprivate let appFrameUrl:String = "ttinfo"
fileprivate let show_textFormat:[Character] = ["n","t","i","o","n"]

/*: "attentionUid" :*/
fileprivate let data_indexKey:[UInt8] = [0x64,0x69,0x55,0x6e,0x6f,0x69,0x74,0x6e,0x65,0x74,0x74,0x61]

/*: "removeAttentionUid" :*/
fileprivate let showLeadingStr:[UInt8] = [0x89,0x9e,0x96,0x94,0x8d,0x9e,0xba,0x8f,0x8f,0x9e,0x95,0x8f,0x92,0x94,0x95,0xae,0x92,0x9f]

/*: "user/addBlack" :*/
fileprivate let userSourceTitle:[UInt8] = [0x6b,0x63,0x61,0x6c,0x42,0x64,0x64,0x61,0x2f,0x72,0x65,0x73,0x75]

/*: "user/remBlack" :*/
fileprivate let kCellMsg:[Character] = ["u","s","e","r","/","r","e","m","B"]
fileprivate let k_insideArrayKey:String = "lacclear"

/*: "mf/moment/like" :*/
fileprivate let main_toLabelValue:String = "MF"
fileprivate let const_allLastFormat:[Character] = ["/","m","o","m","e","n","t","/","l","i","k","e"]

/*: "momentId" :*/
fileprivate let const_afterBuildName:[UInt8] = [0x27,0x29,0x27,0x1f,0x28,0x2e,0x3,0x1e]

fileprivate func dispersedPhase(thought num: UInt8) -> UInt8 {
    let value = Int(num) + 70
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "type" :*/
fileprivate let constRequestFormat:[UInt8] = [0x67,0x6a,0x63,0x76]

private func hourAngleVertical(video num: UInt8) -> UInt8 {
    return num ^ 19
}

/*: "mf/user/uploadAuthPic" :*/
fileprivate let constSlightUrl:[Character] = ["m","f","/","u","s","e","r","/","u"]
fileprivate let kGreetStr:String = "PLO"
fileprivate let user_normalText:String = "intimate insert selfadAu"

/*: "auth_pic" :*/
fileprivate let appTargetEqualId:[UInt8] = [0x19,0xd,0xc,0x10,0x27,0x8,0x11,0x1b]

private func clickIndex(close num: UInt8) -> UInt8 {
    return num ^ 120
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserRequestManager: NSObject {
class BackgroundThen: NSObject {
    // MARK: - 用户信息

    //: class func func__otherUserInfo(uid: String, completion: @escaping FinishBlock) {
    class func off(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/user/getUserInfo"
        reqModel.requestPath = (String(show_imageStr))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: constServiceTitle.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 收到的礼物

    //: class func func__getReceivedGift(uid: String, completion: @escaping FinishBlock) {
    class func profile(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/user/getReceivedGifts"
        reqModel.requestPath = (String(app_mePath) + String(app_modelErrorValue))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: constServiceTitle.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 发送心动

    //: class func func__sendCrushWithUserId(targetUid: String, completion: @escaping FinishBlock) {
    class func addPathConsumer(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/crush/send"
        reqModel.requestPath = (String(data_phoneMessage) + String(main_timeStr))
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: showSessionValue.reversed(), encoding: .utf8)!: targetUid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 关注

    //: class func func__attentionWithUserId(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
    class func displayCompletion(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isAttention == true ? "user/attention" : "user/removeAttention"
        reqModel.requestPath = isAttention == true ? String(bytes: notiIconStr.map{collectionTop(log: $0)}, encoding: .utf8)! : (String(notiButtonPath.prefix(6)) + "emoveA" + appFrameUrl.replacingOccurrences(of: "info", with: "e") + String(show_textFormat))
        //: reqModel.params = isAttention == true ? ["attentionUid": uid] : ["removeAttentionUid": uid]
        reqModel.params = isAttention == true ? [String(bytes: data_indexKey.reversed(), encoding: .utf8)!: uid] : [String(bytes: showLeadingStr.map{$0^251}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 拉黑

    //: class func func__pullBlackWithUserId(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
    class func nowadays(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isBlack == true ? "user/addBlack" : "user/remBlack"
        reqModel.requestPath = isBlack == true ? String(bytes: userSourceTitle.reversed(), encoding: .utf8)! : (String(kCellMsg) + k_insideArrayKey.replacingOccurrences(of: "clear", with: "k"))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: constServiceTitle.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: if succeed == true {
            if succeed == true {
                //: if isBlack {
                if isBlack {
                    //: TalkingBlockListManager.shared.addUserToBlockList(userId: uid)
                    NameListManager.shared.beyondSlideId(userId: uid)
                    //: } else {
                } else {
                    //: TalkingBlockListManager.shared.removeUserForBlockList(userId: uid)
                    NameListManager.shared.turnId(userId: uid)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 点赞

    //: class func func__likeMoment(mid: String, type: String, completion: @escaping FinishBlock) {
    class func completionKey(mid: String, type: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/moment/like"
        reqModel.requestPath = (main_toLabelValue.lowercased() + String(const_allLastFormat))
        //: reqModel.params = ["momentId": mid, "type": type]
        reqModel.params = [String(bytes: const_afterBuildName.map{dispersedPhase(thought: $0)}, encoding: .utf8)!: mid, String(bytes: constRequestFormat.map{hourAngleVertical(video: $0)}, encoding: .utf8)!: type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 举报

    //: class func func__reportRequest(reqPath: String, reqParams: Dictionary<String, String>, completion: @escaping FinishBlock) {
    class func sum(reqPath: String, reqParams: [String: String], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = reqPath
        reqModel.requestPath = reqPath
        //: reqModel.params = reqParams
        reqModel.params = reqParams
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 真人认证

    //: class func func__realVerifyUploadPic(pic: UIImage, completion: @escaping FinishBlock) {
    class func viewCompletion(pic: UIImage, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/user/uploadAuthPic"
        reqModel.requestPath = (String(constSlightUrl) + kGreetStr.lowercased() + String(user_normalText.suffix(4)) + "thPic")
        //: let data = pic.jpegData(compressionQuality: 1)
        let data = pic.jpegData(compressionQuality: 1)
        //: reqModel.params = ["auth_pic": data ?? ""]
        reqModel.params = [String(bytes: appTargetEqualId.map{clickIndex(close: $0)}, encoding: .utf8)!: data ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
