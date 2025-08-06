
//: Declare String Begin

/*: "msgInfo" :*/
fileprivate let app_equalName:[Character] = ["m","s","g","I","n","f"]
fileprivate let mainAtId:String = "data"

/*: "jumps" :*/
fileprivate let user_sharedTitle:String = "JUMPS"

/*: "uid" :*/
fileprivate let noti_viewName:[Character] = ["u","i","d"]

/*: "roomId" :*/
fileprivate let data_resultFormat:[UInt8] = [0xca,0xd7,0xd7,0xd5,0xf1,0xdc]

/*: "msgId" :*/
fileprivate let userAddText:[UInt8] = [0x96,0x88,0x9c,0xb2,0x9f]

private func homeTouch(color num: UInt8) -> UInt8 {
    return num ^ 251
}

/*: "time" :*/
fileprivate let main_sizeMessage:[UInt8] = [0x5c,0x51,0x55,0x4d]

fileprivate func betweenRaw(beat num: UInt8) -> UInt8 {
    let value = Int(num) + 24
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LayerChatManager.swift
//  AbroadTalking
//
//  Created by young on 2023/4/12.
//

//: import UIKit
import UIKit

//: class TalkingGroupChatManager: NSObject {
class LayerChatManager: NSObject {
    //: weak var chatRoomVC: TalkingGroupChatController?
    weak var chatRoomVC: ControllerDelegate?
    //: @objc static let share = TalkingGroupChatManager()
    @objc static let share = LayerChatManager()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - 处理@ 消息

//: extension TalkingGroupChatManager {
extension LayerChatManager {
    /// 接收到@ 消息
    /// - Parameters:
    ///   - msg: 腾讯消息体
    ///   - extraInfo: "extra" 数据
    //: func receivedMentionMsg(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
    func cohere(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
        //: let dict = JSON(extraInfo)
        let dict = JSON(extraInfo)
        //: let jumps = dict["msgInfo"]["jumps"].arrayValue
        let jumps = dict[(String(app_equalName) + mainAtId.replacingOccurrences(of: "data", with: "o"))][(user_sharedTitle.lowercased())].arrayValue

        // 判断是否有@ 本人
        //: var atMe = false
        var atMe = false
        //: for dict in jumps {
        for dict in jumps {
            //: if dict["uid"].stringValue == PunctuateThen.share.loginUid {
            if dict[(String(noti_viewName))].stringValue == PunctuateThen.share.loginUid {
                //: atMe = true
                atMe = true
                //: break
                break
            }
        }
        //: guard atMe == true else { return }
        guard atMe == true else { return }

        //: let sendTime = msg.timestamp.timeIntervalSince1970*1000
        let sendTime = msg.timestamp.timeIntervalSince1970 * 1000
        //: if PublisherReactiveCompatible.isGroupChat(msg.groupID) {
        if PublisherReactiveCompatible.receiveChatBlock(msg.groupID) { // 家族
            //: } else {
        } else { // 公共聊天室
            //: guard let vc = chatRoomVC else { return }
            guard let vc = chatRoomVC else { return }
            //: let dict: [String: Any] = ["roomId": msg.groupID ?? "",
            let dict: [String: Any] = [String(bytes: data_resultFormat.map{$0^184}, encoding: .utf8)!: msg.groupID ?? "",
                                       //: "msgId": msg.msgID ?? "",
                                       String(bytes: userAddText.map{homeTouch(color: $0)}, encoding: .utf8)!: msg.msgID ?? "",
                                       //: "time": sendTime]
                                       String(bytes: main_sizeMessage.map{betweenRaw(beat: $0)}, encoding: .utf8)!: sendTime]
            //: vc.handleMentionMsg(info: dict)
            vc.messageInfo(info: dict)
        }
    }
}
