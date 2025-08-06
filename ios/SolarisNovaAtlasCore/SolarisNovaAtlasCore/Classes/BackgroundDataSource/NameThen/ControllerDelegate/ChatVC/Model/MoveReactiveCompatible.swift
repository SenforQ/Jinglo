
//: Declare String Begin

/*: "CacheIntimatePhotoUnlockMsgIdArrayKey" :*/
fileprivate let appEqualMakeUrl:[UInt8] = [0xe1,0xff,0x1,0x6,0x3,0xe7,0xc,0x12,0x7,0xb,0xff,0x12,0x3,0xee,0x6,0xd,0x12,0xd,0xf3,0xc,0xa,0xd,0x1,0x9,0xeb,0x11,0x5,0xe7,0x2,0xdf,0x10,0x10,0xff,0x17,0xe9,0x3,0x17]

fileprivate func playTitle(to num: UInt8) -> UInt8 {
    let value = Int(num) - 158
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "CachePrivateChatVideoTipsIsShow_ :*/
fileprivate let appGiftMessage:[UInt8] = [0x16,0x34,0x36,0x3d,0x30,0x5,0x27,0x3c,0x23,0x34,0x21,0x30,0x16,0x3d,0x34,0x21,0x3,0x3c,0x31,0x30,0x3a,0x1,0x3c,0x25,0x26,0x1c,0x26,0x6,0x3d,0x3a,0x22,0xa]

/*: _ :*/
fileprivate let appBindData:String = "_"

/*: "Quick greeting can only be sent to him once" :*/
fileprivate let main_nameAfterPath:[UInt8] = [0x8,0x2c,0x20,0x1a,0x22,0xd7,0x1e,0x29,0x1c,0x1c,0x2b,0x20,0x25,0x1e,0xd7,0x1a,0x18,0x25,0xd7,0x26,0x25,0x23,0x30,0xd7,0x19,0x1c,0xd7,0x2a,0x1c,0x25,0x2b,0xd7,0x2b,0x26,0xd7,0x1f,0x20,0x24,0xd7,0x26,0x25,0x1a,0x1c]

fileprivate func cornerFalse(succeed num: UInt8) -> UInt8 {
    let value = Int(num) - 183
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "txt" :*/
fileprivate let const_labelToModelTitle:String = "imaget"

/*: "audio" :*/
fileprivate let appByName:[Character] = ["a","u","d","i","o"]

/*: "Please add greeting text" :*/
fileprivate let notiNextStr:String = "Pleasmanager back"
fileprivate let notiTopPath:String = " greeself model short gift if"
fileprivate let data_centerId:[Character] = ["t"]
fileprivate let kModelStr:[Character] = ["i","n","g"," ","t","e","x","t"]

/*: "You have not set up a photo greeting, please set it up before sending!" :*/
fileprivate let userTimeMakeData:[UInt8] = [0xa9,0x9f,0x85,0xd0,0x98,0x91,0x86,0x95,0xd0,0x9e,0x9f,0x84,0xd0,0x83,0x95,0x84,0xd0,0x85,0x80,0xd0,0x91,0xd0,0x80,0x98,0x9f,0x84,0x9f,0xd0,0x97,0x82,0x95,0x95,0x84,0x99,0x9e,0x97,0xdc,0xd0,0x80,0x9c,0x95,0x91,0x83,0x95,0xd0,0x83,0x95,0x84,0xd0,0x99,0x84,0xd0,0x85,0x80,0xd0,0x92,0x95,0x96,0x9f,0x82,0x95,0xd0,0x83,0x95,0x9e,0x94,0x99,0x9e,0x97,0xd1]

private func effectTrue(sub num: UInt8) -> UInt8 {
    return num ^ 240
}

/*: "Cancel" :*/
fileprivate let appOpenValue:String = "Cancellarge type"

/*: "Go to set" :*/
fileprivate let show_nameData:String = "Go to srequest button error"
fileprivate let k_listAppMessage:String = "ET"

/*: "#startTime#" :*/
fileprivate let mainImageName:[Character] = ["#","s","t","a","r","t","T","i"]
fileprivate let showTransformCellName:String = "me#across if"

/*: "#endTime#" :*/
fileprivate let kGiftData:String = "#ebuild let"
fileprivate let const_fillMsg:String = "text true source managerndTime#"

/*: "text" :*/
fileprivate let appUserFormat:String = "tecan"

/*: "img" :*/
fileprivate let mainRowContent:[Character] = ["i","m","g"]

/*: "video" :*/
fileprivate let constEmptyContentMessage:[Character] = ["v","i","d","e","o"]

/*: "gift" :*/
fileprivate let mainCountData:String = "gifcolor"

/*: "PrivateChat 点击引用消息 :*/
fileprivate let appSizeValue:String = "Privatright self"
fileprivate let notiBackgroundData:String = "t 点击引用\u{6d88}息"

/*: ." :*/
fileprivate let userInfoPath:String = "equal"

/*: "Sent " :*/
fileprivate let userAppName:[Character] = ["S","e","n","t"," "]

/*: " x :*/
fileprivate let main_objectKey:String = "type make x"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MoveReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/1/5.
//

//: import UIKit
import UIKit

/// 一键打招呼Block
//: typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void
typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void

/// 图片打招呼Block
//: typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void
typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void

//: public class TalkingPrivateChatManager: NSObject {
public class MoveReactiveCompatible: NSObject {
    /// 记录私信对端已读回执时间 [key：userID，value：对端最后已读回执时间]
    //: var readReceiptDict = [String: Int]()
    var readReceiptDict = [String: Int]()

    //: @objc static let share = TalkingPrivateChatManager()
    @objc static let share = MoveReactiveCompatible()
    //: private override init() {}
    override private init() {}

    //: @objc let UnlockMsgIdArrayKey = "CacheIntimatePhotoUnlockMsgIdArrayKey"  // 私密照片已解锁礼物消息数组的key
    @objc let UnlockMsgIdArrayKey = String(bytes: appEqualMakeUrl.map{playTitle(to: $0)}, encoding: .utf8)! // 私密照片已解锁礼物消息数组的key
}

// MARK: - 插入音视频通话提示消息

//: extension TalkingPrivateChatManager {
extension MoveReactiveCompatible {
    /// 判断是否需要插入音视频通话提示消息
    /// - Parameters:
    ///   - toUid: 对方Id
    ///   - msgView: TUI视图
    ///   - completionHandler: 回调
    //: static func chat_privateChatVideo_insertTipMsg(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
    static func pathHandler(toUid: String, msgView: MakeTableViewController, needInsertHandler: (() -> Void)?) {
        // 非审核模式
        //: guard PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
        guard PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue else { return }
        // 男性
        //: guard PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue else { return }
        guard PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue else { return }

        // 是否展示过提示文案
        //: let TalkingPrivateChatVideoTipsIsShow = "CachePrivateChatVideoTipsIsShow_\(String(PunctuateThen.share.loginUserMode.userID))_\(toUid)"
        let TalkingPrivateChatVideoTipsIsShow = String(bytes: appGiftMessage.map{$0^85}, encoding: .utf8)! + "\(String(PunctuateThen.share.loginUserMode.userID))_\(toUid)"
        //: let isShow = Defaults.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        let isShow = constDevicePath.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        // 消息达到5条
        //: guard msgView.uiMsgs.count >= 5 else { return }
        guard msgView.uiMsgs.count >= 5 else { return }

        //: var hasVoiceVideo = false
        var hasVoiceVideo = false // 是否有音视频通话消息
        //: var outgoingMsgCount = 0
        var outgoingMsgCount = 0 // 消息发送方已发送消息数量
        //: for indexModel in msgView.uiMsgs {
        for indexModel in msgView.uiMsgs {
            //: let indexModel = indexModel as? EqualCompartmentReactiveCompatible
            let indexModel = indexModel as? EqualCompartmentReactiveCompatible
            //: if indexModel != nil {
            if indexModel != nil {
                //: if indexModel!.isKind(of: LoadReactiveCompatible.self) {
                if indexModel!.isKind(of: LoadReactiveCompatible.self) { // 是否包含音视频文本
                    //: let textMsgModel = indexModel as! LoadReactiveCompatible
                    let textMsgModel = indexModel as! LoadReactiveCompatible
                    //: if textMsgModel.isVoiceVideo == true {
                    if textMsgModel.isVoiceVideo == true {
                        //: hasVoiceVideo = true
                        hasVoiceVideo = true
                        //: break
                        break
                    }
                }

                // 语音消息 || 文本消息 || 图片消息 || 视频消息
                //: if indexModel!.isKind(of: SizeCellData.self) ||
                if indexModel!.isKind(of: SizeCellData.self) ||
                    //: indexModel!.isKind(of: LoadReactiveCompatible.self) ||
                    indexModel!.isKind(of: LoadReactiveCompatible.self) ||
                    //: indexModel!.isKind(of: ChatThen.self) ||
                    indexModel!.isKind(of: ChatThen.self) ||
                    //: indexModel!.isKind(of: DirectCellData.self) {
                    indexModel!.isKind(of: DirectCellData.self)
                {
                    //: if indexModel?.direction == .MsgDirectionOutgoing {
                    if indexModel?.direction == .MsgDirectionOutgoing { // 消息发送方
                        //: outgoingMsgCount += 1
                        outgoingMsgCount += 1
                    }
                }
            }
        }

        //: guard hasVoiceVideo == false else {
        guard hasVoiceVideo == false else {
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            constDevicePath.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            //: return
            return
        }
        //: guard outgoingMsgCount >= 5 else { return }
        guard outgoingMsgCount >= 5 else { return }

        // 回调外部插入音视频提示消息
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!()
            needInsertHandler!()
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            constDevicePath.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
        }
    }
}

// MARK: - 一键打招呼

//: extension TalkingPrivateChatManager {
extension MoveReactiveCompatible {
    /// 判断是否可以一键打招呼，回调结果
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据;
    //: static func chat_sendQuickGreeting(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
    static func counterest(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
        //: let key = "\(PunctuateThen.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(PunctuateThen.share.loginUserMode.userID)_\(k_inputData)_\(toUserId)"
        //: let ishave = UserDefaults.standard.bool(forKey: key)
        let ishave = UserDefaults.standard.bool(forKey: key)
        //: guard !ishave else {
        guard !ishave else {
            //: completionHandler(1, "Quick greeting can only be sent to him once".localized, nil, nil)
            completionHandler(1, String(bytes: main_nameAfterPath.map{cornerFalse(succeed: $0)}, encoding: .utf8)!.localized, nil, nil)
            //: return
            return
        }

        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: SomebodyRequestTool.req_getAutoGreetContent { succeed, result, errorModel in
        SomebodyRequestTool.imageCompletion { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 60003, !PunctuateThen.share.loginUserMode.isNaUser {
                if errorModel?.errorCode == 60003, !PunctuateThen.share.loginUserMode.isNaUser {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    MessageThen.shared.eponym()
                    //: return
                    return
                }
                //: completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                //: return
                return
            }
            //: guard let dict = result as? [String: Any] else {
            guard let dict = result as? [String: Any] else {
                //: completionHandler(2, "", nil, nil)
                completionHandler(2, "", nil, nil)
                //: return
                return
            }
            //: let textDict = dict["txt"] as? [String: Any]
            let textDict = dict[(const_labelToModelTitle.replacingOccurrences(of: "image", with: "tx"))] as? [String: Any]
            //: let audioDict = dict["audio"] as? [String: Any]
            let audioDict = dict[(String(appByName))] as? [String: Any]
            //: if textDict?.count == 0 && audioDict?.count == 0 {
            if textDict?.count == 0, audioDict?.count == 0 {
                //: completionHandler(2, "Please add greeting text".localized, nil, nil)
                completionHandler(2, (String(notiNextStr.prefix(5)) + "e add" + String(notiTopPath.prefix(5)) + String(data_centerId) + String(kModelStr)).localized, nil, nil)
                //: return
                return
            }

            // 一键打招呼本地存储
            //: chat_changeSaveGreetData(toUserId: toUserId, isHave: true)
            repulse(toUserId: toUserId, isHave: true)
            //: completionHandler(nil, nil, textDict, audioDict)
            completionHandler(nil, nil, textDict, audioDict)
        }
    }

    /// 一键打招呼状态本地存储
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - isHave: 是否已发送
    //: static func chat_changeSaveGreetData(toUserId: String, isHave: Bool) {
    static func repulse(toUserId: String, isHave: Bool) {
        // 一键打招呼本地cunc
        //: let key = "\(PunctuateThen.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(PunctuateThen.share.loginUserMode.userID)_\(k_inputData)_\(toUserId)"
        //: UserDefaults.standard.set(isHave, forKey: key)
        UserDefaults.standard.set(isHave, forKey: key)
    }

    /// 图片打招呼
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据；
    //: static func chat_sendBeautyPhotos(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
    static func propel(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: SomebodyRequestTool.req_getIntimatePhoto(toUid: toUserId) { succeed, result, errorModel in
        SomebodyRequestTool.recuperateCompletion(toUid: toUserId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            /// 未添加打招呼图片
            //: if errorModel?.errorCode == 111 {
            if errorModel?.errorCode == 111 {
                //: let config = ShowAlertConfig()
                let config = CurtilageAlertConfig()
                //: config.alignment = .center
                config.alignment = .center
                //: if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                if LayerAddrTool.share.interfaceLang == TrademarkVoiceMixedBagTextConvertible.pt.rawValue {
                    //: config.width = 330
                    config.width = 330
                }
                //: TalkingAlertShow.customAlert(message: "You have not set up a photo greeting, please set it up before sending!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go to set".localized, leftBlock: {
                SizeReactiveCompatible.buttonEnter(message: String(bytes: userTimeMakeData.map{effectTrue(sub: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(appOpenValue.prefix(6))).localized, rightBtnTitle: (String(show_nameData.prefix(7)) + k_listAppMessage.lowercased()).localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    SizeReactiveCompatible.obstruct()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    SizeReactiveCompatible.obstruct()
                    //: completionHandler(true, nil)
                    completionHandler(true, nil)
                    //: }, config: config)
                }, config: config)
                //: return
                return
                    //: } else if errorModel?.errorCode == 60003, !PunctuateThen.share.loginUserMode.isNaUser {
            } else if errorModel?.errorCode == 60003, !PunctuateThen.share.loginUserMode.isNaUser {
                /// 真人认证提示弹窗
                //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                MessageThen.shared.eponym()
                //: return
                return
            }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? [String: Any] else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: completionHandler(false, dict)
                completionHandler(false, dict)
            }
        }
    }
}

// MARK: - 插入与官方客服聊天提示消息

//: extension TalkingPrivateChatManager {
extension MoveReactiveCompatible {
    ///  判断是否需要插入与官方客服聊天提示消息
    /// - Parameter needInsertHandler: 回调
    //: static func chat_customerServiceCenter_insertTipMsg(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
    static func phoneService(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
        //: guard PunctuateThen.share.appConfigMode.CSConfig.systemTips.count > 0 else {
        guard PunctuateThen.share.appConfigMode.CSConfig.systemTips.count > 0 else { // 接口没下发，无需提示
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 根据设备所在时区转换时间
        //: let startTime = NSDate.getCurrentZoneDateString(shDateStr: PunctuateThen.share.appConfigMode.CSConfig.startTime)
        let startTime = NSDate.comeTotaloThroughSolarDay(shDateStr: PunctuateThen.share.appConfigMode.CSConfig.startTime)
        //: let endTime = NSDate.getCurrentZoneDateString(shDateStr: PunctuateThen.share.appConfigMode.CSConfig.endTime)
        let endTime = NSDate.comeTotaloThroughSolarDay(shDateStr: PunctuateThen.share.appConfigMode.CSConfig.endTime)
        //: let isIncluded = NSDate.compareCurrentTimeIsIncluded(startTime: startTime, endTime: endTime)
        let isIncluded = NSDate.neglectStatus(startTime: startTime, endTime: endTime)

        //: guard isIncluded == false else {
        guard isIncluded == false else {
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 非工作时间段内，添加提示
        //: var tips = PunctuateThen.share.appConfigMode.CSConfig.systemTips
        var tips = PunctuateThen.share.appConfigMode.CSConfig.systemTips
        //: tips = tips.replacingOccurrences(of: "#startTime#", with: "\(startTime)")
        tips = tips.replacingOccurrences(of: (String(mainImageName) + String(showTransformCellName.prefix(3))), with: "\(startTime)")
        //: tips = tips.replacingOccurrences(of: "#endTime#", with: "\(endTime)")
        tips = tips.replacingOccurrences(of: (String(kGiftData.prefix(2)) + String(const_fillMsg.suffix(7))), with: "\(endTime)")
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!(tips)
            needInsertHandler!(tips)
        }
    }
}

// MARK: - 刷新私密消息（照片、视频）展示状态

//: extension TalkingPrivateChatManager {
extension MoveReactiveCompatible {
    /// 接收到解锁私密消息（照片、视频）的礼物，刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func chat_onNewMessage_refreshLocalIntimateMsgStatus(cellData: EqualCompartmentReactiveCompatible, msgView: TUIMessageController) {
    static func asState(cellData: EqualCompartmentReactiveCompatible, msgView: MakeTableViewController) {
        //: guard msgView.uiMsgs.count > 0 else {
        guard msgView.uiMsgs.count > 0 else {
            // --------- 【外部页面】收到了解锁礼物消息 ---------
            // 首次进入到当前页面，刷新消息状态
            //: var array = Defaults.object(forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey) as? [String]
            var array = constDevicePath.object(forKey: MoveReactiveCompatible.share.UnlockMsgIdArrayKey) as? [String]

            // 本地有私密消息解锁礼物缓存，且是图片消息 或 视频消息
            //: guard array?.count ?? 0 > 0 &&
            guard array?.count ?? 0 > 0,
                  //: (cellData.isKind(of: ChatThen.self) ||
                  cellData.isKind(of: ChatThen.self) ||
                  //: cellData.isKind(of: DirectCellData.self)) else { return }
                  cellData.isKind(of: DirectCellData.self) else { return }

            // 找到本人发送的私密消息，更新状态为已解锁
            //: if array!.contains(cellData.msgModel.msgInfo.msgId) {
            if array!.contains(cellData.msgModel.msgInfo.msgId) {
                //: inner_changeIntimateMsg(cellData, msgView)
                giftEvent(cellData, msgView)

                // 更新本地缓存
                //: array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                //: Defaults.set(array, forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey)
                constDevicePath.set(array, forKey: MoveReactiveCompatible.share.UnlockMsgIdArrayKey)
            }

            //: return
            return
        }

        //  --------- 在【当前页面】收到解锁礼物消息 ---------
        // 只有收到礼物解锁消息才刷新
        //: guard cellData.isKind(of: ViewCellData.self) && cellData.msgModel.gift.unlockMsgId.count > 0 else { return }
        guard cellData.isKind(of: ViewCellData.self), cellData.msgModel.gift.unlockMsgId.count > 0 else { return }

        // 找到本人发送的私密消息，更新状态为已解锁
        //: let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        //: for msgCellData in msgView.uiMsgs {
        for msgCellData in msgView.uiMsgs {
            //: let data = msgCellData as! EqualCompartmentReactiveCompatible
            let data = msgCellData as! EqualCompartmentReactiveCompatible
            //: if data.msgModel.msgInfo.msgId == unlockMsgId {
            if data.msgModel.msgInfo.msgId == unlockMsgId {
                //: inner_changeIntimateMsg(data, msgView)
                giftEvent(data, msgView)
                //: break
                break
            }
        }
    }

    /// 刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static private func inner_changeIntimateMsg(_ cellData: EqualCompartmentReactiveCompatible, _ msgView: TUIMessageController) {
    private static func giftEvent(_ cellData: EqualCompartmentReactiveCompatible, _ msgView: MakeTableViewController) {
        //: if cellData.isKind(of: ChatThen.self) {
        if cellData.isKind(of: ChatThen.self) { // 私密照片
            //: let model = cellData.msgModel.msgInfo.intimatePhoto
            let model = cellData.msgModel.msgInfo.intimatePhoto
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
                msgView.bull(cellData, domain: model)
            }

            //: } else if cellData.isKind(of: DirectCellData.self) {
        } else if cellData.isKind(of: DirectCellData.self) { // 私密视频
            //: let model = cellData.msgModel.msgInfo.video
            let model = cellData.msgModel.msgInfo.video
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimateVideoMsg(cellData, videoModel: model)
                msgView.becomeOff(cellData, pic: model)
            }
        }
    }
}

// MARK: - 未回复Reply to get points~逻辑

//: extension TalkingPrivateChatManager {
extension MoveReactiveCompatible {
    /// 女性记录最新回复时间, 刷新表格
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func updateReplyLatestTimeAndReload(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
    static func behindInstance(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: MakeTableViewController) {
        //: guard PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue else { return }
        //: guard msgIncome > 0 else { return }
        guard msgIncome > 0 else { return }
        //: guard let msgTime = msgTime else { return }
        guard let msgTime = msgTime else { return }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        guard GiftChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        //: TalkingPrivateChatController.replyLatestTimes = msgTime
        GiftChatController.replyLatestTimes = msgTime
        //: msgView.tableView.reloadData()
        msgView.tableView.reloadData()
    }

    /// 判断是否展示未回复付费消息提示
    //: @objc public static func needShowReplyTipsMessage(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
    @objc public static func addCommunication(_ direction: AspectSendTotal, msgType: Int, msgTime: Date?) -> Bool {
        //: guard PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        guard GiftChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        //: guard TalkingPrivateChatManager.isReplyToGetPointsMsg(direction, msgType, msgTime: msgTime) else { return false }
        guard MoveReactiveCompatible.skirt(direction, msgType, msgTime: msgTime) else { return false }
        //: return true
        return true
    }

    /// 是否是回复获取积分消息
    /// - Parameters:
    ///   - direction: 消息方向
    ///   - msgType: 消息类型
    ///   - msgTime: 消息时间
    /// - Returns: 结果
    //: static func isReplyToGetPointsMsg(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
    static func skirt(_ direction: AspectSendTotal, _ msgType: Int, msgTime: Date?) -> Bool {
        // 非审核模式, messageType == 5, 时间<24小时
        //: guard PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard msgType == 5 else { return false }
        guard msgType == 5 else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard Date().timeIntervalSince(msgTime) < 24*60*60 else { return false }
        guard Date().timeIntervalSince(msgTime) < 24 * 60 * 60 else { return false }
        //: return true
        return true
    }
}

// MARK: - VIP展示消息已读逻辑

//: extension TalkingPrivateChatManager {
extension MoveReactiveCompatible {
    /// 是否需要插入已读回执引导充值VIP提醒消息
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func needInsertVIPReadReceiptMsg(cellData: EqualCompartmentReactiveCompatible) -> Bool {
    static func starve(cellData: EqualCompartmentReactiveCompatible) -> Bool {
        //: if PunctuateThen.share.loginUserMode.loungePlus == false,
        if PunctuateThen.share.loginUserMode.loungePlus == false,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否展示消息 已读/未读 标识
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func isShowReadMsg(cellData: EqualCompartmentReactiveCompatible) -> Bool {
    static func titleData(cellData: EqualCompartmentReactiveCompatible) -> Bool {
        // vip && 非群聊 && 发送成功 && 本人发送 && 非音视频通话文本消息，展示消息是否已读标识
        //: if PunctuateThen.share.loginUserMode.loungePlus == true,
        if PunctuateThen.share.loginUserMode.loungePlus == true,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 消息对方是否已读
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func msgIsRead(cellData: EqualCompartmentReactiveCompatible) -> Bool {
    static func travel(cellData: EqualCompartmentReactiveCompatible) -> Bool {
        //: guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        //: if cellData.innerMessage.isPeerRead == true {
        if cellData.innerMessage.isPeerRead == true {
            //: return true
            return true
        }
        //: let readTimeInterval = TalkingPrivateChatManager.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        let readTimeInterval = MoveReactiveCompatible.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        //: let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        //: if selfMsgTime <= readTime {
        if selfMsgTime <= readTime {
            //: return true
            return true
        }
        //: return false
        return false
    }
}

// MARK: - Reply消息逻辑

//: extension TalkingPrivateChatManager {
extension MoveReactiveCompatible {
    /// 回复消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    /// - Returns: 引用消息模型
    //: static func handleReplyMsg(cellData: EqualCompartmentReactiveCompatible, targetId: String) -> AbTalkingChatMsgQuoteModel {
    static func dataArrayHead(cellData: EqualCompartmentReactiveCompatible, targetId: String) -> PeregrineModel {
        //: let quoteModel = AbTalkingChatMsgQuoteModel()
        let quoteModel = PeregrineModel()
        //: quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        //: if cellData.direction == .MsgDirectionIncoming {
        if cellData.direction == .MsgDirectionIncoming {
            //: quoteModel.uid = targetId
            quoteModel.uid = targetId
            //: } else {
        } else {
            //: quoteModel.uid = PunctuateThen.share.loginUserMode.userID
            quoteModel.uid = PunctuateThen.share.loginUserMode.userID
        }
        //: let renderData = AbTalkingChatMsgQuoteDataModel()
        let renderData = CopyModel()
        //: if cellData.isKind(of: LoadReactiveCompatible.self) {
        if cellData.isKind(of: LoadReactiveCompatible.self) {
            //: quoteModel.renderType = "text"
            quoteModel.renderType = (appUserFormat.replacingOccurrences(of: "can", with: "xt"))
            //: renderData.content = cellData.msgModel.msgInfo.content
            renderData.content = cellData.msgModel.msgInfo.content

            //: } else if cellData.isKind(of: ChatThen.self) {
        } else if cellData.isKind(of: ChatThen.self) {
            //: quoteModel.renderType = "img"
            quoteModel.renderType = (String(mainRowContent))
            //: renderData.previewUrl = cellData.msgModel.msgInfo.imageUri
            renderData.previewUrl = cellData.msgModel.msgInfo.imageUri

            //: } else if cellData.isKind(of: DirectCellData.self) {
        } else if cellData.isKind(of: DirectCellData.self) {
            //: quoteModel.renderType = "video"
            quoteModel.renderType = (String(constEmptyContentMessage))
            //: renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            //: renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg
            renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg

            //: } else if cellData.isKind(of: SizeCellData.self) {
        } else if cellData.isKind(of: SizeCellData.self) {
            //: let audioCelldata = cellData as! SizeCellData
            let audioCelldata = cellData as! SizeCellData
            //: quoteModel.renderType = "audio"
            quoteModel.renderType = (String(appByName))
            //: let voiceCache = DBUserInfoManager.cache_getAudioDB(message: audioCelldata.innerMessage)
            let voiceCache = ReadoutReactiveCompatible.enableUp(message: audioCelldata.innerMessage)
            //: renderData.duration = Int(voiceCache.db_audioLength) ?? 0
            renderData.duration = Int(voiceCache.db_audioLength) ?? 0

            //: } else if cellData.isKind(of: ViewCellData.self) {
        } else if cellData.isKind(of: ViewCellData.self) {
            //: quoteModel.renderType = "gift"
            quoteModel.renderType = (mainCountData.replacingOccurrences(of: "color", with: "t"))
            //: let giftCellData = cellData as! ViewCellData
            let giftCellData = cellData as! ViewCellData
            //: renderData.giftName = giftCellData.msgModel.gift.name
            renderData.giftName = giftCellData.msgModel.gift.name
            //: renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            //: renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            //: renderData.giftPrice = giftCellData.msgModel.gift.price
            renderData.giftPrice = giftCellData.msgModel.gift.price
            //: renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
            renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
        }

        //: quoteModel.renderData = renderData
        quoteModel.renderData = renderData
        //: return quoteModel
        return quoteModel
    }

    /// 点击“引用”消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    //: static func handleClickReplyMsg(cellData: EqualCompartmentReactiveCompatible, targetId: String) {
    static func requestObject(cellData: EqualCompartmentReactiveCompatible, targetId: String) {
        //: let renderData = cellData.msgModel.quoteMsgInfo
        let renderData = cellData.msgModel.quoteMsgInfo
        //: UploadLogTool.writeLog(msg: "PrivateChat 点击引用消息\(renderData.renderType).")
        GestureLogTool.playChangeImage(msg: (String(appSizeValue.prefix(6)) + "eCha" + notiBackgroundData) + "\(renderData.renderType).")
        //: if renderData.renderType == "text" {
        if renderData.renderType == (appUserFormat.replacingOccurrences(of: "can", with: "xt")) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = SumimateView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle))
            //: popView.msgDetailText = renderData.renderData.content
            popView.msgDetailText = renderData.renderData.content
            //: popView.show()
            popView.root()

            //: } else if renderData.renderType == "img" {
        } else if renderData.renderType == (String(mainRowContent)) {
            //: let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            //: var filePath = (libraryPath as NSString).appendingPathComponent(imageFileName)
            var filePath = (libraryPath as NSString).appendingPathComponent(constButtonMessage)
            //: filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)
            filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)

            //: var model = TalkingMomentPhotoModel.init()
            var model = StylePhotoModel()
            //: if FileManager.default.fileExists(atPath: filePath) {
            if FileManager.default.fileExists(atPath: filePath) {
                //: let data = NSData.init(contentsOfFile: filePath)
                let data = NSData(contentsOfFile: filePath)
                //: model.imagePic = UIImage(data: data! as Data)
                model.imagePic = UIImage(data: data! as Data)
                //: } else {
            } else {
                //: model.imgUrl =  renderData.renderData.previewUrl
                model.imgUrl = renderData.renderData.previewUrl
            }
            //: var currenModel = TalkingMomentModel.init()
            var currenModel = ViewMeasurable()
            //: var tempArr: [TalkingMomentPhotoModel] = []
            var tempArr: [StylePhotoModel] = []
            //: tempArr.append(model)
            tempArr.append(model)
            //: currenModel.pic = tempArr
            currenModel.pic = tempArr
            //: let vc = TalkingMomentPhotosVC.init(momentModel: currenModel, index: 0, type: .normal)
            let vc = LayerFlowLayout(momentModel: currenModel, index: 0, type: .normal)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            MoveReactiveCompatible.share.fileController()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "video" {
        } else if renderData.renderType == (String(constEmptyContentMessage)) {
            //: let videoPath = renderData.renderData.videoUrl
            let videoPath = renderData.renderData.videoUrl
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoPath)
            let vc = FailViewController(videoPath: videoPath)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            MoveReactiveCompatible.share.fileController()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "audio" {
        } else if renderData.renderType == (String(appByName)) {
            //: let cacheWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: renderData.msgId)
            let cacheWrap = QueryQuantityoMsgTable.applicationClick(with: renderData.msgId)
            //: let playModel = TalkingVoiceMsgPlayModel()
            let playModel = FailSizeThen()
            //: if cacheWrap != nil {
            if cacheWrap != nil {
                //: playModel.db_voiceCacheWrap = cacheWrap!
                playModel.db_voiceCacheWrap = cacheWrap!

                //: } else {
            } else {
                //: let model = WCDBVoiceMsgTable()
                let model = QueryQuantityoMsgTable()
                //: model.msgId = renderData.msgId
                model.msgId = renderData.msgId
                //: model.db_voiceUri = renderData.renderData.url
                model.db_voiceUri = renderData.renderData.url
                //: model.db_senduid = renderData.uid
                model.db_senduid = renderData.uid
                //: if renderData.uid == PunctuateThen.share.loginUserMode.userID {
                if renderData.uid == PunctuateThen.share.loginUserMode.userID {
                    //: model.db_touid = targetId
                    model.db_touid = targetId
                    //: } else {
                } else {
                    //: model.db_touid = PunctuateThen.share.loginUserMode.userID
                    model.db_touid = PunctuateThen.share.loginUserMode.userID
                }
                //: model.db_audioLength = "\(renderData.renderData.duration)"
                model.db_audioLength = "\(renderData.renderData.duration)"
                //: WCDBVoiceMsgTable.db_insertVoiceMsg(model)
                QueryQuantityoMsgTable.tapWrite(model)
                //: playModel.db_voiceCacheWrap = model
                playModel.db_voiceCacheWrap = model
            }

            //: TalkingVoiceMsgPlayManager.shared.stopAudioPlayer()
            SectorThen.shared.toExecute()
            //: TalkingVoiceMsgPlayManager.shared.starPlayReplyMsg(playModel: playModel)
            SectorThen.shared.jam(playModel: playModel)

            //: } else if renderData.renderType == "gift" {
        } else if renderData.renderType == (mainCountData.replacingOccurrences(of: "color", with: "t")) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = SumimateView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle))
            //: popView.msgDetailText = "Sent ".localized + renderData.renderData.giftNameLocal() + " x\(renderData.renderData.giftNum)"
            popView.msgDetailText = (String(userAppName)).localized + renderData.renderData.pastFile() + " x\(renderData.renderData.giftNum)"
            //: popView.show()
            popView.root()
        }
    }
}

// MARK: - Event

//: extension TalkingPrivateChatManager {
extension MoveReactiveCompatible {
    /// 检测用户短视频版本是否可用【> = 1.1.6 可用】
    /// - Returns: 是否可用
    //: static func checkShortVideo(userVersion: String) -> Bool {
    static func smallness(userVersion: String) -> Bool {
        //: guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
        guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
            //: return false
            return false
        }
        //: if version*100 < 116*100 {
        if version * 100 < 116 * 100 {
            //: return false
            return false
        }

        //: return true
        return true
    }
}
