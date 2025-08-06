
//: Declare String Begin

/*: "unarchive failure in init" :*/
fileprivate let main_shareData:String = "uitemar"
fileprivate let show_valueMsg:String = " failuremake for"
fileprivate let data_viewRawMsg:String = "label equal equal screen greet in init"

/*: "App" :*/
fileprivate let appEmptyIndexKey:String = "Apptemp fade"

/*: "privateChatEffect%@" :*/
fileprivate let constInfoNextContent:String = "prsourceva"
fileprivate let notiButtonCancelAddText:String = "atEffmodel type center list color"
fileprivate let show_makeFormat:String = "icon voice height cellect%@"

/*: "extra" :*/
fileprivate let mainLoadMsg:[Character] = ["e","x","t","r","a"]

/*: "user" :*/
fileprivate let k_valuePath:String = "uskeyr"

/*: "%@" :*/
fileprivate let constLengthUrl:String = "hidden@"

/*: "id" :*/
fileprivate let show_frameText:String = "iblock"

/*: "gift" :*/
fileprivate let dataValuePath:[Character] = ["g","i","f","t"]

/*: "fromUid" :*/
fileprivate let data_requestSumeractionKey:String = "fromUicon tool lab text"
fileprivate let noti_fieldInputUrl:String = "iuser"

/*: "fromNickname" :*/
fileprivate let const_commentText:[Character] = ["f","r","o","m","N","i"]
fileprivate let user_managerPath:String = "ccountame"

/*: "name" :*/
fileprivate let show_makeMsg:String = "namall"

/*: "fromHeadPic" :*/
fileprivate let mainMagnitudeStr:String = "if shade returnfromH"
fileprivate let userModeMessage:[Character] = ["i","c"]

/*: "icon" :*/
fileprivate let show_fromName:String = "iequaln"

/*: "pid" :*/
fileprivate let app_fileMakeFilterId:String = "piuser"

/*: "num" :*/
fileprivate let appNameUseContent:[Character] = ["n","u","m"]

/*: "pname" :*/
fileprivate let dataBottomVideoPath:[Character] = ["p","n","a","m","e"]

/*: "giftPic" :*/
fileprivate let noti_appKey:String = "gstop"
fileprivate let constDateRefreshMsg:[Character] = ["f","t","P","i","c"]

/*: "comboNum" :*/
fileprivate let dataViewText:[Character] = ["c","o","m","b","o","N","u","m"]

/*: "iosEffect" :*/
fileprivate let main_dataKey:[Character] = ["i","o","s","E","f","f","e"]
fileprivate let userNeedName:[Character] = ["c","t"]

/*: "showType" :*/
fileprivate let main_firstEqualId:String = "shomessage"

/*: "animationTimes" :*/
fileprivate let appLiveName:[Character] = ["a","n","i","m","a","t","i","o","n","T","i"]
fileprivate let constErrorData:String = "titlees"

/*: "iosVapEffect" :*/
fileprivate let noti_sizeManagerPath:String = "IO"
fileprivate let notiCellStr:[Character] = ["s","V","a","p","E","f","f","e","c","t"]

/*: "msgInfo" :*/
fileprivate let k_resultValue:[Character] = ["m","s","g","I","n"]
fileprivate let mainClearValueJumpFormat:[Character] = ["f","o"]

/*: "mfBean" :*/
fileprivate let showColorStr:[UInt8] = [0x6e,0x61,0x65,0x42,0x66,0x6d]

/*: "toUser" :*/
fileprivate let show_imageStr:String = "self selftoUser"

/*: "uid" :*/
fileprivate let dataTitleMessage:String = "likeid"

/*: "giftNum" :*/
fileprivate let mainPointData:String = "environment falsegiftNum"

/*: "nickname" :*/
fileprivate let kWoodKey:String = "nitoolk"

/*: "Send to %@" :*/
fileprivate let user_drunkId:[Character] = ["S","e","n","d"," "]
fileprivate let appFlushFormat:String = "to %@date length cell model hide"

/*: "Send to All Numbers" :*/
fileprivate let main_titleId:[Character] = ["S","e","n","d"," ","t","o"," ","A","l","l"]
fileprivate let app_timeId:String = " Numbersdetail var class user new"

/*: "headPic" :*/
fileprivate let appIndexStr:String = "headPiccount tap time case"

/*: "LiveGift_%@" :*/
fileprivate let noti_tabKey:String = "gesture varLiveGi"

/*: "toUid" :*/
fileprivate let mainInputValue:String = "toUidelse result equal"

/*: "PartyGift_%@" :*/
fileprivate let kToUrl:[Character] = ["P"]
fileprivate let user_exceptEnterTitle:String = "lab color color var successartyG"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PhotoThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/6.
//

/// 私聊 动效管理  会话id->礼物动效数组  本地存起来

//: import UIKit
import UIKit

//: @objc class AbTalkingPrivateChatAnimatTool: NSObject {
@objc class PhotoThen: NSObject {
    //: var cachDict = NSMutableDictionary(capacity: 0)
    var cachDict = NSMutableDictionary(capacity: 0)

    //: @objc static let shared = AbTalkingPrivateChatAnimatTool()
    @objc static let shared = PhotoThen()

    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: readAnimatData()
        userData()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: @objc extension AbTalkingPrivateChatAnimatTool {
@objc extension PhotoThen {
    /// 初始化,读取缓存归档的文件
    //: func readAnimatData() {
    func userData() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try Data(contentsOf: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                let data = try Data(contentsOf: URL(fileURLWithPath: modelEdit()))
                //: if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                    //: self.cachDict = NSMutableDictionary(dictionary: dict)
                    self.cachDict = NSMutableDictionary(dictionary: dict)
                }
                //: } catch {
            } catch {
                //: printLog(message: "unarchive failure in init")
                printLog(message: (main_shareData.replacingOccurrences(of: "item", with: "n") + "chive" + String(show_valueMsg.prefix(8)) + String(data_viewRawMsg.suffix(8))))
            }
            //: } else {
        } else {
            //: let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.getPrivateChatAnimtoFile()) as? NSDictionary
            let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.modelEdit()) as? NSDictionary
            //: if dict != nil {
            if dict != nil {
                //: self.cachDict = NSMutableDictionary(dictionary: dict!)
                self.cachDict = NSMutableDictionary(dictionary: dict!)
            }
        }
    }

    /// 存储缓存
    //: func saveAnimatDataToFile() {
    func animat() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                //: try data.write(to: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                try data.write(to: URL(fileURLWithPath: modelEdit()))
                //: } catch {
            } catch {
                //: printLog(message: error)
                printLog(message: error)
            }

            //: } else {
        } else {
            //: NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.getPrivateChatAnimtoFile())
            NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.modelEdit())
        }
    }

    //: func getPrivateChatAnimtoFile() -> String {
    func modelEdit() -> String {
        //: let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appPath = (documentFilePath as NSString).appendingPathComponent("App")
        let appPath = (documentFilePath as NSString).appendingPathComponent((String(appEmptyIndexKey.prefix(3))))

        //: let fm = FileManager.default
        let fm = FileManager.default
        //: if fm.fileExists(atPath: appPath) == false {
        if fm.fileExists(atPath: appPath) == false {
            //: try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
            try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
        }

        //: let name = String(format: "privateChatEffect%@", PunctuateThen.share.loginUserMode.userID)
        let name = String(format: (constInfoNextContent.replacingOccurrences(of: "source", with: "i") + "teCh" + String(notiButtonCancelAddText.prefix(5)) + String(show_makeFormat.suffix(5))), PunctuateThen.share.loginUserMode.userID)
        //: let filePath = (appPath as NSString).appendingPathComponent(name)
        let filePath = (appPath as NSString).appendingPathComponent(name)
        //: return filePath
        return filePath
    }

    /// 根据会话获取需要播放的礼物动效数组,同时会删除
    //: func getConverCacheGiftAnimat(tagetId: String) -> NSMutableArray {
    func equalRefuse(tagetId: String) -> NSMutableArray {
        //: let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        //: let modelArray = NSMutableArray(capacity: 0)
        let modelArray = NSMutableArray(capacity: 0)
        //: if data != nil {
        if data != nil {
            //: for dict in data! {
            for dict in data! {
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<ListHandyJSON>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                    //: modelArray.add(giftModel)
                    modelArray.add(giftModel)
                }
            }
            //: self.cachDict.removeObject(forKey: tagetId)
            self.cachDict.removeObject(forKey: tagetId)
        }
        //: self.saveAnimatDataToFile()
        self.animat()
        //: return modelArray
        return modelArray
    }

    /// 删除会话,同步删除缓存
    //: func removeConversionAnimat(targetID: String) {
    func inputId(targetID: String) {
        //: if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
        if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
            //: self.cachDict.removeObject(forKey: targetID)
            self.cachDict.removeObject(forKey: targetID)
            //: self.saveAnimatDataToFile()
            self.animat()
        }
    }

    /// 收到礼物消息处理
    //: func disposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func manner(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(String(mainLoadMsg))] as? [String: Any]
            //: let user: NSDictionary? = giftMessageDic["user"] as? NSDictionary
            let user: NSDictionary? = giftMessageDic[(k_valuePath.replacingOccurrences(of: "key", with: "e"))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["id"] as! CVarArg)
            let targetId = String(format: "%@", user?["id"] as! CVarArg)

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(dataValuePath))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<RubricAnimatModel>.deserializeFrom(dict: extraDict![(String(dataValuePath))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(data_requestSumeractionKey.prefix(5)) + noti_fieldInputUrl.replacingOccurrences(of: "user", with: "d"))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(const_commentText) + user_managerPath.replacingOccurrences(of: "count", with: "kn"))] = user?[(show_makeMsg.replacingOccurrences(of: "all", with: "e"))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(String(mainMagnitudeStr.suffix(5)) + "eadP" + String(userModeMessage))] = user?[(show_fromName.replacingOccurrences(of: "equal", with: "co"))]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(app_fileMakeFilterId.replacingOccurrences(of: "user", with: "d"))] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(String(appNameUseContent))] = (roomGiftModel.giftNum)
                        //: dictM["pname"] = roomGiftModel.name
                        dictM[(String(dataBottomVideoPath))] = roomGiftModel.name
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(noti_appKey.replacingOccurrences(of: "stop", with: "i") + String(constDateRefreshMsg))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(String(dataViewText))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(main_dataKey) + String(userNeedName))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(main_firstEqualId.replacingOccurrences(of: "message", with: "w") + "Type")] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(appLiveName) + constErrorData.replacingOccurrences(of: "title", with: "m"))] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<ListHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
                        }
                    }
                    // 循环播放次数
                    //: var animationTimes = 1
                    var animationTimes = 1
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: animationTimes = roomGiftModel.animationTimes
                        animationTimes = roomGiftModel.animationTimes
                        //: } else {
                    } else {
                        //: animationTimes = roomGiftModel.giftNum
                        animationTimes = roomGiftModel.giftNum
                    }
                    //: let tempGiftArr = tempArr
                    let tempGiftArr = tempArr
                    //: for _ in 0..<animationTimes {
                    for _ in 0 ..< animationTimes {
                        //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        //: tempDictM.addObjects(from: tempDicArr as! [Any])
                        tempDictM.addObjects(from: tempDicArr as! [Any])
                    }
                    //: } else {
                } else {
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(data_requestSumeractionKey.prefix(5)) + noti_fieldInputUrl.replacingOccurrences(of: "user", with: "d"))] = targetId
                    //: dictM["fromNickname"] = user?["name"]
                    dictM[(String(const_commentText) + user_managerPath.replacingOccurrences(of: "count", with: "kn"))] = user?[(show_makeMsg.replacingOccurrences(of: "all", with: "e"))]
                    //: dictM["fromHeadPic"] = user?["icon"]
                    dictM[(String(mainMagnitudeStr.suffix(5)) + "eadP" + String(userModeMessage))] = user?[(show_fromName.replacingOccurrences(of: "equal", with: "co"))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(app_fileMakeFilterId.replacingOccurrences(of: "user", with: "d"))] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(String(appNameUseContent))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = roomGiftModel.name
                    dictM[(String(dataBottomVideoPath))] = roomGiftModel.name
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(noti_appKey.replacingOccurrences(of: "stop", with: "i") + String(constDateRefreshMsg))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(dataViewText))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(main_dataKey) + String(userNeedName))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(noti_sizeManagerPath.lowercased() + String(notiCellStr))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(main_firstEqualId.replacingOccurrences(of: "message", with: "w") + "Type")] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(appLiveName) + constErrorData.replacingOccurrences(of: "title", with: "m"))] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(appLiveName) + constErrorData.replacingOccurrences(of: "title", with: "m"))] = dictM[(String(appNameUseContent))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<ListHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                //: guard let currentVC = self.currentViewController() else { return }
                guard let currentVC = self.occurrentWith() else { return }

                // 直播收到礼物，积分更改
                //: if TalkingLiveManager.shared().isLive {
                if LogLiveManager.anUp().isLive {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(k_resultValue) + String(mainClearValueJumpFormat))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: showColorStr.reversed(), encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: user_screenUrl, object: nil, userInfo: [String(bytes: showColorStr.reversed(), encoding: .utf8)!: mfBean ?? 0.0])
                }
                // 当前处于该对话页 添加到当前动画队列里
                //: if let videoVC = currentVC as? TalkingVideoChatViewController {
                if let videoVC = currentVC as? KeyPartyDelegate {
                    // 音视频通话时，只展示通话人的礼物
                    //: if PunctuateThen.share.loginUserMode.userID != targetId,
                    if PunctuateThen.share.loginUserMode.userID != targetId,
                       //: videoVC.chatModel?.pairUid == targetId
                       videoVC.chatModel?.pairUid == targetId
                    {
                        //: videoVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        videoVC.receiveArr(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let voiceVC = currentVC as? TalkingVoiceChatViewController {
                } else if let voiceVC = currentVC as? ViewErrorDelegate {
                    // 音视频通话时，只展示通话人的礼物
                    //: if PunctuateThen.share.loginUserMode.userID != targetId,
                    if PunctuateThen.share.loginUserMode.userID != targetId,
                       //: voiceVC.chatModel?.pairUid == targetId
                       voiceVC.chatModel?.pairUid == targetId
                    {
                        //: voiceVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        voiceVC.equalArr(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let chatVC = currentVC as? TalkingPrivateChatController {
                } else if let chatVC = currentVC as? GiftChatController {
                    //: if chatVC.getChatVCTargetId() == targetId {
                    if chatVC.outsideWith() == targetId {
                        //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                        chatVC.brisanceScreen(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    /// 直播中/语聊房 半屏私聊收到个人私聊礼物
                    //: } else if currentVC.isKind(of: TalkingLiveBeautifyViewController.self) ||
                } else if currentVC.isKind(of: NameThen.self) ||
                    //: currentVC.isKind(of: TalkingVoiceRoomViewController.self) {
                    currentVC.isKind(of: VoiceViewController.self)
                {
                    //: for vc in currentVC.children {
                    for vc in currentVC.children {
                        //: if vc.isKind(of: TalkingPrivateChatController.self) {
                        if vc.isKind(of: GiftChatController.self) {
                            //: let chatVC = vc as! TalkingPrivateChatController
                            let chatVC = vc as! GiftChatController
                            //: if chatVC.getChatVCTargetId() == targetId {
                            if chatVC.outsideWith() == targetId {
                                //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                                chatVC.brisanceScreen(giftArr: tempGiftModel as! [Any])
                                //: return
                                return
                            }
                        }
                    }
                }

                // 不是该会话 或者 不处于会话页  即使通话也是处于最小化, 则若是礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[targetId] = giftArray
                self.cachDict[targetId] = giftArray
                //: self.saveAnimatDataToFile()
                self.animat()
            }
        }
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func awardDoingInput(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(String(mainLoadMsg))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(k_valuePath.replacingOccurrences(of: "key", with: "e"))] as? NSDictionary
            //: let touser: NSDictionary? = extraDict?["toUser"] as? NSDictionary
            let touser: NSDictionary? = extraDict?[(String(show_imageStr.suffix(6)))] as? NSDictionary
            //: let targetId = user?["uid"] as? String
            let targetId = user?[(dataTitleMessage.replacingOccurrences(of: "like", with: "u"))] as? String

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(dataValuePath))) == false {
                //: return
                return
            }
            //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if var roomGiftModel = JSONDeserializer<RubricAnimatModel>.deserializeFrom(dict: extraDict![(String(dataValuePath))] as? [String: Any], designatedPath: nil) {
                //: let dic = extraDict?["gift"] as? [String: Any]
                let dic = extraDict?[(String(dataValuePath))] as? [String: Any]
                //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
                roomGiftModel.giftNum = dic?[(String(mainPointData.suffix(7)))] as? Int ?? 0
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(data_requestSumeractionKey.prefix(5)) + noti_fieldInputUrl.replacingOccurrences(of: "user", with: "d"))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(const_commentText) + user_managerPath.replacingOccurrences(of: "count", with: "kn"))] = user?[(show_makeMsg.replacingOccurrences(of: "all", with: "e"))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(String(mainMagnitudeStr.suffix(5)) + "eadP" + String(userModeMessage))] = user?[(show_fromName.replacingOccurrences(of: "equal", with: "co"))]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(app_fileMakeFilterId.replacingOccurrences(of: "user", with: "d"))] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(String(appNameUseContent))] = (roomGiftModel.giftNum)
                        //: let str = touser?["nickname"] as? String ?? ""
                        let str = touser?[(kWoodKey.replacingOccurrences(of: "tool", with: "c") + "name")] as? String ?? ""
                        //: dictM["pname"] = "Send to %@".localizedArguments(str)
                        dictM[(String(dataBottomVideoPath))] = (String(user_drunkId) + String(appFlushFormat.prefix(5))).viewfinder(str)
                        //: if touser == nil {
                        if touser == nil {
                            //: dictM["pname"] = "Send to All Numbers".localized
                            dictM[(String(dataBottomVideoPath))] = (String(main_titleId) + String(app_timeId.prefix(8))).localized
                        }
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(noti_appKey.replacingOccurrences(of: "stop", with: "i") + String(constDateRefreshMsg))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(String(dataViewText))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(main_dataKey) + String(userNeedName))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(main_firstEqualId.replacingOccurrences(of: "message", with: "w") + "Type")] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(appLiveName) + constErrorData.replacingOccurrences(of: "title", with: "m"))] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<ListHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
                        }
                    }
                    // 循环播放次数
                    //: var animationTimes = 1
                    var animationTimes = 1
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: animationTimes = roomGiftModel.animationTimes
                        animationTimes = roomGiftModel.animationTimes
                        //: } else {
                    } else {
                        //: animationTimes = roomGiftModel.giftNum
                        animationTimes = roomGiftModel.giftNum
                    }
                    //: let tempGiftArr = tempArr
                    let tempGiftArr = tempArr
                    //: for _ in 0..<animationTimes {
                    for _ in 0 ..< animationTimes {
                        //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        //: tempDictM.addObjects(from: tempDicArr as! [Any])
                        tempDictM.addObjects(from: tempDicArr as! [Any])
                    }
                    //: } else {
                } else {
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(data_requestSumeractionKey.prefix(5)) + noti_fieldInputUrl.replacingOccurrences(of: "user", with: "d"))] = targetId
                    //: dictM["fromNickname"] = user?["nickname"]
                    dictM[(String(const_commentText) + user_managerPath.replacingOccurrences(of: "count", with: "kn"))] = user?[(kWoodKey.replacingOccurrences(of: "tool", with: "c") + "name")]
                    //: dictM["fromHeadPic"] = user?["headPic"]
                    dictM[(String(mainMagnitudeStr.suffix(5)) + "eadP" + String(userModeMessage))] = user?[(String(appIndexStr.prefix(7)))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(app_fileMakeFilterId.replacingOccurrences(of: "user", with: "d"))] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(String(appNameUseContent))] = (roomGiftModel.giftNum)
                    // 显示送给谁
                    //: let str = touser?["nickname"] as? String ?? ""
                    let str = touser?[(kWoodKey.replacingOccurrences(of: "tool", with: "c") + "name")] as? String ?? ""
                    //: dictM["pname"] = "Send to %@".localizedArguments(str)
                    dictM[(String(dataBottomVideoPath))] = (String(user_drunkId) + String(appFlushFormat.prefix(5))).viewfinder(str)
                    //: if touser == nil {
                    if touser == nil {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(String(dataBottomVideoPath))] = (String(main_titleId) + String(app_timeId.prefix(8))).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(noti_appKey.replacingOccurrences(of: "stop", with: "i") + String(constDateRefreshMsg))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(dataViewText))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(main_dataKey) + String(userNeedName))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(noti_sizeManagerPath.lowercased() + String(notiCellStr))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(main_firstEqualId.replacingOccurrences(of: "message", with: "w") + "Type")] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(appLiveName) + constErrorData.replacingOccurrences(of: "title", with: "m"))] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(appLiveName) + constErrorData.replacingOccurrences(of: "title", with: "m"))] = dictM[(String(appNameUseContent))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<ListHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                // 直播在聊天室收到礼物，积分更改
                //: let touid = touser?["uid"] as? Int
                let touid = touser?[(dataTitleMessage.replacingOccurrences(of: "like", with: "u"))] as? Int
                //: if TalkingLiveManager.shared().isLive, PunctuateThen.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                if LogLiveManager.anUp().isLive, PunctuateThen.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(k_resultValue) + String(mainClearValueJumpFormat))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: showColorStr.reversed(), encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: user_screenUrl, object: nil, userInfo: [String(bytes: showColorStr.reversed(), encoding: .utf8)!: mfBean ?? 0.0])
                }

                // 当前处于该对话页 添加到当前动画队列里
                //: if RangePushManager.share.func__getCurrentActivityVC()!.isKind(of: TalkingGroupChatController.self) {
                if RangePushManager.share.retrieve()!.isKind(of: ControllerDelegate.self) {
                    //: let chatVC = RangePushManager.share.func__getCurrentActivityVC() as! TalkingGroupChatController
                    let chatVC = RangePushManager.share.retrieve() as! ControllerDelegate
                    //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                    chatVC.recordArr(giftArr: tempGiftModel as! [Any])
                }
            }
        }
    }

    /// 收到 直播/语音房 礼物消息处理
    //: func disposeReceiveLiveRoomGiftMsg(giftMessageDic: NSDictionary) {
    func reInfoDic(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(String(mainLoadMsg))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(k_valuePath.replacingOccurrences(of: "key", with: "e"))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["uid"] as! CVarArg)
            let targetId = String(format: "%@", user?[(dataTitleMessage.replacingOccurrences(of: "like", with: "u"))] as! CVarArg)
            //: var toUid = ""
            var toUid = ""
            //: if TalkingLiveManager.shared().isLive {
            if LogLiveManager.anUp().isLive {
                //: toUid = String(format: "LiveGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(noti_tabKey.suffix(6)) + "ft_%@"), extraDict?[(String(mainInputValue.prefix(5)))] as? CVarArg ?? "")
                //: } else if TalkingVoiceRoomManager.shared().isParty {
            } else if RangeManager.universalShared().isParty {
                //: toUid = String(format: "PartyGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(kToUrl) + String(user_exceptEnterTitle.suffix(5)) + "ift_%@"), extraDict?[(String(mainInputValue.prefix(5)))] as? CVarArg ?? "")
            }
            //: let gift = extraDict?["gift"] as? NSDictionary
            let gift = extraDict?[(String(dataValuePath))] as? NSDictionary

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(dataValuePath))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<RubricAnimatModel>.deserializeFrom(dict: extraDict![(String(dataValuePath))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                //: let dictM = NSMutableDictionary(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = targetId
                dictM[(String(data_requestSumeractionKey.prefix(5)) + noti_fieldInputUrl.replacingOccurrences(of: "user", with: "d"))] = targetId
                //: dictM["fromNickname"] = user?["nickname"]
                dictM[(String(const_commentText) + user_managerPath.replacingOccurrences(of: "count", with: "kn"))] = user?[(kWoodKey.replacingOccurrences(of: "tool", with: "c") + "name")]
                //: dictM["fromHeadPic"] = user?["headPic"]
                dictM[(String(mainMagnitudeStr.suffix(5)) + "eadP" + String(userModeMessage))] = user?[(String(appIndexStr.prefix(7)))]

                //: dictM["pid"] = gift?["id"] as? String
                dictM[(app_fileMakeFilterId.replacingOccurrences(of: "user", with: "d"))] = gift?["id"] as? String
                //: dictM["num"] = gift?["num"] as? String
                dictM[(String(appNameUseContent))] = gift?[(String(appNameUseContent))] as? String
                //: dictM["pname"] = roomGiftModel.name
                dictM[(String(dataBottomVideoPath))] = roomGiftModel.name
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(noti_appKey.replacingOccurrences(of: "stop", with: "i") + String(constDateRefreshMsg))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(dataViewText))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(main_dataKey) + String(userNeedName))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(noti_sizeManagerPath.lowercased() + String(notiCellStr))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(main_firstEqualId.replacingOccurrences(of: "message", with: "w") + "Type")] = (roomGiftModel.showType)
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(String(appLiveName) + constErrorData.replacingOccurrences(of: "title", with: "m"))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(String(appLiveName) + constErrorData.replacingOccurrences(of: "title", with: "m"))] = dictM[(String(appNameUseContent))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<ListHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempGiftModel.add(giftModel)
                    tempGiftModel.add(giftModel)
                    //: tempDictM.add(dictM)
                    tempDictM.add(dictM)
                }

                // 礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: if giftArray?.count ?? 0 >= 10 {
                if giftArray?.count ?? 0 >= 10 {
                    //: giftArray?.removeFirstObject()
                    giftArray?.removeFirstObject()
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[toUid] = giftArray
                self.cachDict[toUid] = giftArray
                //: self.saveAnimatDataToFile()
                self.animat()
            }
        }
    }
}
