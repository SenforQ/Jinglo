
//: Declare String Begin

/*: "PARTY_STATUS_CHANGE_NOTIFICATION" :*/
fileprivate let notiTagViewKey:[UInt8] = [0xf0,0xe1,0xf2,0xf4,0xf9,0xff,0xf3,0xf4,0xe1,0xf4,0xf5,0xf3,0xff,0xe3,0xe8,0xe1,0xee,0xe7,0xe5,0xff,0xee,0xef,0xf4,0xe9,0xe6,0xe9,0xe3,0xe1,0xf4,0xe9,0xef,0xee]

fileprivate func norWith(color num: UInt8) -> UInt8 {
    let value = Int(num) + 96
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "p- :*/
fileprivate let k_toUrl:[Character] = ["p","-"]

/*: - :*/
fileprivate let show_indexFormat:[Character] = ["-"]

/*: "redirectUrl" :*/
fileprivate let k_centerMsg:[Character] = ["r","e","d","i","r"]
fileprivate let userLabelLabPath:[Character] = ["e","c","t","U","r","l"]

/*: "VOICEROOM: 进房模型解析失败。" :*/
fileprivate let showImageData:[Character] = ["V","O","I","C","E","R"]
fileprivate let notiSectionDataTargetMessage:String = "count"
fileprivate let k_equalUrl:[Character] = ["O","M",":"," ","进","房","模","型","\u{89e3}","\u{6790}","失","败","\u{3002}"]

/*: "Party room exception" :*/
fileprivate let noti_labClickKey:[Character] = ["P","a","r","t","y"," ","r","o","o","m"," ","e","x","c","e","p","t","i","o"]
fileprivate let kViewValue:[Character] = ["n"]

/*: _ :*/
fileprivate let main_editStr:String = "_"

/*: "male" :*/
fileprivate let main_addContent:[UInt8] = [0x65,0x6c,0x61,0x6d]

/*: "female" :*/
fileprivate let main_viewFormat:String = "fmainale"

/*: "VOICEROOM: 群聊进房失败。groupId:  :*/
fileprivate let noti_logValue:[Character] = ["V","O","I","C","E","R","O","O","M",":"," ","群","聊","\u{8fdb}","房","\u{5931}"]
fileprivate let appPathName:String = "\u{8d25}。gr"
fileprivate let main_addFormat:String = "label top extensionoupId: "

/*: ." :*/
fileprivate let dataSizeGiftStr:[Character] = ["."]

/*: "VOICEROOM: 切房模型解析失败。" :*/
fileprivate let app_styleButtonMessage:String = "voice"
fileprivate let userAddPath:[Character] = [":"," ","切","房","\u{6a21}","型","解","析","失","败","\u{3002}"]

/*: "VOICEROOM: 群聊切房失败。groupId:  :*/
fileprivate let noti_viewName:String = "VgiftCERO"
fileprivate let notiColorName:String = "OM: 群all data bring cover name"
fileprivate let app_showId:String = "groupId: view label text thought"

/*: "errCode" :*/
fileprivate let appTimeFormat:[UInt8] = [0xa5,0xb2,0xb2,0x83,0xaf,0xa4,0xa5]

fileprivate func guardHidden(from num: UInt8) -> UInt8 {
    let value = Int(num) + 192
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "custom_kickout_message" :*/
fileprivate let k_normalStr:[Character] = ["c","u","s","t","o","m","_","k","i","c","k","o"]
fileprivate let const_pointMsg:[Character] = ["u"]
fileprivate let showAtText:String = "t_memode hidden layer text for"

/*: "closeRoom" :*/
fileprivate let appNameValue:String = "datalose"
fileprivate let k_makeFormat:[Character] = ["R","o","o","m"]

/*: "adminCloseRoom" :*/
fileprivate let user_viewText:[Character] = ["a","d","m","i","n"]
fileprivate let dataBlackLockName:String = "right lab atClo"
fileprivate let kVideoMessage:String = "title color itemseRoom"

/*: "The room is closed, please go to another room" :*/
fileprivate let mainLabValue:[UInt8] = [0xc2,0xfe,0xf3,0xb6,0xe4,0xf9,0xf9,0xfb,0xb6,0xff,0xe5,0xb6,0xf5,0xfa,0xf9,0xe5,0xf3,0xf2,0xba,0xb6,0xe6,0xfa,0xf3,0xf7,0xe5,0xf3,0xb6,0xf1,0xf9,0xb6,0xe2,0xf9,0xb6,0xf7,0xf8,0xf9,0xe2,0xfe,0xf3,0xe4,0xb6,0xe4,0xf9,0xf9,0xfb]

/*: "OK" :*/
fileprivate let appNameStr:[Character] = ["O","K"]

/*: "You were kicked out of the room" :*/
fileprivate let k_boxDataTrueUrl:[UInt8] = [0xe2,0xd4,0xce,0x9b,0xcc,0xde,0xc9,0xde,0x9b,0xd0,0xd2,0xd8,0xd0,0xde,0xdf,0x9b,0xd4,0xce,0xcf,0x9b,0xd4,0xdd,0x9b,0xcf,0xd3,0xde,0x9b,0xc9,0xd4,0xd4,0xd6]

private func videoStyle(share num: UInt8) -> UInt8 {
    return num ^ 187
}

/*: "VOICEROOM：进房失败，roomID:  :*/
fileprivate let const_topLabelTitle:String = "viewOIC"
fileprivate let mainAttributeText:String = "M：进\u{623f}"
fileprivate let notiToTitle:[Character] = ["o","m","I","D",":"," "]

/*: , error:  :*/
fileprivate let user_activeFormat:[Character] = [","," ","e","r","r"]
fileprivate let noti_countStr:String = "message place infoor: "

/*: , reason:  :*/
fileprivate let constBottomKey:String = "for report case, rea"
fileprivate let appTableArrayTitle:[Character] = ["s","o","n",":"," "]

/*: , extendedData:  :*/
fileprivate let notiAppId:String = ", extlet cell text"
fileprivate let kBackgroundMessage:String = "var from colorata: "

/*: "VOICEROOM: 当前用户推流失败，roomID:  :*/
fileprivate let const_thoughtId:[Character] = ["V","O","I","C","E","R","O","O","M",":"," ","当","前","用","\u{6237}","推","\u{6d41}","失","败","\u{ff0c}","r"]
fileprivate let const_recordUrl:String = "oomID: live format model"

/*: , errorCode:  :*/
fileprivate let appActionImageMessage:String = "height platform text label aspect, err"
fileprivate let showIndexGameLabelUrl:[Character] = ["o","r"]
fileprivate let userModelStr:[Character] = ["C","o","d","e",":"," "]

/*: , streamID:  :*/
fileprivate let showKeyUrl:String = "video"
fileprivate let showEqualDisabledData:[Character] = [" ","s","t","r","e","a","m","I","D",":"," "]

/*: "An error occurred, please try again" :*/
fileprivate let appToName:[UInt8] = [0x6e,0x69,0x61,0x67,0x61,0x20,0x79,0x72,0x74,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x2c,0x64,0x65,0x72,0x72,0x75,0x63,0x63,0x6f,0x20,0x72,0x6f,0x72,0x72,0x65,0x20,0x6e,0x41]

/*: "VOICEROOM: 拉流失败，roomID:  :*/
fileprivate let user_labName:String = "VlistICE"
fileprivate let notiItemFormat:String = " 拉\u{6d41}失\u{8d25}，r"
fileprivate let kLeadingFormat:String = "item cell make fileoomID: "

/*: "VOICEROOM: 信令解析失败，command:  :*/
fileprivate let userViewFromId:String = "VmakeCER"
fileprivate let data_addText:String = " \u{4fe1}令解\u{6790}"
fileprivate let mainIconTitle:[Character] = ["\u{5931}","败","，","c","o","m","m","a","n","d",":"," "]

/*: , roomID:  :*/
fileprivate let user_succeedMessage:[Character] = [","," ","r","o","o","m","I","D",":"," "]

/*: "data" :*/
fileprivate let main_equalSuiteFaceMsg:[Character] = ["d","a","t","a"]

/*: "position" :*/
fileprivate let showMediumMessage:String = "aspectsit"
fileprivate let data_pathCancelId:String = "ioframe"

/*: "xxxx--  :*/
fileprivate let const_backPath:String = "xxxx-- target cell pair self"

/*: "opType" :*/
fileprivate let showReplacementMessage:String = "opTypetype to self model var"

/*: "party:changeMike" :*/
fileprivate let show_containerId:String = "pedgert"
fileprivate let constDataFormat:String = "ANGE"
fileprivate let appLanguageUrl:String = "Miketo size"

/*: "type" :*/
fileprivate let main_sharedStr:String = "photoype"

/*: "toPosition" :*/
fileprivate let app_sizeStr:String = "toPositapp view"
fileprivate let kDragKey:String = "messagen"

/*: "party:adminChangeMike" :*/
fileprivate let k_itemValue:String = "pcirclert"
fileprivate let showEventMessage:String = "count label source selfinCha"
fileprivate let mainLabelName:String = "N"
fileprivate let mainIndexValue:String = "formal user view femalegeMike"

/*: "You were kicked off the seat" :*/
fileprivate let notiMomentFirstReturnStr:String = "user labelYou "
fileprivate let k_oneLabViewValue:String = "live for view list kicked"
fileprivate let k_theId:[Character] = [" ","o","f","f"," ","t","h","e"," ","s","e","a","t"]

/*: "party:changeCoin" :*/
fileprivate let k_halfPath:[Character] = ["p","a","r","t","y",":","c","h","a","n","g","e","C","o","i","n"]

/*: "party:closeStream" :*/
fileprivate let app_rangeTitle:[Character] = ["p","a","r","t","y",":","c","l","o","s","e","S","t","r","e"]
fileprivate let noti_titleData:String = "tablem"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeManager.swift
//  Adjust
//
//  Created by DouXiu on 2024/9/12.
//

//: import ZegoExpressEngine
import ZegoExpressEngine

/// 语聊房状态变更通知
//: public let PARTY_STATUS_CHANGE_NOTIFICATION = NSNotification.Name(rawValue: "PARTY_STATUS_CHANGE_NOTIFICATION")
public let const_userFormat = NSNotification.Name(rawValue: String(bytes: notiTagViewKey.map{norWith(color: $0)}, encoding: .utf8)!)
/// 麦位数
//: public let MIKE_SEAT_COUNT = 8
public let main_maxMessage = 8

/// 语聊房角色
//: enum VoiceRoomRole: Int {
enum HeritageEquatable: Int {
    //: case host = 1
    case host = 1 // 房主
    //: case audience = 2
    case audience = 2 // 观众
    //: case manager = 4
    case manager = 4 // 管理员
}

//: class TalkingVoiceRoomManager: NSObject {
class RangeManager: NSObject {
    /// 语聊房模型
    //: private(set) var partyModel = TalkingVoiceRoomModel()
    private(set) var partyModel = VoiceMeasurable()
    /// 是否正在语聊房中（状态变更时发送通知）
    //: private(set) var isParty: Bool = false {
    private(set) var isParty: Bool = false {
        //: didSet {
        didSet {
            //: NotificationCenter.default.post(name: PARTY_STATUS_CHANGE_NOTIFICATION, object: self)
            NotificationCenter.default.post(name: const_userFormat, object: self)
        }
    }

    /// 是否小窗口模式
    //: private(set) var isSmallMode: Bool = false
    private(set) var isSmallMode: Bool = false
    /// singleton
    //: private static var _instance: TalkingVoiceRoomManager?
    private static var _instance: RangeManager?
    // 语聊房控制器
    //: private var voiceRoomVC: TalkingVoiceRoomViewController?
    private var voiceRoomVC: VoiceViewController?
    /// 麦位信息字典 [麦位 0~7：麦位模型]
    //: private var mikePositionDict = [Int: TalkingMikeListItemModel]()
    private var mikePositionDict = [Int: WithMeasurable]()
    //: private let mplock = NSLock()
    private let mplock = NSLock()
    /// 正在进房请求中（防止多次调用）
    //: private var isEnterRoomReq = false
    private var isEnterRoomReq = false
    /// 麦克风操作请求中（防止多次调用）
    //: private var isMicReq = false
    private var isMicReq = false

    //: override init() {
    override init() {
        //: super.init()
        super.init()
        //: self.mikePositionDict = initMikePosition()
        self.mikePositionDict = noTalk()
    }

    //: class func shared() -> TalkingVoiceRoomManager {
    class func universalShared() -> RangeManager {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingVoiceRoomManager()
            _instance = RangeManager()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }

    //: class func destroy() {
    class func clickOpen() {
        //: if TalkingVoiceRoomManager._instance != nil {
        if RangeManager._instance != nil {
            //: TalkingVoiceRoomManager._instance = nil
            RangeManager._instance = nil
        }
    }

    // MARK: - Lazy Load

    // 语聊房小窗口悬浮窗
    //: private lazy var miniView: TalkingVoiceRoomMiniView = {
    private lazy var miniView: LogMiniView = {
        //: let mini = TalkingVoiceRoomMiniView.buildLiveMiniView()
        let mini = LogMiniView.atLive()
        //: mini.isHidden = true
        mini.isHidden = true
        //: mini.tapGestureBlock = { [weak self] in
        mini.tapGestureBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.voiceRoom_goback()
            self.giftGoback()
        }
        //: return mini
        return mini
        //: }()
    }()
}

// MARK: - 操作麦位请求

//: extension TalkingVoiceRoomManager {
extension RangeManager {
    /// 房主/观众 麦位操作请求
    /// - Parameters:
    ///   - type: 1 上麦，2 下麦，3 切麦，4 开麦，5 闭麦
    ///   - position: 麦位
    ///   - toPosition: 目标麦位（切麦传值）
    //: func voiceRoom_reqChangeMike(type: Int, position: Int, toPosition: Int? = nil) {
    func red(type: Int, position: Int, toPosition: Int? = nil) {
        //: guard isMicReq == false else { return }
        guard isMicReq == false else { return }
        //: isMicReq = true
        isMicReq = true
        //: TalkingVoiceRoomReqTool.req_changeMike(roomId: partyModel.roomId,
        ResurveyReqTool.littleness(roomId: partyModel.roomId,
                                           //: uid: Int(PunctuateThen.share.loginUid) ?? 0,
                                           uid: Int(PunctuateThen.share.loginUid) ?? 0,
                                           //: type: type,
                                           type: type,
                                           //: position: position,
                                           position: position,
                                           //: toPos: toPosition)
                                           toPos: toPosition)
        //: { succeed, result, errorModel in
        { succeed, result, errorModel in
            //: self.isMicReq = false
            self.isMicReq = false
            //: guard succeed else {
            guard succeed else { // 失败提示
                //: if errorModel?.errorCode == 20001 {
                if errorModel?.errorCode == 20001 { // 已在麦位，开始推流，刷新UI
                    //: ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                    ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                    //: let streamID = self.voiceRoom_getStreamID()
                    let streamID = self.noneCell()
                    //: ZegoExpressEngine.shared().startPublishingStream(streamID)
                    ZegoExpressEngine.shared().startPublishingStream(streamID)
                    //: guard let dict = result as? [String: Any] else { return }
                    guard let dict = result as? [String: Any] else { return }
                    //: guard let mikeModel = TalkingMikeListItemModel.deserialize(from: dict) else { return }
                    guard let mikeModel = WithMeasurable.deserialize(from: dict) else { return }
                    //: self.updateMikePosition(position: position, model: mikeModel)
                    self.beyondNext(position: position, model: mikeModel)
                }
                //: return
                return
            }

            // 成功后只做逻辑处理，在接收信令处统一刷新UI
            //: switch type {
            switch type {
            //: case 1:
            case 1: // 上麦成功
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                //: let streamID = self.voiceRoom_getStreamID()
                let streamID = self.noneCell()
                //: ZegoExpressEngine.shared().startPublishingStream(streamID)
                ZegoExpressEngine.shared().startPublishingStream(streamID)

            //: case 2:
            case 2: // 下麦成功
                //: ZegoExpressEngine.shared().stopPublishingStream()
                ZegoExpressEngine.shared().stopPublishingStream()

            //: case 3:
            case 3: // 切麦成功
                //: break
                break

            //: case 4:
            case 4: // 开麦成功
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                ZegoExpressEngine.shared().mutePublishStreamAudio(false)

            //: case 5:
            case 5: // 闭麦成功
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(true)
                ZegoExpressEngine.shared().mutePublishStreamAudio(true)

            //: default:
            default:
                //: break
                break
            }
        }
    }

    /// 房主对他人操作请求
    /// - Parameters:
    ///   - uid: 用户Id
    ///   - type: 1 锁麦，2 解锁麦，3 踢下麦，4 开麦，5 闭麦
    ///   - position: 麦位
    //: func voiceRoom_reqAdminChangeMike(uid: Int, type: Int, position: Int) {
    func currentTable(uid: Int, type: Int, position: Int) {
        //: guard isMicReq == false else { return }
        guard isMicReq == false else { return }
        //: isMicReq = true
        isMicReq = true
        //: TalkingVoiceRoomReqTool.req_adminChangeMike(roomId: partyModel.roomId,
        ResurveyReqTool.dose(roomId: partyModel.roomId,
                                     //: uid: uid,
                                     uid: uid,
                                     //: type: type,
                                     type: type,
                                     //: position: position)
                                     position: position)
        //: { _, _, _ in
        { _, _, _ in
            //: self.isMicReq = false
            self.isMicReq = false
        }
    }

    /// 获取推流Id
    //: private func voiceRoom_getStreamID() -> String {
    private func noneCell() -> String {
        //: return "p-\(PunctuateThen.share.loginUid)-\(partyModel.roomId)"
        return "p-\(PunctuateThen.share.loginUid)-\(partyModel.roomId)"
    }
}

// MARK: - 权限检测，开启/进入/切换 语聊房

//: extension TalkingVoiceRoomManager {
extension RangeManager {
    /// 检测状态并进入语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    //: func voiceRoom_checkAndTurnOn(roomId: String? = nil) {
    func giftBy(roomId: String? = nil) {
        //: guard isParty == false else { return }
        guard isParty == false else { return }
        //: guard isEnterRoomReq == false else { return }
        guard isEnterRoomReq == false else { return }
        //: isEnterRoomReq = true
        isEnterRoomReq = true

        // 1. 权限检测
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        CustomPermissionTool.contextBag(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.drawObserver(showMsg: constChangeName)
                //: self.isEnterRoomReq = false
                self.isEnterRoomReq = false
                //: return
                return
            }

            // 2. 接口是否禁播检测
            //: TalkingVoiceRoomReqTool.req_voiceRoomCheck(roomId: roomId) { succeed, result, errorModel in
            ResurveyReqTool.randomCompletion(roomId: roomId) { succeed, result, errorModel in
                //: self.isEnterRoomReq = false
                self.isEnterRoomReq = false
                //: guard succeed else {
                guard succeed else {
                    //: if errorModel?.errorCode == 302 {
                    if errorModel?.errorCode == 302 { // 失败，跳转H5
                        //: if let result = result as? [String: Any] {
                        if let result = result as? [String: Any] {
                            //: RangePushManager.share.func__pushToWebVC(urlStr: result["redirectUrl"] as? String)
                            RangePushManager.share.userBlade(urlStr: result[(String(k_centerMsg) + String(userLabelLabPath))] as? String)
                        }
                        //: } else if errorModel?.errorMsg.count ?? 0 > 0 {
                    } else if errorModel?.errorMsg.count ?? 0 > 0 {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.drawObserver(showMsg: errorModel!.errorMsg)
                    }
                    //: return
                    return
                }

                // 3. 是否正在音视频通话中
                //: guard TalkingSocketManager.shared.workSpace == false else {
                guard WrittenRecordSocketDelegate.shared.workSpace == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.drawObserver(showMsg: mainKeyTransformMsg)
                    //: return
                    return
                }

                // 4. 校验成功，解析模型
                //: guard let model = TalkingVoiceRoomModel.deserialize(from: result as? Dictionary) else {
                guard let model = VoiceMeasurable.deserialize(from: result as? Dictionary) else {
                    //: UploadLogTool.writeLog(msg: "VOICEROOM: 进房模型解析失败。")
                    GestureLogTool.playChangeImage(msg: (String(showImageData) + notiSectionDataTargetMessage.replacingOccurrences(of: "count", with: "O") + String(k_equalUrl)))
                    //: self.func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                    self.drawObserver(showMsg: (String(noti_labClickKey) + String(kViewValue)).localized)
                    //: return
                    return
                }
                //: self.partyModel = model
                self.partyModel = model

                // 5. 创建语聊房UI，同时调用sdk创建房间
                //: self.voiceRoomVC = TalkingVoiceRoomViewController()
                self.voiceRoomVC = VoiceViewController()
                //: self.getNavigationController()?.pushViewController(self.voiceRoomVC!, animated: true)
                self.fileController()?.pushViewController(self.voiceRoomVC!, animated: true)
                //: self.miniView.refreshMiniView()
                self.miniView.untilTo()
                //: self.miniView.isHidden = true
                self.miniView.isHidden = true
                //: self.voiceRoom_create()
                self.videoDataGenerate()
                //: UIApplication.shared.isIdleTimerDisabled = true
                UIApplication.shared.isIdleTimerDisabled = true // 防止息屏
                //: self.isParty = true
                self.isParty = true

                // 6. 埋点
                //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_enter)_\(PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                const_screenFormat.occurrenceIn(eventID: "\(showNetFormat)_\(PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue ? String(bytes: main_addContent.reversed(), encoding: .utf8)! : (main_viewFormat.replacingOccurrences(of: "main", with: "em")))")

                // 7. 初始化弹幕群聊
                //: TalkingDanmuManager.joinLiveRoomDanmu(groupId: self.partyModel.chatGroupId, announcementMsg: self.partyModel.notification) { succeed in
                PhotoDanmuManager.annunciation(groupId: self.partyModel.chatGroupId, announcementMsg: self.partyModel.notification) { succeed in
                    //: if succeed == false {
                    if succeed == false {
                        //: UploadLogTool.writeLog(msg: "VOICEROOM: 群聊进房失败。groupId: \(self.partyModel.chatGroupId).")
                        GestureLogTool.playChangeImage(msg: (String(noti_logValue) + appPathName + String(main_addFormat.suffix(7))) + "\(self.partyModel.chatGroupId).")
                        //: self.func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                        self.drawObserver(showMsg: (String(noti_labClickKey) + String(kViewValue)).localized)
                        //: self.voiceRoom_releaseAllResource()
                        self.proposal()
                    }
                }
            }
        }
    }

    /// 切换语聊房
    /// - Parameters:
    ///   - roomId: 当前进入房间Id
    ///   - beforeRoomId: 上一房间Id
    //: func voiceRoom_switch(roomId: String, beforeRoomId: String) {
    func viewCount(roomId: String, beforeRoomId: String) {
        //: guard isEnterRoomReq == false else { return }
        guard isEnterRoomReq == false else { return }
        //: isEnterRoomReq = true
        isEnterRoomReq = true
        // 1. 调用切房接口
        //: TalkingVoiceRoomReqTool.req_voiceRoomSwitch(roomId: roomId, beforeRoomId: beforeRoomId) { succeed, result, _ in
        ResurveyReqTool.textTo(roomId: roomId, beforeRoomId: beforeRoomId) { succeed, result, _ in
            //: self.isEnterRoomReq = false
            self.isEnterRoomReq = false
            //: guard succeed else { return }
            guard succeed else { return }
            // 2. 释放上个房间资源 (使用partyModel旧值)
            //: self.voiceRoomVC?.releaseAllResourceAndPop()
            self.voiceRoomVC?.feed()

            // 3. 主播切房，需要关闭底部tabbar动效 (使用partyModel旧值)
            //: if String(self.partyModel.streamerInfo.uid) == PunctuateThen.share.loginUid {
            if String(self.partyModel.streamerInfo.uid) == PunctuateThen.share.loginUid {
                //: self.isParty = false
                self.isParty = false
            }

            // 4. 校验成功，解析模型（给partyModel重新赋值）
            //: guard let model = TalkingVoiceRoomModel.deserialize(from: result as? Dictionary) else {
            guard let model = VoiceMeasurable.deserialize(from: result as? Dictionary) else {
                //: UploadLogTool.writeLog(msg: "VOICEROOM: 切房模型解析失败。")
                GestureLogTool.playChangeImage(msg: (app_styleButtonMessage.uppercased() + "ROOM" + String(userAddPath)))
                //: self.func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                self.drawObserver(showMsg: (String(noti_labClickKey) + String(kViewValue)).localized)
                //: return
                return
            }
            //: self.partyModel = model
            self.partyModel = model

            // 5. 创建语聊房UI，同时调用sdk切房
            //: self.voiceRoomVC = TalkingVoiceRoomViewController()
            self.voiceRoomVC = VoiceViewController()
            //: self.getNavigationController()?.pushViewController(self.voiceRoomVC!, animated: true)
            self.fileController()?.pushViewController(self.voiceRoomVC!, animated: true)
            //: self.miniView.refreshMiniView()
            self.miniView.untilTo()
            //: self.miniView.isHidden = true
            self.miniView.isHidden = true
            //: self.voiceRoom_switch(beforeRoomId: beforeRoomId)
            self.actionId(beforeRoomId: beforeRoomId)
            //: self.isParty = true
            self.isParty = true
            //: self.isSmallMode = false
            self.isSmallMode = false

            // 6. 埋点
            //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_enter)_\(PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
            const_screenFormat.occurrenceIn(eventID: "\(showNetFormat)_\(PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue ? String(bytes: main_addContent.reversed(), encoding: .utf8)! : (main_viewFormat.replacingOccurrences(of: "main", with: "em")))")

            // 7. 初始化弹幕群聊
            //: TalkingDanmuManager.joinLiveRoomDanmu(groupId: self.partyModel.chatGroupId, announcementMsg: self.partyModel.notification) { succeed in
            PhotoDanmuManager.annunciation(groupId: self.partyModel.chatGroupId, announcementMsg: self.partyModel.notification) { succeed in
                //: if succeed == false {
                if succeed == false {
                    //: UploadLogTool.writeLog(msg: "VOICEROOM: 群聊切房失败。groupId: \(self.partyModel.chatGroupId).")
                    GestureLogTool.playChangeImage(msg: (noti_viewName.replacingOccurrences(of: "gift", with: "OI") + String(notiColorName.prefix(5)) + "\u{804a}切房失\u{8d25}。" + String(app_showId.prefix(9))) + "\(self.partyModel.chatGroupId).")
                    //: self.func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                    self.drawObserver(showMsg: (String(noti_labClickKey) + String(kViewValue)).localized)
                    //: self.voiceRoom_releaseAllResource()
                    self.proposal()
                }
            }
        }
    }
}

// MARK: - Public Event

//: extension TalkingVoiceRoomManager {
extension RangeManager {
    /// 最小化语聊房
    //: func voiceRoom_mini() {
    func finding() {
        //: isSmallMode = true
        isSmallMode = true
        //: miniView.isHidden = false
        miniView.isHidden = false
        //: voiceRoomVC?.popCurrentViewController()
        voiceRoomVC?.act()
    }

    /// 返回语聊房
    //: func voiceRoom_goback() {
    func giftGoback() {
        //: isSmallMode = false
        isSmallMode = false
        //: miniView.isHidden = true
        miniView.isHidden = true
        //: guard voiceRoomVC != nil else { return }
        guard voiceRoomVC != nil else { return }
        //: guard let currentVC = currentViewController() else { return }
        guard let currentVC = occurrentWith() else { return }
        // 如果顶部视图是私信页，先返回列表，避免多个私信页消息同步问题
        //: if currentVC.isKind(of: TalkingPrivateChatController.self) {
        if currentVC.isKind(of: GiftChatController.self) {
            //: if var vcArr = currentVC.navigationController?.viewControllers {
            if var vcArr = currentVC.navigationController?.viewControllers {
                //: vcArr.removeLast()
                vcArr.removeLast()
                //: vcArr.append(voiceRoomVC!)
                vcArr.append(voiceRoomVC!)
                //: currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                currentVC.navigationController?.setViewControllers(vcArr, animated: true)
            }
            //: } else {
        } else {
            //: currentVC.navigationController?.pushViewController(voiceRoomVC!, animated: true)
            currentVC.navigationController?.pushViewController(voiceRoomVC!, animated: true)
        }
    }

    /// 销毁语聊房所有资源
    //: func voiceRoom_releaseAllResource() {
    func proposal() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.isParty = false
            self.isParty = false // 有通知监听，需置为false
            //: UIApplication.shared.isIdleTimerDisabled = false
            UIApplication.shared.isIdleTimerDisabled = false // 恢复息屏
            //: self.miniView.removeFromSuperview()
            self.miniView.removeFromSuperview() // 移除小窗口
            //: self.voiceRoomVC?.releaseAllResourceAndPop()
            self.voiceRoomVC?.feed() // 将语聊房视图从栈中移除并释放资源
            //: if self.partyModel.position >= 0 {
            if self.partyModel.position >= 0 { // 退房下麦
                //: self.voiceRoom_reqChangeMike(type: 2, position: self.partyModel.position)
                self.red(type: 2, position: self.partyModel.position)
            }
            //: ZegoExpressEngine.shared().logoutRoom()
            ZegoExpressEngine.shared().logoutRoom() // 退出房间
            //: ZegoExpressEngine.destroy(nil)
            ZegoExpressEngine.destroy(nil) // 销毁引擎
            //: TalkingVoiceRoomManager.destroy()
            RangeManager.clickOpen() // 销毁当前单例
        }
    }
}

// MARK: - Private Event

//: extension TalkingVoiceRoomManager {
extension RangeManager {
    /// 创建语聊房
    //: private func voiceRoom_create() {
    private func videoDataGenerate() {
        // 创建引擎
        //: let profile = ZegoEngineProfile()
        let profile = ZegoEngineProfile()
        //: profile.appID = PublisherReactiveCompatible.getVoiceRoomAppId()
        profile.appID = PublisherReactiveCompatible.habitation()
        //: profile.scenario = .standardChatroom
        profile.scenario = .standardChatroom
        //: ZegoExpressEngine.createEngine(with: profile, eventHandler: self)
        ZegoExpressEngine.createEngine(with: profile, eventHandler: self)
        // 进阶配置，进入房间
        //: let config = ZegoRoomConfig()
        let config = ZegoRoomConfig()
        //: config.token = partyModel.token
        config.token = partyModel.token
        //: let user = ZegoUser(userID: PunctuateThen.share.loginUid)
        let user = ZegoUser(userID: PunctuateThen.share.loginUid)
        //: ZegoExpressEngine.shared().loginRoom(partyModel.roomId, user: user, config: config)
        ZegoExpressEngine.shared().loginRoom(partyModel.roomId, user: user, config: config)
    }

    /// 切换语聊房
    /// - Parameter beforeRoomId: 上一房间Id
    //: private func voiceRoom_switch(beforeRoomId: String) {
    private func actionId(beforeRoomId: String) {
        //: let config = ZegoRoomConfig()
        let config = ZegoRoomConfig()
        //: config.token = partyModel.token
        config.token = partyModel.token
        //: ZegoExpressEngine.shared().switchRoom(beforeRoomId, toRoomID: partyModel.roomId, config: config)
        ZegoExpressEngine.shared().switchRoom(beforeRoomId, toRoomID: partyModel.roomId, config: config)
    }
}

// MARK: - ZegoEventHandler

//: extension TalkingVoiceRoomManager: ZegoEventHandler {
extension RangeManager: ZegoEventHandler {
    // MARK: - 进房/切房 监听回调

    /// 进房/切房 回调
    //: func onRoomStateChanged(_ reason: ZegoRoomStateChangedReason, errorCode: Int32, extendedData: [AnyHashable: Any], roomID: String) {
    func onRoomStateChanged(_ reason: ZegoRoomStateChangedReason, errorCode: Int32, extendedData: [AnyHashable: Any], roomID: String) {
        //: guard roomID == partyModel.roomId else { return }
        guard roomID == partyModel.roomId else { return }
        //: if errorCode == 0, reason == .logined {
        if errorCode == 0, reason == .logined { // 进房成功
            // 启动声浪等级监控
            //: ZegoExpressEngine.shared().startSoundLevelMonitor()
            ZegoExpressEngine.shared().startSoundLevelMonitor()
            // 开启音量稳定控制
            //: ZegoExpressEngine.shared().enableAEC(true)
            ZegoExpressEngine.shared().enableAEC(true)
            // 获取嘉宾列表接口
            //: TalkingVoiceRoomReqTool.req_getMikeList(roomId: partyModel.roomId) { list in
            ResurveyReqTool.resumeCompletion(roomId: partyModel.roomId) { list in
                // 保存麦位列表信息
                //: for (key, value) in list.enumerated() {
                for (key, value) in list.enumerated() {
                    //: self.modifyMikePosition(key: key, model: value)
                    self.totalTranslate(key: key, model: value)
                }
                // 刷新麦位列表UI
                //: self.voiceRoomVC?.mikePositionView.refreshAllMikeView()
                self.voiceRoomVC?.mikePositionView.outsideTransaction()
                // 房主首次创建房间，主动上麦
                //: if self.partyModel.userRole == VoiceRoomRole.host.rawValue, self.partyModel.isCreate == true {
                if self.partyModel.userRole == HeritageEquatable.host.rawValue, self.partyModel.isCreate == true {
                    //: self.voiceRoom_reqChangeMike(type: 1, position: 0)
                    self.red(type: 1, position: 0)
                }
            }

            //: } else if reason == .logining || reason == .reconnectFailed || reason == .reconnecting || reason == .reconnected {
        } else if reason == .logining || reason == .reconnectFailed || reason == .reconnecting || reason == .reconnected {
            //: if errorCode == 0, reason == .reconnected {
            if errorCode == 0, reason == .reconnected { // 重连成功
                //: TalkingVoiceRoomReqTool.req_getMikeList(roomId: partyModel.roomId) { list in
                ResurveyReqTool.resumeCompletion(roomId: partyModel.roomId) { list in
                    // 更新麦位列表信息
                    //: for (key, value) in list.enumerated() {
                    for (key, value) in list.enumerated() {
                        //: self.modifyMikePosition(key: key, model: value)
                        self.totalTranslate(key: key, model: value)
                        //: if String(value.uid) == PunctuateThen.share.loginUid {
                        if String(value.uid) == PunctuateThen.share.loginUid {
                            //: if value.mikeStatus == 1 {
                            if value.mikeStatus == 1 { // 房主闭麦
                                //: ZegoExpressEngine.shared().stopPublishingStream()
                                ZegoExpressEngine.shared().stopPublishingStream()
                                //: } else {
                            } else {
                                //: let streamID = self.voiceRoom_getStreamID()
                                let streamID = self.noneCell()
                                //: ZegoExpressEngine.shared().startPublishingStream(streamID)
                                ZegoExpressEngine.shared().startPublishingStream(streamID)
                                //: let isMute = value.mikeStatus == 0 ? true : false
                                let isMute = value.mikeStatus == 0 ? true : false
                                //: ZegoExpressEngine.shared().mutePublishStreamAudio(isMute)
                                ZegoExpressEngine.shared().mutePublishStreamAudio(isMute)
                            }
                        }
                    }
                    // 刷新麦位列表UI
                    //: self.voiceRoomVC?.mikePositionView.refreshAllMikeView()
                    self.voiceRoomVC?.mikePositionView.outsideTransaction()
                }
                //: } else if errorCode != 0 {
            } else if errorCode != 0 {
                // 进房失败埋点
                //: uploadRecord.uploadRecordEvent(eventID: click_partyTab_creParty_fail, parameterStr: ["errCode": String(errorCode)])
                const_screenFormat.infoEqual(eventID: constPartyFormat, parameterStr: [String(bytes: appTimeFormat.map{guardHidden(from: $0)}, encoding: .utf8)!: String(errorCode)])
            }

            //: } else {
        } else { // 进房失败
            //: if errorCode == 1002055 || errorCode == 1002050 {
            if errorCode == 1_002_055 || errorCode == 1_002_050 { // 用户退出 || 被踢出房间
                //: let json = JSON(extendedData)
                let json = JSON(extendedData)
                //: let value = json["custom_kickout_message"].stringValue
                let value = json[(String(k_normalStr) + String(const_pointMsg) + String(showAtText.prefix(4)) + "ssage")].stringValue
                //: if value == "closeRoom" || value == "adminCloseRoom" { // 关闭房间
                if value == (appNameValue.replacingOccurrences(of: "data", with: "c") + String(k_makeFormat)) || value == (String(user_viewText) + String(dataBlackLockName.suffix(3)) + String(kVideoMessage.suffix(6))) { // 关闭房间
                    //: voiceRoom_releaseAllResource()
                    proposal()
                    //: let config = ShowAlertConfig()
                    let config = CurtilageAlertConfig()
                    //: config.alignment = .center
                    config.alignment = .center
                    //: TalkingAlertShow.customAlert(message: "The room is closed, please go to another room".localized, rightBtnTitle: "OK".localized, rightBlock: {
                    SizeReactiveCompatible.buttonEnter(message: String(bytes: mainLabValue.map{$0^150}, encoding: .utf8)!.localized, rightBtnTitle: "OK".localized, rightBlock: {
                        // 跳转到首页tab-party
                        //: NotificationCenter.default.post(name: SWITCH_TABBAR_HOME_PARTY_NOTIFICATION, object: nil, userInfo: nil)
                        NotificationCenter.default.post(name: k_messageMsg, object: nil, userInfo: nil)
                        //: }, config: config)
                    }, config: config)

                    //: } else {
                } else { // 被踢出房间
                    //: func__showStatusBarErrorMsg(showMsg: "You were kicked out of the room".localized)
                    drawObserver(showMsg: String(bytes: k_boxDataTrueUrl.map{videoStyle(share: $0)}, encoding: .utf8)!.localized)
                }

                //: } else {
            } else {
                //: UploadLogTool.writeLog(msg: "VOICEROOM：进房失败，roomID: \(roomID), error: \(errorCode), reason: \(reason), extendedData: \(extendedData).")
                GestureLogTool.playChangeImage(msg: (const_topLabelTitle.replacingOccurrences(of: "view", with: "V") + "EROO" + mainAttributeText + "失败，ro" + String(notiToTitle)) + "\(roomID)" + (String(user_activeFormat) + String(noti_countStr.suffix(4))) + "\(errorCode)" + (String(constBottomKey.suffix(5)) + String(appTableArrayTitle)) + "\(reason)" + (String(notiAppId.prefix(5)) + "endedD" + String(kBackgroundMessage.suffix(5))) + "\(extendedData).")
                //: func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                drawObserver(showMsg: (String(noti_labClickKey) + String(kViewValue)).localized)
                // 进房失败埋点
                //: uploadRecord.uploadRecordEvent(eventID: click_partyTab_creParty_fail, parameterStr: ["errCode": String(errorCode)])
                const_screenFormat.infoEqual(eventID: constPartyFormat, parameterStr: [String(bytes: appTimeFormat.map{guardHidden(from: $0)}, encoding: .utf8)!: String(errorCode)])
            }
            //: voiceRoom_releaseAllResource()
            proposal()
        }
    }

    // MARK: - 推流回调

    /// 当前用户推流状态回调
    //: func onPublisherStateUpdate(_ state: ZegoPublisherState, errorCode: Int32, extendedData: [AnyHashable: Any]?, streamID: String) {
    func onPublisherStateUpdate(_: ZegoPublisherState, errorCode: Int32, extendedData _: [AnyHashable: Any]?, streamID: String) {
        //: guard errorCode == 0 || errorCode == 1003020 || errorCode == 1002055 else {
        guard errorCode == 0 || errorCode == 1_003_020 || errorCode == 1_002_055 else { // 推流失败，用户下麦
            //: UploadLogTool.writeLog(msg: "VOICEROOM: 当前用户推流失败，roomID: \(partyModel.roomId), errorCode: \(errorCode), streamID: \(streamID).")
            GestureLogTool.playChangeImage(msg: (String(const_thoughtId) + String(const_recordUrl.prefix(7))) + "\(partyModel.roomId)" + (String(appActionImageMessage.suffix(5)) + String(showIndexGameLabelUrl) + String(userModelStr)) + "\(errorCode)" + (showKeyUrl.replacingOccurrences(of: "video", with: ",") + String(showEqualDisabledData)) + "\(streamID).")
            //: func__showStatusBarErrorMsg(showMsg: "An error occurred, please try again".localized)
            drawObserver(showMsg: String(bytes: appToName.reversed(), encoding: .utf8)!.localized)
            //: let dict = getAllMikePositions()
            let dict = total()
            //: for (position, model) in dict where String(model.uid) == PunctuateThen.share.loginUid {
            for (position, model) in dict where String(model.uid) == PunctuateThen.share.loginUid {
                //: voiceRoom_reqChangeMike(type: 2, position: position)
                red(type: 2, position: position)
                //: resetMikePosition(position: position, model: model)
                playModel(position: position, model: model)
            }
            //: if errorCode == 1002078 {
            if errorCode == 1_002_078 { // token过期，关闭房间
                //: voiceRoom_releaseAllResource()
                proposal()
            }
            //: return
            return
        }
    }

    // MARK: - 拉流回调

    /// 当前用户拉流状态回调
    //: func onPlayerStateUpdate(_ state: ZegoPlayerState, errorCode: Int32, extendedData: [AnyHashable: Any]?, streamID: String) {
    func onPlayerStateUpdate(_: ZegoPlayerState, errorCode: Int32, extendedData _: [AnyHashable: Any]?, streamID: String) {
        //: guard errorCode == 0 else {
        guard errorCode == 0 else { // 拉流失败
            //: UploadLogTool.writeLog(msg: "VOICEROOM: 拉流失败，roomID: \(partyModel.roomId), errorCode: \(errorCode), streamID: \(streamID).")
            GestureLogTool.playChangeImage(msg: (user_labName.replacingOccurrences(of: "list", with: "O") + "ROOM:" + notiItemFormat + String(kLeadingFormat.suffix(7))) + "\(partyModel.roomId)" + (String(appActionImageMessage.suffix(5)) + String(showIndexGameLabelUrl) + String(userModelStr)) + "\(errorCode)" + (showKeyUrl.replacingOccurrences(of: "video", with: ",") + String(showEqualDisabledData)) + "\(streamID).")
            //: if errorCode == 1002078 {
            if errorCode == 1_002_078 { // token过期，关闭房间
                //: voiceRoom_releaseAllResource()
                proposal()
            }

            //: return
            return
        }
    }

    // MARK: - 流更新回调

    /// 流更新回调
    //: func onRoomStreamUpdate(_ updateType: ZegoUpdateType, streamList: [ZegoStream], extendedData: [AnyHashable: Any]?, roomID: String) {
    func onRoomStreamUpdate(_ updateType: ZegoUpdateType, streamList: [ZegoStream], extendedData _: [AnyHashable: Any]?, roomID: String) {
        //: guard roomID == partyModel.roomId else { return }
        guard roomID == partyModel.roomId else { return }
        //: switch updateType {
        switch updateType {
        //: case .add:
        case .add:
            //: streamList.forEach { zego in
            streamList.forEach { zego in
                // 开始拉流
                //: ZegoExpressEngine.shared().startPlayingStream(zego.streamID)
                ZegoExpressEngine.shared().startPlayingStream(zego.streamID)
            }

        //: case .delete:
        case .delete:
            //: streamList.forEach { zego in
            streamList.forEach { zego in
                // 停止拉流
                //: ZegoExpressEngine.shared().stopPlayingStream(zego.streamID)
                ZegoExpressEngine.shared().stopPlayingStream(zego.streamID)
            }

        //: @unknown default:
        @unknown default:
            //: fatalError()
            fatalError()
        }
    }

    // MARK: - 声浪等级监听回调

    /// 本地声浪等级
    //: func onCapturedSoundLevelUpdate(_ soundLevel: NSNumber) {
    func onCapturedSoundLevelUpdate(_ soundLevel: NSNumber) {
        //: guard Int(truncating: soundLevel) > 0 else { return }
        guard Int(truncating: soundLevel) > 0 else { return }
        //: voiceRoomVC?.mikePositionView.refreshSoundLevelAnimation(position: partyModel.position, level: soundLevel)
        voiceRoomVC?.mikePositionView.bindShowProfundity(position: partyModel.position, level: soundLevel)
    }

    /// 远端声浪等级
    //: func onRemoteSoundLevelUpdate(_ soundLevels: [String: NSNumber]) {
    func onRemoteSoundLevelUpdate(_ soundLevels: [String: NSNumber]) {
        //: let dict = getAllMikePositions()
        let dict = total()
        //: for (streamID, level) in soundLevels {
        for (streamID, level) in soundLevels {
            //: let components = streamID.split(separator: "-").map(String.init)
            let components = streamID.split(separator: "-").map(String.init)
            //: guard components.count > 2 else { continue }
            guard components.count > 2 else { continue }
            //: if let position = dict.first(where: { String($0.value.uid) == components[1] })?.key {
            if let position = dict.first(where: { String($0.value.uid) == components[1] })?.key {
                //: voiceRoomVC?.mikePositionView.refreshSoundLevelAnimation(position: position, level: level)
                voiceRoomVC?.mikePositionView.bindShowProfundity(position: position, level: level)
            }
        }
    }

    // MARK: - 信令

    /// 上麦、下麦、锁麦、解锁麦、切麦操作会收到后端下发信令
    //: func onIMRecvCustomCommand(_ command: String, from fromUser: ZegoUser, roomID: String) {
    func onIMRecvCustomCommand(_ command: String, from _: ZegoUser, roomID: String) {
        //: guard roomID == partyModel.roomId else { return }
        guard roomID == partyModel.roomId else { return }
        //: guard let decodedStr = command.removingPercentEncoding else {
        guard let decodedStr = command.removingPercentEncoding else {
            //: UploadLogTool.writeLog(msg: "VOICEROOM: 信令解析失败，command: \(command), roomID: \(roomID).")
            GestureLogTool.playChangeImage(msg: (userViewFromId.replacingOccurrences(of: "make", with: "OI") + "OOM:" + data_addText + String(mainIconTitle)) + "\(command)" + (String(user_succeedMessage)) + "\(roomID).")
            //: return
            return
        }
        // 更新麦位信息，刷新列表UI
        //: let json = JSON(parseJSON: decodedStr)
        let json = JSON(parseJSON: decodedStr)
        //: let position = json["data"]["position"].intValue
        let position = json[(String(main_equalSuiteFaceMsg))][(showMediumMessage.replacingOccurrences(of: "aspect", with: "po") + data_pathCancelId.replacingOccurrences(of: "frame", with: "n"))].intValue
        //: guard position < MIKE_SEAT_COUNT else { return }
        guard position < main_maxMessage else { return }
        //: guard let mikeModel = TalkingMikeListItemModel.deserialize(from: json["data"].dictionaryObject) else { return }
        guard let mikeModel = WithMeasurable.deserialize(from: json[(String(main_equalSuiteFaceMsg))].dictionaryObject) else { return }
        //: printLog(message: "xxxx-- \(json.rawValue)")
        printLog(message: (String(const_backPath.prefix(7))) + "\(json.rawValue)")
        //: if json["opType"].stringValue == "party:changeMike" { // 房主/观众 麦位操作信令
        if json[(String(showReplacementMessage.prefix(6)))].stringValue == (show_containerId.replacingOccurrences(of: "edge", with: "a") + "y:ch" + constDataFormat.lowercased() + String(appLanguageUrl.prefix(4))) { // 房主/观众 麦位操作信令
            //: let type = json["data"]["type"].intValue
            let type = json[(String(main_equalSuiteFaceMsg))][(main_sharedStr.replacingOccurrences(of: "photo", with: "t"))].intValue
            //: switch type {
            switch type {
            //: case 1:
            case 1: // 上麦
                //: mikeModel.needGift = true
                mikeModel.needGift = true
                //: updateMikePosition(position: position, model: mikeModel)
                beyondNext(position: position, model: mikeModel)

            //: case 2:
            case 2: // 下麦
                //: if let oldModel = getMikePosition(key: position) {
                if let oldModel = sinceKey(key: position) {
                    //: resetMikePosition(position: position, model: oldModel)
                    playModel(position: position, model: oldModel)
                }

            //: case 3:
            case 3: // 切麦
                //: resetMikePosition(position: position, model: mikeModel)
                playModel(position: position, model: mikeModel)
                //: let toPosition = json["data"]["toPosition"].intValue
                let toPosition = json[(String(main_equalSuiteFaceMsg))][(String(app_sizeStr.prefix(7)) + kDragKey.replacingOccurrences(of: "message", with: "io"))].intValue
                //: mikeModel.needGift = true
                mikeModel.needGift = true
                //: updateMikePosition(position: toPosition, model: mikeModel)
                beyondNext(position: toPosition, model: mikeModel)

            //: case 4, 5:
            case 4, 5: // 开麦、闭麦
                //: updateMikePosition(position: position, model: mikeModel)
                beyondNext(position: position, model: mikeModel)

            //: default:
            default:
                //: break
                break
            }
            // 刷新礼物面板头像
            //: if type == 1 || type == 2 || type == 3 {
            if type == 1 || type == 2 || type == 3 {
                //: voiceRoomVC?.bottomView.refreshGiftIcon()
                voiceRoomVC?.bottomView.birdSEyeView()
            }

            //: } else if json["opType"].stringValue == "party:adminChangeMike" { // 房主对他人操作信令
        } else if json[(String(showReplacementMessage.prefix(6)))].stringValue == (k_itemValue.replacingOccurrences(of: "circle", with: "a") + "y:adm" + String(showEventMessage.suffix(5)) + mainLabelName.lowercased() + String(mainIndexValue.suffix(6))) { // 房主对他人操作信令
            //: switch json["data"]["type"].intValue {
            switch json[(String(main_equalSuiteFaceMsg))][(main_sharedStr.replacingOccurrences(of: "photo", with: "t"))].intValue {
            //: case 1, 2:
            case 1, 2: // 锁麦、解锁麦
                //: updateMikePosition(position: position, model: mikeModel)
                beyondNext(position: position, model: mikeModel)

            //: case 3:
            case 3: // 踢下麦
                //: if let oldModel = getMikePosition(key: position) {
                if let oldModel = sinceKey(key: position) {
                    //: resetMikePosition(position: position, model: oldModel)
                    playModel(position: position, model: oldModel)
                    // 刷新礼物面板头像
                    //: voiceRoomVC?.bottomView.refreshGiftIcon()
                    voiceRoomVC?.bottomView.birdSEyeView()
                    //: guard String(oldModel.uid) == PunctuateThen.share.loginUid else { return }
                    guard String(oldModel.uid) == PunctuateThen.share.loginUid else { return }
                    //: ZegoExpressEngine.shared().stopPublishingStream()
                    ZegoExpressEngine.shared().stopPublishingStream()
                    //: func__showStatusBarErrorMsg(showMsg: "You were kicked off the seat".localized)
                    drawObserver(showMsg: (String(notiMomentFirstReturnStr.suffix(4)) + "were" + String(k_oneLabViewValue.suffix(7)) + String(k_theId)).localized)
                }

            //: case 4:
            case 4: // 开麦
                //: updateMikePosition(position: position, model: mikeModel)
                beyondNext(position: position, model: mikeModel)
                //: guard String(mikeModel.uid) == PunctuateThen.share.loginUid else { return }
                guard String(mikeModel.uid) == PunctuateThen.share.loginUid else { return }
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                ZegoExpressEngine.shared().mutePublishStreamAudio(false)

            //: case 5:
            case 5: // 闭麦
                //: updateMikePosition(position: position, model: mikeModel)
                beyondNext(position: position, model: mikeModel)
                //: guard String(mikeModel.uid) == PunctuateThen.share.loginUid else { return }
                guard String(mikeModel.uid) == PunctuateThen.share.loginUid else { return }
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(true)
                ZegoExpressEngine.shared().mutePublishStreamAudio(true)

            //: default:
            default:
                //: break
                break
            }

            //: } else if json["opType"].stringValue == "party:changeCoin" { // 更新用户麦位金币
        } else if json[(String(showReplacementMessage.prefix(6)))].stringValue == (String(k_halfPath)) { // 更新用户麦位金币
            //: TalkingVoiceRoomManager.shared().getAllMikePositions().forEach { position, model in
            RangeManager.universalShared().total().forEach { position, model in
                //: if model.uid == mikeModel.uid {
                if model.uid == mikeModel.uid {
                    //: model.coin = mikeModel.coin
                    model.coin = mikeModel.coin
                    //: updateMikePosition(position: position, model: model)
                    beyondNext(position: position, model: model)
                    //: return
                    return
                }
            }

            //: } else if json["opType"].stringValue == "party:closeStream" { // 推流失败
        } else if json[(String(showReplacementMessage.prefix(6)))].stringValue == (String(app_rangeTitle) + noti_titleData.replacingOccurrences(of: "table", with: "a")) { // 推流失败
            //: ZegoExpressEngine.shared().stopPublishingStream()
            ZegoExpressEngine.shared().stopPublishingStream()
        }
    }
}

// MARK: - 信令处理

//: extension TalkingVoiceRoomManager {
extension RangeManager {
    /// 更新麦位数据，刷新UI
    /// - Parameters:
    ///   - position: 麦位
    ///   - model: 数据
    //: private func updateMikePosition(position: Int, model: TalkingMikeListItemModel) {
    private func beyondNext(position: Int, model: WithMeasurable) {
        //: modifyMikePosition(key: position, model: model)
        totalTranslate(key: position, model: model)
        //: voiceRoomVC?.mikePositionView.refreshSingleMikeView(position: position)
        voiceRoomVC?.mikePositionView.equalPosition(position: position)
        //: updateBottomMicStatusIfCurrentUser(uid: model.uid)
        publicHouse(uid: model.uid)
    }

    /// 重置麦位数据，刷新UI
    /// - Parameters:
    ///   - position: 麦位
    ///   - model: 数据
    //: private func resetMikePosition(position: Int, model: TalkingMikeListItemModel) {
    private func playModel(position: Int, model: WithMeasurable) {
        //: modifyMikePosition(key: position, model: TalkingMikeListItemModel())
        totalTranslate(key: position, model: WithMeasurable())
        //: voiceRoomVC?.mikePositionView.refreshSingleMikeView(position: position)
        voiceRoomVC?.mikePositionView.equalPosition(position: position)
        //: updateBottomMicStatusIfCurrentUser(uid: model.uid)
        publicHouse(uid: model.uid)
    }

    /// 更新本人麦位、底部麦克风状态
    /// - Parameter uid: 用户Id
    //: private func updateBottomMicStatusIfCurrentUser(uid: Int) {
    private func publicHouse(uid: Int) {
        //: guard String(uid) == PunctuateThen.share.loginUid else { return }
        guard String(uid) == PunctuateThen.share.loginUid else { return }
        //: let dict = getAllMikePositions()
        let dict = total()
        //: if let position = dict.first(where: { $0.value.uid == uid })?.key {
        if let position = dict.first(where: { $0.value.uid == uid })?.key {
            //: partyModel.position = position
            partyModel.position = position
            //: } else {
        } else {
            //: partyModel.position = -1
            partyModel.position = -1
        }
        //: voiceRoomVC?.bottomView.refreshBottomMicStatus()
        voiceRoomVC?.bottomView.statusIn()
    }
}

// MARK: - 麦位字典安全操作

//: extension TalkingVoiceRoomManager {
extension RangeManager {
    /// 获取初始化模型
    //: private func initMikePosition() -> [Int: TalkingMikeListItemModel] {
    private func noTalk() -> [Int: WithMeasurable] {
        //: for index in 0 ..< MIKE_SEAT_COUNT {
        for index in 0 ..< main_maxMessage {
            //: modifyMikePosition(key: index, model: TalkingMikeListItemModel())
            totalTranslate(key: index, model: WithMeasurable())
        }
        //: return mikePositionDict
        return mikePositionDict
    }

    /// 添加/修改 麦位
    //: func modifyMikePosition(key: Int, model: TalkingMikeListItemModel) {
    func totalTranslate(key: Int, model: WithMeasurable) {
        //: mplock.lock()
        mplock.lock()
        //: defer { mplock.unlock() }
        defer { mplock.unlock() }
        //: mikePositionDict[key] = model
        mikePositionDict[key] = model
    }

    /// 获取麦位
    //: func getMikePosition(key: Int) -> TalkingMikeListItemModel? {
    func sinceKey(key: Int) -> WithMeasurable? {
        //: mplock.lock()
        mplock.lock()
        //: defer { mplock.unlock() }
        defer { mplock.unlock() }
        //: return mikePositionDict[key]
        return mikePositionDict[key]
    }

    /// 获取所有麦位
    //: func getAllMikePositions() -> [Int: TalkingMikeListItemModel] {
    func total() -> [Int: WithMeasurable] {
        //: mplock.lock()
        mplock.lock()
        //: defer { mplock.unlock() }
        defer { mplock.unlock() }
        //: return mikePositionDict
        return mikePositionDict
    }
}
