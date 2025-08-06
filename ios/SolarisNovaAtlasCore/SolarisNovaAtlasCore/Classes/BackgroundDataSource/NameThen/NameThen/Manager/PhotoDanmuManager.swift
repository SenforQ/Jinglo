
//: Declare String Begin

/*: " customElem.data is error" :*/
fileprivate let appPathFormat:String = "start name top cus"
fileprivate let user_titleEndStr:String = "tomEcenter key make"
fileprivate let const_tableId:String = "right touch view framedata "
fileprivate let mainCenterLabelData:String = "RROR"

/*: "extra" :*/
fileprivate let const_hiddenName:String = "exuserra"

/*: "MF:PartyChatSysMsg" :*/
fileprivate let constManagerUrl:[Character] = ["M","F",":","P","a","r","t","y","C","h","a","t","S","y","s","M","s","g"]

/*: "opType" :*/
fileprivate let show_playerText:String = "main fee block beautyopType"

/*: "roomLogout" :*/
fileprivate let const_tableMessage:[Character] = ["r","o","o","m"]
fileprivate let constLogMessage:String = "Logoutmessage manager let"

/*: "MF:PartyChatWelMsg" :*/
fileprivate let data_shareTempMsg:String = "event during varMF:P"
fileprivate let constContentUrl:String = "save bottom sizeatWel"
fileprivate let mainIconTitleMsg:String = "return level component white selfMsg"

/*: "startLive" :*/
fileprivate let mainLabStr:String = "result path var any labelstartL"
fileprivate let mainThenValue:[Character] = ["i","v","e"]

/*: "floatingScreen" :*/
fileprivate let kModelUrl:[UInt8] = [0x8c,0x86,0x85,0x8b,0x9e,0x83,0x84,0x8d,0xb9,0x89,0x98,0x8f,0x8f,0x84]

/*: "mute" :*/
fileprivate let data_constraintPath:String = "managerute"

/*: "uid" :*/
fileprivate let noti_makeId:[Character] = ["u","i","d"]

/*: "expireAt" :*/
fileprivate let const_styleKey:[Character] = ["e","x","p","i","r","e","A","t"]

/*: "unmute" :*/
fileprivate let noti_pathValue:String = "slide"
fileprivate let mainBlockTitle:String = "NMUTE"

/*: "MF:LiveChatGiftMsg" :*/
fileprivate let dataTranslationStr:[Character] = ["M","F",":","L","i","v","e","C","h","a","t","G","i","f","t","M","s"]
fileprivate let constMessageMakeShowName:[Character] = ["g"]

/*: "MF:PartyChatGiftMsg" :*/
fileprivate let notiMagnitudeStr:String = "MF:Pand cancel effect"
fileprivate let mainImageInfoName:String = "info jump cutChatG"
fileprivate let mainCollectionUrl:String = "to true topiftMsg"

/*: "gift" :*/
fileprivate let appOffTitle:String = "gchangeft"

/*: "id" :*/
fileprivate let noti_appName:String = "iday"

/*: "imgPreview" :*/
fileprivate let appShadowLastUrl:[Character] = ["i"]
fileprivate let const_makeMessage:String = "string letmgPre"

/*: "name" :*/
fileprivate let showTopTitle:[Character] = ["n","a","m","e"]

/*: "num" :*/
fileprivate let k_restoreUrl:String = "nuclick"

/*: "mfBean" :*/
fileprivate let showViewTitle:[UInt8] = [0xdc,0xd7,0xf3,0xd4,0xd0,0xdf]

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let constImageEqualToPath:[Character] = ["M","F",":","L","i","v","e","C","h","a"]
fileprivate let constIndexFormat:String = "tPrmake with do color var"
fileprivate let noti_numberTitle:[Character] = ["i","z","e","M","s","g"]

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let k_narrowFormat:String = "personal end left top<at>"
fileprivate let user_dataValue:String = "]+?</at>to back actual return first"

/*: "加入弹幕房间" :*/
fileprivate let app_minData:[Character] = ["加","入","弹","幕","房","间"]

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let mainStatusStr:[UInt8] = [0x72,0x65,0x74,0x61,0x6c,0x20,0x6e,0x69,0x61,0x67,0x61,0x20,0x79,0x72,0x74,0x20,0x65,0x73,0x61,0x65,0x6c,0x50,0x20,0x2e,0x6d,0x6f,0x6f,0x72,0x20,0x74,0x61,0x68,0x63,0x20,0x65,0x68,0x74,0x20,0x72,0x65,0x74,0x6e,0x65,0x20,0x6f,0x74,0x20,0x64,0x65,0x6c,0x69,0x61,0x46]

/*: "live/sendMsg" :*/
fileprivate let show_imageMessage:String = "live/sremove text"

/*: "groupId" :*/
fileprivate let main_indexGiftName:[Character] = ["g","r","o","u","p","I","d"]

/*: "message" :*/
fileprivate let k_backUrl:String = "messtouche"

/*: "toUid" :*/
fileprivate let notiSharedUserName:[Character] = ["t","o","U","i","d"]

/*: "party/sendMsg" :*/
fileprivate let appFemaleEngineName:String = "party/sframe path down target"
fileprivate let user_imageName:String = "error colorendMsg"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PhotoDanmuManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingDanmuManagerDelegate: NSObject {
protocol ApplicationThen: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func underEvent(Msg: PublisherTransformable)
    /// 礼物动效
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func stopMsg(Msg: PublisherTransformable)

    //: func func__actionUserNewModel(pushUid: String?)
    func contentureFirst(pushUid: String?)

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?)
    func inputUid(nickName: String, atUid: String?)
    // 用户进入房间
    //: func func__userLogin()
    func bagLogin()
    // 用户退出房间
    //: func func__userLogout()
    func apropos()
}

//: class TalkingDanmuManager: NSObject {
class PhotoDanmuManager: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数
    //: private static var _instance: TalkingDanmuManager?
    private static var _instance: PhotoDanmuManager? // singleton
    //: open weak var delegate: TalkingDanmuManagerDelegate?
    open weak var delegate: ApplicationThen?

    //: override private init() {}
    override private init() {}
    //: class func shared() -> TalkingDanmuManager {
    class func messageUser() -> PhotoDanmuManager {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingDanmuManager()
            _instance = PhotoDanmuManager()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingDanmuManager {
extension PhotoDanmuManager {
    /// 公告消息
    //: func showAnnouncementMsg(str: String) {
    func fromStr(str: String) {
        //: var model = TalkingLiveRoomDanmuModel()
        var model = PublisherTransformable()
        //: var msgInfo = TalkingDanmuMsgInfo()
        var msgInfo = FourthLogHandyJSON()
        //: msgInfo.messageType = 1
        msgInfo.messageType = 1 /// (公告算是特殊的文本消息)
        //: msgInfo.content = str
        msgInfo.content = str
        //: model.msgInfo = msgInfo
        model.msgInfo = msgInfo
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = SizeTotaloCellData()
        //: model = celldata.showAnnouncementMsg(model: model)
        model = celldata.exceptIndex(model: model)
        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.underEvent(Msg: model)
    }

    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg: V2TIMMessage
    //: func onRecvDanmuNewMsg(msg: V2TIMMessage) {
    func stopSub(msg: V2TIMMessage) {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(appPathFormat.suffix(4)) + String(user_titleEndStr.prefix(4)) + "lem." + String(const_tableId.suffix(5)) + "is e" + mainCenterLabelData.lowercased()))
            //: return
            return
        }
        //: let jsonData: Data = extra.data(using: .utf8)!
        let jsonData: Data = extra.data(using: .utf8)!
        //: let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        //: let extraDic = dict?["extra"] as? [String: Any]
        let extraDic = dict?[(const_hiddenName.replacingOccurrences(of: "user", with: "t"))] as? [String: Any]
        //: let ext = msg.customElem.extension
        let ext = msg.customElem.extension

        //: if ext == "MF:PartyChatSysMsg", extraDic?["opType"] as? String == "roomLogout" { // 语聊房退房操作
        if ext == (String(constManagerUrl)), extraDic?[(String(show_playerText.suffix(6)))] as? String == (String(const_tableMessage) + String(constLogMessage.prefix(6))) { // 语聊房退房操作
            //: self.delegate?.func__userLogout()
            self.delegate?.apropos()
            //: return
            return

                    //: } else if ext == "MF:PartyChatWelMsg" { // 语聊房进入欢迎消息
        } else if ext == (String(data_shareTempMsg.suffix(4)) + "artyCh" + String(constContentUrl.suffix(5)) + String(mainIconTitleMsg.suffix(3))) { // 语聊房进入欢迎消息
            //: self.delegate?.func__userLogin()
            self.delegate?.bagLogin()

            //: } else if let opType = extraDic?["opType"], opType as? String == "startLive" {
        } else if let opType = extraDic?[(String(show_playerText.suffix(6)))], opType as? String == (String(mainLabStr.suffix(6)) + String(mainThenValue)) {
            //: NotificationCenter.default.post(name: LIVE_RECIVE_STARTLIVE_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: mainAppTitle, object: nil)
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "floatingScreen" { // 飘屏
        } else if let opType = extraDic?[(String(show_playerText.suffix(6)))], opType as? String == String(bytes: kModelUrl.map{$0^234}, encoding: .utf8)! { // 飘屏
            //: if let dict = extraDic?["floatingScreen"] {
            if let dict = extraDic?[String(bytes: kModelUrl.map{$0^234}, encoding: .utf8)!] {
                //: NotificationCenter.default.post(name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION, object: nil, userInfo: ["floatingScreen": dict])
                NotificationCenter.default.post(name: data_useStr, object: nil, userInfo: [String(bytes: kModelUrl.map{$0^234}, encoding: .utf8)!: dict])
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "mute" { // 禁言
        } else if let opType = extraDic?[(String(show_playerText.suffix(6)))], opType as? String == (data_constraintPath.replacingOccurrences(of: "manager", with: "m")) { // 禁言
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(String(noti_makeId))] as? Int {
                //: if PunctuateThen.share.loginUserMode.userID == "\(uid)" {
                if PunctuateThen.share.loginUserMode.userID == "\(uid)" {
                    //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                    if ext == (String(constManagerUrl)) { // 语聊房
                        //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        RangeManager.universalShared().partyModel.muteExpireAt = extraDic?[(String(const_styleKey))] as? Int ?? 0
                        //: }else {
                    } else {
                        //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        LogLiveManager.anUp().liveRoomModel.muteExpireAt = extraDic?[(String(const_styleKey))] as? Int ?? 0
                    }
                }
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "unmute" { // 解禁
        } else if let opType = extraDic?[(String(show_playerText.suffix(6)))], opType as? String == (noti_pathValue.replacingOccurrences(of: "slide", with: "u") + mainBlockTitle.lowercased()) { // 解禁
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(String(noti_makeId))] as? Int {
                //: if PunctuateThen.share.loginUserMode.userID == "\(uid)" {
                if PunctuateThen.share.loginUserMode.userID == "\(uid)" {
                    //: if PunctuateThen.share.loginUserMode.userID == "\(uid)" {
                    if PunctuateThen.share.loginUserMode.userID == "\(uid)" {
                        //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                        if ext == (String(constManagerUrl)) { // 语聊房
                            //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = 0
                            RangeManager.universalShared().partyModel.muteExpireAt = 0
                            //: }else {
                        } else {
                            //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = 0
                            LogLiveManager.anUp().liveRoomModel.muteExpireAt = 0
                        }
                    }
                }
            }
            //: return
            return
        }

        //: if var model = TalkingLiveRoomDanmuModel.deserialize(from: extraDic as? Dictionary) {
        if var model = PublisherTransformable.deserialize(from: extraDic as? Dictionary) {
            //: model.MsgExtension = msg.customElem.extension
            model.MsgExtension = msg.customElem.extension

            //: if model.msgInfo?.messageType == 3, model.MsgExtension == "MF:LiveChatGiftMsg" || model.MsgExtension == "MF:PartyChatGiftMsg" {
            if model.msgInfo?.messageType == 3, model.MsgExtension == (String(dataTranslationStr) + String(constMessageMakeShowName)) || model.MsgExtension == (String(notiMagnitudeStr.prefix(4)) + "arty" + String(mainImageInfoName.suffix(5)) + String(mainCollectionUrl.suffix(6))) {
                //: let dic: Dictionary? = extraDic?["gift"] as? [String: Any]
                let dic: Dictionary? = extraDic?[(appOffTitle.replacingOccurrences(of: "change", with: "i"))] as? [String: Any]
                //: if dic == nil {
                if dic == nil {
                    //: return
                    return
                }
                //: model.gift?.fromUid = model.user?.uid ?? 0
                model.gift?.fromUid = model.user?.uid ?? 0
                //: model.gift?.fromNickname = model.user?.nickname ?? ""
                model.gift?.fromNickname = model.user?.nickname ?? ""
                //: model.gift?.fromHeadPic = model.user?.headPic ?? ""
                model.gift?.fromHeadPic = model.user?.headPic ?? ""
                //: model.gift?.pid = Int(dic?["id"] as! String)
                model.gift?.pid = Int(dic?["id"] as! String)
                //: model.gift?.giftPic = dic?["imgPreview"] as? String ?? ""
                model.gift?.giftPic = dic?[(String(appShadowLastUrl) + String(const_makeMessage.suffix(5)) + "view")] as? String ?? ""
                //: model.gift?.pname = dic?["name"] as! String
                model.gift?.pname = dic?[(String(showTopTitle))] as! String
                //: if model.gift?.animationTimes ?? 0 <= 0 {
                if model.gift?.animationTimes ?? 0 <= 0 {
                    //: model.gift?.animationTimes = dic?["num"] as? Int ?? 0
                    model.gift?.animationTimes = dic?[(k_restoreUrl.replacingOccurrences(of: "click", with: "m"))] as? Int ?? 0
                }

                //: if TalkingLiveManager.shared().liveRoomModel.roomId.count > 0 {
                if LogLiveManager.anUp().liveRoomModel.roomId.count > 0 { // 直播间弹幕礼物(包含男性用户)
                    //: if TalkingLiveManager.shared().config.isSmallMode {
                    if LogLiveManager.anUp().config.isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        PhotoThen.shared.reInfoDic(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.stopMsg(Msg: model)
                    }

                    //: } else if TalkingVoiceRoomManager.shared().isParty && model.gift?.isDisplay == true {
                } else if RangeManager.universalShared().isParty, model.gift?.isDisplay == true { // 语聊房弹幕礼物
                    //: if TalkingVoiceRoomManager.shared().isSmallMode {
                    if RangeManager.universalShared().isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        PhotoThen.shared.reInfoDic(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.stopMsg(Msg: model)
                    }
                }

                //: let mfBean = model.msgInfo?.mfBean
                let mfBean = model.msgInfo?.mfBean
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                NotificationCenter.default.post(name: user_screenUrl, object: nil, userInfo: [String(bytes: showViewTitle.map{$0^177}, encoding: .utf8)!: mfBean ?? 0.0])

                //: if model.gift?.giftPic.count ?? 0 > 0 {
                if model.gift?.giftPic.count ?? 0 > 0 {
                    //: if let newStr = model.gift?.giftPic.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain) {
                    if let newStr = model.gift?.giftPic.replacingOccurrences(of: const_maxFormalText.recordBy(), with: k_detailData) {
                        //: URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                        URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                            //: DispatchQueue.main.async {
                            DispatchQueue.main.async {
                                //: guard let data = data, error == nil, let image = UIImage(data: data) else {
                                guard let data = data, error == nil, let image = UIImage(data: data) else {
                                    //: self.setLiveRoomDammuCellData(danmuModel: model)
                                    self.reportModel(danmuModel: model)
                                    //: return
                                    return
                                }
                                //: model.gift?.giftImg = image
                                model.gift?.giftImg = image
                                //: self.setLiveRoomDammuCellData(danmuModel: model)
                                self.reportModel(danmuModel: model)
                            }
                            //: }.resume()
                        }.resume()
                    }
                }
                //: return
                return
            }
            //: if PunctuateThen.share.appStatus == AppSkinStatus.special.rawValue, model.MsgExtension == "MF:LiveChatPrizeMsg" {
            if PunctuateThen.share.appStatus == HiddenHashableRepresentation.special.rawValue, model.MsgExtension == (String(constImageEqualToPath) + String(constIndexFormat.prefix(3)) + String(noti_numberTitle)) {
                //: return
                return
            }

            //: setLiveRoomDammuCellData(danmuModel: model)
            reportModel(danmuModel: model)
        }
    }

    //: private func setLiveRoomDammuCellData(danmuModel: TalkingLiveRoomDanmuModel) {
    private func reportModel(danmuModel: PublisherTransformable) {
        //: var model = danmuModel
        var model = danmuModel
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = SizeTotaloCellData()
        //: model = celldata.caculateMsgHeight(model: model)
        model = celldata.popTo(model: model)
        //: celldata.actionUserBlock = { [weak self] atUid in
        celldata.actionUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.delegate?.func__actionUserNewModel(pushUid: atUid)
            self.delegate?.contentureFirst(pushUid: atUid)
        }
        //: celldata.longUserBlock = { [weak self] atUid in
        celldata.longUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }

            //: var uid = String(model.user?.uid ?? 0)
            var uid = String(model.user?.uid ?? 0)
            //: var name = model.user?.nickname ?? ""
            var name = model.user?.nickname ?? ""
            //: if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != PunctuateThen.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
            if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != PunctuateThen.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
                //: uid = atUid!
                uid = atUid!
                //: let text = model.msgInfo?.content ?? ""
                let text = model.msgInfo?.content ?? ""
                //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
                let regex = try! NSRegularExpression(pattern: (String(k_narrowFormat.suffix(4)) + "@[\\S\\s" + String(user_dataValue.prefix(8))), options: [])
                //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                //: let matchRange = result.first?.range
                let matchRange = result.first?.range
                //: if matchRange?.length ?? 0 > 10 {
                if matchRange?.length ?? 0 > 10 {
                    //: let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    let subStr = String.fileTo(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    //: name = subStr
                    name = subStr
                }
            }

            //: self.delegate?.func__longTouchUserNewModel(nickName: name, atUid: uid)
            self.delegate?.inputUid(nickName: name, atUid: uid)
        }

        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.underEvent(Msg: model)
    }
}

//: extension TalkingDanmuManager {
extension PhotoDanmuManager {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func somePlayerSub() {
        //: if TalkingDanmuManager._instance != nil {
        if PhotoDanmuManager._instance != nil {
            //: TalkingDanmuManager._instance = nil
            PhotoDanmuManager._instance = nil
        }
    }

    /// 加入直播弹幕
    //: class func joinLiveRoomDanmu(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func annunciation(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
        V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
            //: printLog(message: "加入弹幕房间")
            printLog(message: (String(app_minData)))
            //: if announcementMsg.count > 0 {
            if announcementMsg.count > 0 {
                //: TalkingDanmuManager.shared().showAnnouncementMsg(str: announcementMsg)
                PhotoDanmuManager.messageUser().fromStr(str: announcementMsg)
            }
            //: completion?(true)
            completion?(true)

            //: } fail: { _, _ in
        } fail: { _, _ in
            //: if TalkingDanmuManager.shared().maxJoinRoom == 1 {
            if PhotoDanmuManager.messageUser().maxJoinRoom == 1 {
                //: TalkingDanmuManager.shared().maxJoinRoom = 0
                PhotoDanmuManager.messageUser().maxJoinRoom = 0
                //: joinLiveRoomDanmu(groupId: groupId, announcementMsg: "")
                annunciation(groupId: groupId, announcementMsg: "")
                //: } else {
            } else {
                //: TalkingDanmuManager.shared().func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                PhotoDanmuManager.messageUser().drawObserver(showMsg: String(bytes: mainStatusStr.reversed(), encoding: .utf8)!.localized)
            }
            //: completion?(false)
            completion?(false)
        }
    }

    /// 退出群聊弹幕
    //: class func qiutGroupDanmu(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func miniature(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
        V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
            //: completion?(true)
            completion?(true)
            //: }, fail: { _, _ in
        }, fail: { _, _ in
            //: completion?(false)
            completion?(false)
            //: })
        })
    }
}

// MARK: - 发送接口

//: extension TalkingDanmuManager {
extension PhotoDanmuManager {
    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func uploadToTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func todayEqual(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "live/sendMsg"
        reqModel.requestPath = (String(show_imageMessage.prefix(6)) + "endMsg")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(String(main_indexGiftName))] = groupId
        //: dict["message"] = message
        dict[(k_backUrl.replacingOccurrences(of: "touch", with: "ag"))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict[(String(notiSharedUserName))] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 语聊房发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func voiceRoomSendTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func active(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "party/sendMsg"
        reqModel.requestPath = (String(appFemaleEngineName.prefix(7)) + String(user_imageName.suffix(6)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(String(main_indexGiftName))] = groupId
        //: dict["message"] = message
        dict[(k_backUrl.replacingOccurrences(of: "touch", with: "ag"))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict[(String(notiSharedUserName))] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}
