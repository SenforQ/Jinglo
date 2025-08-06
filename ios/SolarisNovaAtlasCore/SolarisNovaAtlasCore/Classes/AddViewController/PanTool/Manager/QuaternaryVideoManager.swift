
//: Declare String Begin

/*: "mf/videoMatch/switch" :*/
fileprivate let noti_paraUrl:String = "mf/videfalse in info show"
fileprivate let kSiblingViewValue:String = "size elseoMatch"

/*: "status" :*/
fileprivate let noti_intimateFormat:[UInt8] = [0xbd,0xba,0xaf,0xba,0xbb,0xbd]

private func equalControl(model num: UInt8) -> UInt8 {
    return num ^ 206
}

/*: "mf/videoMatch/checkMatch" :*/
fileprivate let constPushUrl:String = "mf/vattribute top"
fileprivate let k_objectName:String = "model cell add lab frametch/"
fileprivate let k_itemTitle:[Character] = ["a","t","c","h"]

/*: "matchVersion" :*/
fileprivate let main_sizeValue:[UInt8] = [0x65,0x69,0x7c,0x6b,0x60,0x5e,0x6d,0x7a,0x7b,0x61,0x67,0x66]

private func blockMake(top num: UInt8) -> UInt8 {
    return num ^ 8
}

/*: "v4" :*/
fileprivate let show_universalName:String = "page"

/*: "enterType" :*/
fileprivate let noti_siblingData:[UInt8] = [0xa8,0xa3,0xb9,0xa8,0xbf,0x99,0xb4,0xbd,0xa8]

/*: "mf/videoMatch/headPics" :*/
fileprivate let dataStatusKey:[Character] = ["m","f","/","v","i"]
fileprivate let userIndexName:String = "to array large text casedeoM"
fileprivate let userShadeFormat:String = "headPicsto lab"

/*: "mf/videoMatch/matchV3" :*/
fileprivate let showSucceedId:String = "mf/vidcount view super view"
fileprivate let userSizeData:[Character] = ["m","a","t","c","h","V","3"]

/*: "matchId" :*/
fileprivate let dataSayHiddenMessage:[UInt8] = [0x51,0x45,0x58,0x47,0x4c,0x2d,0x48]

fileprivate func toSelf(send num: UInt8) -> UInt8 {
    let value = Int(num) + 28
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/videoMatch/matchV4" :*/
fileprivate let mainTableFormat:[Character] = ["m","f","/","v","i","d","e","o","M","a","t","c","h","/","m"]
fileprivate let show_colorTitle:String = "style make image to fileatchV4"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuaternaryVideoManager.swift
//  AbroadTalking
//
//  Created by young on 2022/11/4.
//

//: import UIKit
import UIKit

//: class TalkingQuickVideoManager: NSObject {
class QuaternaryVideoManager: NSObject {
    /// 视频速配开关（女）
    /// - Parameters:
    ///   - status: status=1开启，status=0关闭
    ///   - completion: 回调
    //: class func req_videoMatchSwitch(status: Bool, completion: @escaping FinishBlock) {
    class func alongEqualCan(status: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/switch"
        reqModel.requestPath = (String(noti_paraUrl.prefix(7)) + String(kSiblingViewValue.suffix(6)) + "/switch")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: reqModel.params = ["status": status]
        reqModel.params = [String(bytes: noti_intimateFormat.map{equalControl(model: $0)}, encoding: .utf8)!: status]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 视频速配资格检查（男）
    /// - Parameters:
    ///   - isRandomVideo: 是否是随机视频
    ///   - completion: 回调
    //: class func req_videoMatchCheck(enterType: Int = 0, completion: @escaping FinishBlock) {
    class func colouredOn(enterType: Int = 0, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/checkMatch"
        reqModel.requestPath = (String(constPushUrl.prefix(4)) + "ideoMa" + String(k_objectName.suffix(4)) + "checkM" + String(k_itemTitle))
        //: reqModel.params = ["matchVersion": "v4", "enterType": enterType]
        reqModel.params = [String(bytes: main_sizeValue.map{blockMake(top: $0)}, encoding: .utf8)!: "v4", String(bytes: noti_siblingData.map{$0^205}, encoding: .utf8)!: enterType]
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 速配头像列表（男）
    /// - Parameter completion: 回调
    //: class func req_videoMatchHeadPics(completion: @escaping FinishBlock) {
    class func cameraEqual(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/headPics"
        reqModel.requestPath = (String(dataStatusKey) + String(userIndexName.suffix(4)) + "atch/" + String(userShadeFormat.prefix(8)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始视频速配（男）
    /// - Parameters:
    ///   - matchId: 默认传0，skip的时候传之前的matchId
    ///   - completion: 回调
    //: class func req_videoMatchToMatch(matchId: Int, completion: @escaping FinishBlock) {
    class func getWeaving(matchId: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/matchV3"
        reqModel.requestPath = (String(showSucceedId.prefix(6)) + "eoMatch/" + String(userSizeData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["matchId": matchId]
        reqModel.params = [String(bytes: dataSayHiddenMessage.map{toSelf(send: $0)}, encoding: .utf8)!: matchId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始随机视频（男）
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_randomVideoToMatch(params: [String: Any], completion: @escaping FinishBlock) {
    class func atApp(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/matchV4"
        reqModel.requestPath = (String(mainTableFormat) + String(show_colorTitle.suffix(6)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
