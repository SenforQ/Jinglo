
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let dataLabUrl:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "gift" :*/
fileprivate let kStylePath:[Character] = ["g","i","f","t"]

/*: "iosEffect" :*/
fileprivate let k_shareUrl:String = "iosEfself height re name"
fileprivate let showActivityStr:String = "lightct"

/*: "iosEmperorEffect" :*/
fileprivate let mainBackgroundStr:String = "iosEmperto thought cell"
fileprivate let const_contentValue:[Character] = ["o","r","E","f","f","e","c","t"]

/*: "fromUid" :*/
fileprivate let noti_userText:[Character] = ["f","r","o","m","U","i","d"]

/*: "fromNickname" :*/
fileprivate let k_playerFormat:String = "frmodel"
fileprivate let userLabFormat:String = "mNickcomment clear source origin error"

/*: "fromHeadPic" :*/
fileprivate let constValueId:String = "interaction view string button viewfromHe"

/*: "pid" :*/
fileprivate let constStateStyleAddMsg:[Character] = ["p","i","d"]

/*: "num" :*/
fileprivate let notiMakeTableKey:String = "outputum"

/*: "pname" :*/
fileprivate let data_kitMessage:String = "perrorme"

/*: "name" :*/
fileprivate let const_hiddenTitle:String = "namcontrol"

/*: "giftPic" :*/
fileprivate let k_touchName:[Character] = ["g","i","f","t","P","i","c"]

/*: "imgPreview" :*/
fileprivate let dataTitleStr:String = "iuser"
fileprivate let showTapInfoUserId:String = "change makegPreview"

/*: "comboNum" :*/
fileprivate let app_labelKey:[Character] = ["c","o","m","b","o"]
fileprivate let appErrorMessage:String = "Numcenter to self user"

/*: "showType" :*/
fileprivate let dataGiftText:String = "showTyperesult cell right guard"

/*: "animationTimes" :*/
fileprivate let showEqualValue:[Character] = ["a","n","i","m","a","t","i","o","n","T","i","m","e","s"]

/*: "id" :*/
fileprivate let user_keyFormat:String = "ipath"

/*: "iosVapEffect" :*/
fileprivate let appReloadValue:String = "self guard title reason selfiosVapEf"
fileprivate let constWithItemValue:String = "labect"

/*: "giftNum" :*/
fileprivate let mainObjectMakeId:[Character] = ["g","i","f","t","N","u","m"]

/*: "Send to %@" :*/
fileprivate let showColorMsg:String = "let view titleSend"
fileprivate let dataLabelPath:String = "table gift name source to %@"

/*: "all" :*/
fileprivate let main_screenWithPath:[Character] = ["a","l","l"]

/*: "Send to All Numbers" :*/
fileprivate let show_infoFormat:String = "Send tindex data to name party"
fileprivate let k_styleMakeKey:String = "frame path title Numbers"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChatReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

/// 私聊 礼物动效层
//: class TalkingPrivateChatAnimatView: UIView {
class ChatReactiveCompatible: UIView {
    //: var animatArray: NSMutableArray =  NSMutableArray.init(capacity: 0)
    var animatArray: NSMutableArray = .init(capacity: 0)
    //: var isPlayAnimat = false
    var isPlayAnimat = false

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.cellWindow()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dataLabUrl.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: public lazy var giftAnimatView: TalkingGiftAnimatView = {
    public lazy var giftAnimatView: VoiceOverAnimatView = {
        //: let view = TalkingGiftAnimatView.init()
        let view = VoiceOverAnimatView()
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingPrivateChatAnimatView {
extension ChatReactiveCompatible {
    /// 自己私聊送礼,动效处理

    //: func dealGiftAnimatData(dict: Dictionary<String, Any>) {
    func readDict(dict: [String: Any]) {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return
            return
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(String(kStylePath))] as? [String: Any]
        //: if giftInfo == nil || giftInfo?.keys.contains("iosEffect") == false {
        if giftInfo == nil || giftInfo?.keys.contains((String(k_shareUrl.prefix(5)) + showActivityStr.replacingOccurrences(of: "light", with: "fe"))) == false {
            //: return
            return
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(mainBackgroundStr.prefix(8)) + String(const_contentValue))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(mainBackgroundStr.prefix(8)) + String(const_contentValue))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(k_shareUrl.prefix(5)) + showActivityStr.replacingOccurrences(of: "light", with: "fe"))] ?? "", at: 0)
            //: let tempArr = NSMutableArray.init()
            let tempArr = NSMutableArray()

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = PunctuateThen.share.loginUserMode.userID
                dictM[(String(noti_userText))] = PunctuateThen.share.loginUserMode.userID
                //: dictM["fromNickname"] = PunctuateThen.share.loginUserMode.nickname
                dictM[(k_playerFormat.replacingOccurrences(of: "model", with: "o") + String(userLabFormat.prefix(5)) + "name")] = PunctuateThen.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = PunctuateThen.share.loginUserMode.headPic
                dictM[(String(constValueId.suffix(6)) + "adPic")] = PunctuateThen.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(String(constStateStyleAddMsg))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(notiMakeTableKey.replacingOccurrences(of: "output", with: "n"))] = giftInfo?[(notiMakeTableKey.replacingOccurrences(of: "output", with: "n"))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(data_kitMessage.replacingOccurrences(of: "error", with: "na"))] = giftInfo?[(const_hiddenTitle.replacingOccurrences(of: "control", with: "e"))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(k_touchName))] = giftInfo?[(dataTitleStr.replacingOccurrences(of: "user", with: "m") + String(showTapInfoUserId.suffix(8)))]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(app_labelKey) + String(appErrorMessage.prefix(3)))] = giftInfo?[(String(app_labelKey) + String(appErrorMessage.prefix(3)))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(k_shareUrl.prefix(5)) + showActivityStr.replacingOccurrences(of: "light", with: "fe"))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(dataGiftText.prefix(8)))] = giftInfo?[(String(dataGiftText.prefix(8)))]
                //: dictM["animationTimes"] = "1"
                dictM[(String(showEqualValue))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<ListHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempArr.add(giftModel)
                    tempArr.add(giftModel)
                }
            }
            // 循环播放次数
            //: var animationTimes = 1
            var animationTimes = 1
            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((String(showEqualValue))) != false {
                //: animationTimes = giftInfo!["animationTimes"] as! Int
                animationTimes = giftInfo![(String(showEqualValue))] as! Int
                //: } else {
            } else {
                //: animationTimes = giftInfo!["num"] as! Int
                animationTimes = giftInfo![(notiMakeTableKey.replacingOccurrences(of: "output", with: "n"))] as! Int
            }
            //: let tempGiftArr = tempArr
            let tempGiftArr = tempArr
            //: for _ in 0..<animationTimes {
            for _ in 0 ..< animationTimes {
                //: self.animatArray.addObjects(from: tempGiftArr as! [Any])
                self.animatArray.addObjects(from: tempGiftArr as! [Any])
            }

            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = PunctuateThen.share.loginUserMode.userID
            dictM[(String(noti_userText))] = PunctuateThen.share.loginUserMode.userID
            //: dictM["fromNickname"] = PunctuateThen.share.loginUserMode.nickname
            dictM[(k_playerFormat.replacingOccurrences(of: "model", with: "o") + String(userLabFormat.prefix(5)) + "name")] = PunctuateThen.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = PunctuateThen.share.loginUserMode.headPic
            dictM[(String(constValueId.suffix(6)) + "adPic")] = PunctuateThen.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(String(constStateStyleAddMsg))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(notiMakeTableKey.replacingOccurrences(of: "output", with: "n"))] = giftInfo?[(notiMakeTableKey.replacingOccurrences(of: "output", with: "n"))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(data_kitMessage.replacingOccurrences(of: "error", with: "na"))] = giftInfo?[(const_hiddenTitle.replacingOccurrences(of: "control", with: "e"))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(k_touchName))] = giftInfo?[(dataTitleStr.replacingOccurrences(of: "user", with: "m") + String(showTapInfoUserId.suffix(8)))]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(app_labelKey) + String(appErrorMessage.prefix(3)))] = giftInfo?[(String(app_labelKey) + String(appErrorMessage.prefix(3)))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(k_shareUrl.prefix(5)) + showActivityStr.replacingOccurrences(of: "light", with: "fe"))] = giftInfo?[(String(k_shareUrl.prefix(5)) + showActivityStr.replacingOccurrences(of: "light", with: "fe"))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(dataGiftText.prefix(8)))] = giftInfo?[(String(dataGiftText.prefix(8)))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(appReloadValue.suffix(8)) + constWithItemValue.replacingOccurrences(of: "lab", with: "f"))] = giftInfo?[(String(appReloadValue.suffix(8)) + constWithItemValue.replacingOccurrences(of: "lab", with: "f"))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((String(showEqualValue))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(String(showEqualValue))] = giftInfo?[(String(showEqualValue))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(String(showEqualValue))] = dictM[(notiMakeTableKey.replacingOccurrences(of: "output", with: "n"))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<ListHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: self.animatArray.add(giftModel)
                self.animatArray.add(giftModel)
            }
        }
        //: judgePlay()
        field()
    }

    /// 视频通话送礼,模型转换
    //: func changeGiftToModel(dict: Dictionary<String, Any>) ->TalkingGiftMsgAnimatModel? {
    func mononuclearPhagocyteSystemPlay(dict: [String: Any]) -> ListHandyJSON? {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return nil
            return nil
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(String(kStylePath))] as? [String: Any]
        //: if giftInfo == nil {
        if giftInfo == nil {
            //: return nil
            return nil
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(mainBackgroundStr.prefix(8)) + String(const_contentValue))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(mainBackgroundStr.prefix(8)) + String(const_contentValue))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(k_shareUrl.prefix(5)) + showActivityStr.replacingOccurrences(of: "light", with: "fe"))] ?? "", at: 0)

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = PunctuateThen.share.loginUserMode.userID
                dictM[(String(noti_userText))] = PunctuateThen.share.loginUserMode.userID
                //: dictM["fromNickname"] = PunctuateThen.share.loginUserMode.nickname
                dictM[(k_playerFormat.replacingOccurrences(of: "model", with: "o") + String(userLabFormat.prefix(5)) + "name")] = PunctuateThen.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = PunctuateThen.share.loginUserMode.headPic
                dictM[(String(constValueId.suffix(6)) + "adPic")] = PunctuateThen.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(String(constStateStyleAddMsg))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(notiMakeTableKey.replacingOccurrences(of: "output", with: "n"))] = giftInfo?[(notiMakeTableKey.replacingOccurrences(of: "output", with: "n"))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(data_kitMessage.replacingOccurrences(of: "error", with: "na"))] = giftInfo?[(const_hiddenTitle.replacingOccurrences(of: "control", with: "e"))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(k_touchName))] = giftInfo?[(dataTitleStr.replacingOccurrences(of: "user", with: "m") + String(showTapInfoUserId.suffix(8)))]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(app_labelKey) + String(appErrorMessage.prefix(3)))] = giftInfo?[(String(app_labelKey) + String(appErrorMessage.prefix(3)))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(k_shareUrl.prefix(5)) + showActivityStr.replacingOccurrences(of: "light", with: "fe"))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(dataGiftText.prefix(8)))] = giftInfo?[(String(dataGiftText.prefix(8)))]
                //: dictM["animationTimes"] = "1"
                dictM[(String(showEqualValue))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<ListHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = PunctuateThen.share.loginUserMode.userID
            dictM[(String(noti_userText))] = PunctuateThen.share.loginUserMode.userID
            //: dictM["fromNickname"] = PunctuateThen.share.loginUserMode.nickname
            dictM[(k_playerFormat.replacingOccurrences(of: "model", with: "o") + String(userLabFormat.prefix(5)) + "name")] = PunctuateThen.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = PunctuateThen.share.loginUserMode.headPic
            dictM[(String(constValueId.suffix(6)) + "adPic")] = PunctuateThen.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(String(constStateStyleAddMsg))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(notiMakeTableKey.replacingOccurrences(of: "output", with: "n"))] = giftInfo?[(notiMakeTableKey.replacingOccurrences(of: "output", with: "n"))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(data_kitMessage.replacingOccurrences(of: "error", with: "na"))] = giftInfo?[(const_hiddenTitle.replacingOccurrences(of: "control", with: "e"))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(k_touchName))] = giftInfo?[(dataTitleStr.replacingOccurrences(of: "user", with: "m") + String(showTapInfoUserId.suffix(8)))]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(app_labelKey) + String(appErrorMessage.prefix(3)))] = giftInfo?[(String(app_labelKey) + String(appErrorMessage.prefix(3)))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(k_shareUrl.prefix(5)) + showActivityStr.replacingOccurrences(of: "light", with: "fe"))] = giftInfo?[(String(k_shareUrl.prefix(5)) + showActivityStr.replacingOccurrences(of: "light", with: "fe"))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(dataGiftText.prefix(8)))] = giftInfo?[(String(dataGiftText.prefix(8)))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(appReloadValue.suffix(8)) + constWithItemValue.replacingOccurrences(of: "lab", with: "f"))] = giftInfo?[(String(appReloadValue.suffix(8)) + constWithItemValue.replacingOccurrences(of: "lab", with: "f"))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((String(showEqualValue))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(String(showEqualValue))] = giftInfo?[(String(showEqualValue))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(String(showEqualValue))] = dictM[(notiMakeTableKey.replacingOccurrences(of: "output", with: "n"))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<ListHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: return giftModel
                return giftModel
            }
        }
        //: return nil
        return nil
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: Dictionary<String, Any>, model: TalkingChatRoomMemberModel)->TalkingGiftMsgAnimatModel? {
    func bindSumeraction(giftMessageDic: [String: Any], model: SodalistSendMemberModel) -> ListHandyJSON? {
        //: if  giftMessageDic.keys.contains("gift") == false {
        if giftMessageDic.keys.contains((String(kStylePath))) == false {
            //: return nil
            return nil
        }
        //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: giftMessageDic["gift"] as? Dictionary<String, Any>, designatedPath: nil) {
        if var roomGiftModel = JSONDeserializer<RubricAnimatModel>.deserializeFrom(dict: giftMessageDic[(String(kStylePath))] as? [String: Any], designatedPath: nil) {
            //: let dic =  giftMessageDic["gift"] as? Dictionary<String, Any>
            let dic = giftMessageDic[(String(kStylePath))] as? [String: Any]
            //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
            roomGiftModel.giftNum = dic?[(String(mainObjectMakeId))] as? Int ?? 0
            //: var effect = roomGiftModel.iosEffect
            var effect = roomGiftModel.iosEffect
            //: if effect.count == 0 {
            if effect.count == 0 {
                //: effect = roomGiftModel.effect
                effect = roomGiftModel.effect
            }

            //: let tempGiftModel = NSMutableArray.init()
            let tempGiftModel = NSMutableArray()
            //: let tempDictM = NSMutableArray.init()
            let tempDictM = NSMutableArray()

            // 帝王礼物特效
            //: if  roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
            if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                // 开头动效
                //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                //: let tempArr = NSMutableArray.init()
                let tempArr = NSMutableArray()
                //: let tempDicArr = NSMutableArray.init()
                let tempDicArr = NSMutableArray()

                //: for giftStr in giftArr! {
                for giftStr in giftArr! {
                    //: let dictM = NSMutableDictionary.init(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)
                    //: dictM["fromUid"] = PunctuateThen.share.loginUserMode.userID
                    dictM[(String(noti_userText))] = PunctuateThen.share.loginUserMode.userID
                    //: dictM["fromNickname"] = PunctuateThen.share.loginUserMode.nickname
                    dictM[(k_playerFormat.replacingOccurrences(of: "model", with: "o") + String(userLabFormat.prefix(5)) + "name")] = PunctuateThen.share.loginUserMode.nickname
                    //: dictM["fromHeadPic"] = PunctuateThen.share.loginUserMode.headPic
                    dictM[(String(constValueId.suffix(6)) + "adPic")] = PunctuateThen.share.loginUserMode.headPic
                    //: dictM["pid"] = "0" // 缓存兼容
                    dictM[(String(constStateStyleAddMsg))] = "0" // 缓存兼容
                    //: dictM["num"] =  (roomGiftModel.giftNum)
                    dictM[(notiMakeTableKey.replacingOccurrences(of: "output", with: "n"))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                    dictM[(data_kitMessage.replacingOccurrences(of: "error", with: "na"))] = (String(showColorMsg.suffix(4)) + String(dataLabelPath.suffix(6))).viewfinder(model.nickname)
                    //: if model.uid == "all" {
                    if model.uid == (String(main_screenWithPath)) {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(data_kitMessage.replacingOccurrences(of: "error", with: "na"))] = (String(show_infoFormat.prefix(6)) + "o All" + String(k_styleMakeKey.suffix(8))).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(k_touchName))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(app_labelKey) + String(appErrorMessage.prefix(3)))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = giftStr
                    dictM[(String(k_shareUrl.prefix(5)) + showActivityStr.replacingOccurrences(of: "light", with: "fe"))] = giftStr
                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(dataGiftText.prefix(8)))] = (roomGiftModel.showType)
                    //: dictM["animationTimes"] = "1"
                    dictM[(String(showEqualValue))] = "1"

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                    if let giftModel = JSONDeserializer<ListHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: return giftModel
                        return giftModel
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
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = PunctuateThen.share.loginUserMode.userID
                dictM[(String(noti_userText))] = PunctuateThen.share.loginUserMode.userID
                //: dictM["fromNickname"] = PunctuateThen.share.loginUserMode.nickname
                dictM[(k_playerFormat.replacingOccurrences(of: "model", with: "o") + String(userLabFormat.prefix(5)) + "name")] = PunctuateThen.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = PunctuateThen.share.loginUserMode.headPic
                dictM[(String(constValueId.suffix(6)) + "adPic")] = PunctuateThen.share.loginUserMode.headPic

                //: dictM["pid"] = roomGiftModel.giftId
                dictM[(String(constStateStyleAddMsg))] = roomGiftModel.giftId
                //: dictM["num"] =  (roomGiftModel.giftNum)
                dictM[(notiMakeTableKey.replacingOccurrences(of: "output", with: "n"))] = (roomGiftModel.giftNum)
                // 显示送给谁
                //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                dictM[(data_kitMessage.replacingOccurrences(of: "error", with: "na"))] = (String(showColorMsg.suffix(4)) + String(dataLabelPath.suffix(6))).viewfinder(model.nickname)
                //: if model.uid == "all" {
                if model.uid == (String(main_screenWithPath)) {
                    //: dictM["pname"] = "Send to All Numbers".localized
                    dictM[(data_kitMessage.replacingOccurrences(of: "error", with: "na"))] = (String(show_infoFormat.prefix(6)) + "o All" + String(k_styleMakeKey.suffix(8))).localized
                }
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(k_touchName))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(app_labelKey) + String(appErrorMessage.prefix(3)))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(k_shareUrl.prefix(5)) + showActivityStr.replacingOccurrences(of: "light", with: "fe"))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(appReloadValue.suffix(8)) + constWithItemValue.replacingOccurrences(of: "lab", with: "f"))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(dataGiftText.prefix(8)))] = (roomGiftModel.showType)
                //: if (roomGiftModel.animationTimes > 0) {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(String(showEqualValue))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(String(showEqualValue))] = dictM[(notiMakeTableKey.replacingOccurrences(of: "output", with: "n"))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<ListHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
        }
        //: return nil
        return nil
    }

    /// 收到礼物消息的动效模型(私信收到)
    //: func addGiftAnimatModel(model: TalkingGiftMsgAnimatModel) {
    func onNext(model: ListHandyJSON) {
        //: animatArray.add(model)
        animatArray.add(model)
        //: judgePlay()
        field()
    }

    /// 收到礼物消息的动效组(私信收到)
    //: func addGiftAnimatModelArr(modelArr: Array<Any>) {
    func afterImage(modelArr: [Any]) {
        //: animatArray.addObjects(from: modelArr)
        animatArray.addObjects(from: modelArr)
        //: judgePlay()
        field()
    }

    /// 获取剩余的动画队列
    //: func getLeftGiftAnimat() ->NSMutableArray {
    func roundIndex() -> NSMutableArray {
        //: let data = animatArray
        let data = animatArray
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: return data
        return data
    }

    /// 初始化动画资源(针对通话的显示 最小化 关闭的切换)
    //: func initAnimatData(data: NSMutableArray) {
    func stopName(data: NSMutableArray) {
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        field()
    }

    /// 根据会话id 将对应的缓存动画加进来

    //: func initCachAnimatData(tagetID: String) {
    func channelId(tagetID: String) {
        //: let data = AbTalkingPrivateChatAnimatTool.shared.getConverCacheGiftAnimat(tagetId: tagetID)
        let data = PhotoThen.shared.equalRefuse(tagetId: tagetID)
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        field()
    }

    /// 判断是否要取数组动效 开始播放
    //: func judgePlay() {
    func field() {
        //: if animatArray.count>0 && isPlayAnimat == false {
        if animatArray.count > 0, isPlayAnimat == false {
            //: playNext()
            viewData()
        }
    }

    /// 播放
    //: func playNext() {
    func viewData() {
        //: if animatArray.count > 0 {
        if animatArray.count > 0 {
            //: var index = 0
            var index = 0
            //: animatArray.enumerateObjects { obj, idx, stop in
            animatArray.enumerateObjects { obj, idx, stop in
                // 盲盒礼物\帝王礼物 优先播放
                //: let model: TalkingGiftMsgAnimatModel = obj as! TalkingGiftMsgAnimatModel
                let model: ListHandyJSON = obj as! ListHandyJSON
                //: if (model.showType == ChatGiftAnimatType.myStery.rawValue || model.showType == ChatGiftAnimatType.king.rawValue) {
                if model.showType == DogTagEquatable.myStery.rawValue || model.showType == DogTagEquatable.king.rawValue {
                    //: index = idx
                    index = idx
                    //: stop.pointee = true
                    stop.pointee = true
                }
            }
            //: let giftModel = self.animatArray[index]
            let giftModel = self.animatArray[index]
            //: self.isPlayAnimat = true
            self.isPlayAnimat = true
            //: self.animatArray.removeObject(at: index)
            self.animatArray.removeObject(at: index)
            //: let iscanPlay = self.giftAnimatView.didReceiveMsgModel(msgModel: giftModel)
            let iscanPlay = self.giftAnimatView.have(msgModel: giftModel)
            //: if !iscanPlay {
            if !iscanPlay {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: judgePlay()
                field()
            }
        }
    }

    //: override var contentMode: UIView.ContentMode {
    override var contentMode: UIView.ContentMode {
        //: didSet {
        didSet {
            //: self.giftAnimatView.contentMode = contentMode
            self.giftAnimatView.contentMode = contentMode
        }
    }
}

//: extension TalkingPrivateChatAnimatView {
extension ChatReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func cellWindow() {
        //: self.isUserInteractionEnabled = false
        self.isUserInteractionEnabled = false

        //: self.addSubview(giftAnimatView)
        self.addSubview(giftAnimatView)

        //: giftAnimatView.snp.makeConstraints { make in
        giftAnimatView.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: giftAnimatView.animationFinishCallback = { [weak self] obj in
        giftAnimatView.animationFinishCallback = { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isPlayAnimat = false
            self.isPlayAnimat = false
            //: self.playNext()
            self.viewData()
        }

        //: giftAnimatView.finishAnimBlock = { [weak self] success in
        giftAnimatView.finishAnimBlock = { [weak self] success in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if !success {
            if !success {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: self.playNext()
                self.viewData()
            }
        }
    }
}
