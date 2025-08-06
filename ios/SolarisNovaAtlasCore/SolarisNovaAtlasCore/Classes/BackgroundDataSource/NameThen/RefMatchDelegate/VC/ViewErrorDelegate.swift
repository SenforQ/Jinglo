
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_stopMessage:[UInt8] = [0xc6,0xc1,0xc6,0xdb,0x87,0xcc,0xc0,0xcb,0xca,0xdd,0x95,0x86,0x8f,0xc7,0xce,0xdc,0x8f,0xc1,0xc0,0xdb,0x8f,0xcd,0xca,0xca,0xc1,0x8f,0xc6,0xc2,0xdf,0xc3,0xca,0xc2,0xca,0xc1,0xdb,0xca,0xcb]

/*: "uid" :*/
fileprivate let main_sendBottomKey:[UInt8] = [0xb2,0xa6,0xa1]

fileprivate func listTransform(end num: UInt8) -> UInt8 {
    let value = Int(num) + 195
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "headPic" :*/
fileprivate let kNameVideoFormat:String = "color load classheadPic"

/*: "nickname" :*/
fileprivate let constFrameFormat:[Character] = ["n","i","c","k","n","a","m","e"]

/*: "birthday" :*/
fileprivate let user_gestureId:String = "birthkey"
fileprivate let noti_formatTitle:String = "show"

/*: "videoUrl" :*/
fileprivate let appBackgroundValue:[Character] = ["v","i","d","e","o","U","r","l"]

/*: "location" :*/
fileprivate let mainMiniData:[Character] = ["l","o","c","a","t","i","o","n"]

/*: "cmd" :*/
fileprivate let userSizeFormat:[UInt8] = [0x64,0x6d,0x63]

/*: "refuseCall" :*/
fileprivate let showScaleStartIdentityFormat:String = "reftable"

/*: "data" :*/
fileprivate let noti_voiceFormat:[UInt8] = [0xdc,0xd9,0xcc,0xd9]

private func appMode(list num: UInt8) -> UInt8 {
    return num ^ 184
}

/*: "Call interruption" :*/
fileprivate let showCurrentUrl:String = "Callkey me gift info"
fileprivate let constSucceedMessage:String = "eselectionselectionup"

/*: "stopCall" :*/
fileprivate let noti_picStr:String = "continue make extension path returnstopCall"

/*: "logId" :*/
fileprivate let main_clearId:[UInt8] = [0xb0,0xb3,0xab,0x8d,0xa8]

fileprivate func plusIn(drag num: UInt8) -> UInt8 {
    let value = Int(num) - 68
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "cancelCall" :*/
fileprivate let dataMiniStr:String = "bottomanbottom"

/*: "No answer" :*/
fileprivate let const_actionTitle:String = "image click file playerNo answe"
fileprivate let k_contentMessage:[Character] = ["r"]

/*: "duration" :*/
fileprivate let notiMaleValue:[Character] = ["d","u"]
fileprivate let k_locationMsg:String = "ratiolab"

/*: "She has hung up" :*/
fileprivate let showSizeMessage:String = "Shcolor self"
fileprivate let userContentMsg:[Character] = ["e"," ","h","a","s"," ","h","u","n","g"," ","u","p"]

/*: "cancelSex" :*/
fileprivate let dataContactKey:[Character] = ["c","a","n","c","e","l","S","e"]
fileprivate let dataLocationStr:[Character] = ["x"]

/*: "He has hung up" :*/
fileprivate let notiParaStr:String = "false of top appearHe has"
fileprivate let user_valueMessage:String = "label network equal data homeg up"

/*: "endType" :*/
fileprivate let noti_labelExistImageText:[Character] = ["e","n","d","T","y","p"]
fileprivate let show_equalMsg:String = "me"

/*: "stopSex" :*/
fileprivate let kFilterContent:String = "view"
fileprivate let appLabelData:[Character] = ["t","o","p","S","e","x"]

/*: "Insufficient gold coins, call has ended" :*/
fileprivate let mainCellFreshData:[UInt8] = [0xa,0x2f,0x34,0x36,0x27,0x27,0x2a,0x24,0x2a,0x26,0x2f,0x35,0xe1,0x28,0x30,0x2d,0x25,0xe1,0x24,0x30,0x2a,0x2f,0x34,0xed,0xe1,0x24,0x22,0x2d,0x2d,0xe1,0x29,0x22,0x34,0xe1,0x26,0x2f,0x25,0x26,0x25]

fileprivate func touchTitle(top num: UInt8) -> UInt8 {
    let value = Int(num) - 193
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "The other hung up the phone" :*/
fileprivate let appSucceedTargetMsg:String = "The ottext view text var if"
fileprivate let appIntervalValue:String = "hung size area inside player"
fileprivate let appCenterLimitStr:[Character] = ["e"," "]
fileprivate let constBarTitle:[Character] = ["p","h","o","n","e"]

/*: "type" :*/
fileprivate let const_imageValue:[Character] = ["t","y","p","e"]

/*: "jumpUrl" :*/
fileprivate let userRecoverInputTitle:String = "height var sizejumpUr"
fileprivate let user_momentUntilStr:[Character] = ["l"]

/*: "Cancel" :*/
fileprivate let user_pressId:[Character] = ["C"]
fileprivate let const_centerKey:[Character] = ["a","n","c","e","l"]

/*: "Get gold coins" :*/
fileprivate let kViewKey:String = "Get gobject file effect"
fileprivate let user_tableValue:String = "coinsection"

/*: "addBean" :*/
fileprivate let constMakeKey:String = "addBeanext extension"
fileprivate let const_scaleMsg:String = "state"

/*: "refuseSex" :*/
fileprivate let noti_fileFormat:[Character] = ["r","e","f","u","s","e","S","e","x"]

/*: "onAcceptCall" :*/
fileprivate let notiImageContent:[Character] = ["o","n","A","c","c"]
fileprivate let noti_modelData:[Character] = ["e","p","t","C","a","l","l"]

/*: "acceptCall" :*/
fileprivate let notiEraseUrl:String = "adataept"

/*: "Calls are cancelled" :*/
fileprivate let app_giftFormat:[Character] = ["C","a","l","l","s"," ","a"]
fileprivate let data_userTitle:String = "re creturn source block clear"

/*: "The call has ended" :*/
fileprivate let main_listContent:String = "The caif cell"
fileprivate let user_ofMakeMsg:String = "type temp super ins ended"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewErrorDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/11/11.
//

//: import CallKit.CXCallObserver
import CallKit.CXCallObserver
//: import UIKit
import UIKit

// 通话监听(必须为全局属性，否则无法接听)
//: let voiceCallHelper = CXCallObserver()
let data_recordUrl = CXCallObserver()
//: class TalkingVoiceChatViewController: TalkingBaseViewController {
class ViewErrorDelegate: SizeViewController {
    //: var chatModel: TalkingVideoChatModel?
    var chatModel: ExamineRequestChatModel? // 语音通话模型
    //: private var player: TalkingCallBGMPlayer?
    private var player: RangePlayer? // 拨打中背景音乐
    //: private var timeOutTimer: Timer?
    private var timeOutTimer: Timer? // 未接听超时定时器
    //: private var expiredDate = Date()
    private var expiredDate = Date() // 失效时间
    //: private var miniView: TalkingVoiceMiniView?
    private var miniView: ListReactiveCompatible? // 音频通话小窗口

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        // 提前绑定delegate
        //: TalkingSocketManager.shared.callerDelegate = self
        WrittenRecordSocketDelegate.shared.callerDelegate = self
        //: TalkingSocketManager.shared.calledPartyDelegate = self
        WrittenRecordSocketDelegate.shared.calledPartyDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        WrittenRecordSocketDelegate.shared.errorDelegate = self
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_stopMessage.map{$0^175}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: let nav = self.navigationController as! TalkingNavigationController
        let nav = self.navigationController as! DirectionReactiveCompatible
        //: nav.protectedPushVc = nil
        nav.protectedPushVc = nil

        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 设备不会进入休眠状态
        //: self.startBGM()
        self.pastShow()
        //: if self.chatModel?.videoStage == .Recieved {
        if self.chatModel?.videoStage == .Recieved { // 接收方验证权限
            //: checkVoiceAuth()
            vocalization()
        }
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: if self.miniView != nil {
        if self.miniView != nil { // 移除小窗口
            //: self.miniView?.removeFromSuperview()
            self.miniView?.removeFromSuperview()
            //: self.miniView = nil
            self.miniView = nil
            //: TalkingSocketManager.shared.currWorkSpaceVC = nil
            WrittenRecordSocketDelegate.shared.currWorkSpaceVC = nil
        }
        //: interactionView.initCachEffectData()
        interactionView.even()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        limitedTarget()
        //: setupSubViewsConstraint()
        skinnyInSwaddlingClothes()
        //: initNotificationObserver()
        stochasticObserver()
        //: req_callGetUserInfo()
        playingCard()
        //: timeoutRules()
        doingTime()
        //: resumeTalk()
        single()
        //: setUpBGMPlayer()
        bell()
    }

    //: override func loadView() {
    override func loadView() {
        //: if #available(iOS 13.2, *) {
        if #available(iOS 13.2, *) {
            //: if PunctuateThen.share.appConfigMode.disableShootScreen {
            if PunctuateThen.share.appConfigMode.disableShootScreen {
                //: super.loadView()
                super.loadView()
                //: } else {
            } else {
                //: let bgView = MAScreenShieldView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
                let bgView = StartView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle))
                //: self.view = bgView
                self.view = bgView
            }
            //: } else {
        } else {
            //: super.loadView()
            super.loadView()
        }
    }

    //: deinit {
    deinit {
        //: UIApplication.shared.isIdleTimerDisabled = false
        UIApplication.shared.isIdleTimerDisabled = false
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: TalkingSocketManager.shared.workSpace = false
        WrittenRecordSocketDelegate.shared.workSpace = false
        //: self.stopVCAllActivties()
        self.middle()
    }

    // MARK: - Lazy Load

    /// 音频通话操作按钮
    //: private lazy var interactionView: Talking1v1VoiceInteractionView = {
    private lazy var interactionView: IntervaloReactiveCompatible = {
        //: let v = Talking1v1VoiceInteractionView(frame: .zero, chatModel: self.chatModel)
        let v = IntervaloReactiveCompatible(frame: .zero, chatModel: self.chatModel)
        //: v.delegate = self
        v.delegate = self
        //: return v
        return v
        //: }()
    }()

    //: private lazy var voiceManager: TalkingVoiceChatManager = {
    private lazy var voiceManager: ToReactiveCompatible = {
        //: let m = TalkingVoiceChatManager()
        let m = ToReactiveCompatible()
        //: m.handsfreeBtn = self.interactionView.handsfreeBtn
        m.handsfreeBtn = self.interactionView.handsfreeBtn
        //: return m
        return m
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingVoiceChatViewController {
extension ViewErrorDelegate {
    /// 查询接收者信息
    //: func req_callGetUserInfo() {
    func playingCard() {
        //: guard let pairUid = chatModel?.pairUid else { return }
        guard let pairUid = chatModel?.pairUid else { return }
        //: TalkingVideoChatManager.req_callGetUserInfo(uid: pairUid) { [weak self] succeed, result, errorModel in
        SubSizeThen.poking(uid: pairUid) { [weak self] succeed, result, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }
            //: guard let self = self else { return }
            guard let self = self else { return }

            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())

            //: self.chatModel?.pairUid = json["uid"].stringValue
            self.chatModel?.pairUid = json[String(bytes: main_sendBottomKey.map{listTransform(end: $0)}, encoding: .utf8)!].stringValue
            //: self.chatModel?.pairHeadPic = json["headPic"].stringValue
            self.chatModel?.pairHeadPic = json[(String(kNameVideoFormat.suffix(7)))].stringValue
            //: self.chatModel?.pairNickName = json["nickname"].stringValue
            self.chatModel?.pairNickName = json[(String(constFrameFormat))].stringValue
            //: self.chatModel?.pairBirthday = json["birthday"].stringValue
            self.chatModel?.pairBirthday = json[(user_gestureId.replacingOccurrences(of: "key", with: "da") + noti_formatTitle.replacingOccurrences(of: "show", with: "y"))].stringValue
            //: self.chatModel?.videoUrl = json["videoUrl"].stringValue
            self.chatModel?.videoUrl = json[(String(appBackgroundValue))].stringValue
            //: self.chatModel?.location = json["location"].stringValue
            self.chatModel?.location = json[(String(mainMiniData))].stringValue

            // 刷新通话视图
            //: self.interactionView.afterGetInfo()
            self.interactionView.sumerchangeVideo()
        }
    }
}

// MARK: - Event

//: extension TalkingVoiceChatViewController {
extension ViewErrorDelegate {
    /// 权限校验，播放BGM
    //: private func checkVoiceAuth() {
    private func vocalization() {
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        CustomPermissionTool.contextBag(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.drawObserver(showMsg: constChangeName)
                //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "refuseCall", "data": ["uid": self.chatModel?.pairUid]])
                WrittenRecordSocketDelegate.shared.belowAdd(info: [String(bytes: userSizeFormat.reversed(), encoding: .utf8)!: (showScaleStartIdentityFormat.replacingOccurrences(of: "table", with: "u") + "seCall"), String(bytes: noti_voiceFormat.map{appMode(list: $0)}, encoding: .utf8)!: [String(bytes: main_sendBottomKey.map{listTransform(end: $0)}, encoding: .utf8)!: self.chatModel?.pairUid]])
                //: self.popCurrentViewController()
                self.beforeToMagnitudeeraction()
                //: return
                return
            }

            //: self.stopBGM()
            self.socialBgm()
            //: self.player = TalkingCallBGMPlayer.callBGMPlayer(type: .Response)
            self.player = RangePlayer.pathVariation(type: .Response)
            //: self.startBGM()
            self.pastShow()
        }
    }

    /// 释放当前页面所有资源
    //: private func stopVCAllActivties() {
    private func middle() {
        //: if self.timeOutTimer != nil {
        if self.timeOutTimer != nil {
            //: self.timeOutTimer?.invalidate()
            self.timeOutTimer?.invalidate()
            //: self.timeOutTimer = nil
            self.timeOutTimer = nil
        }

        //: self.stopBGM()
        self.socialBgm()
        //: TalkingSocketManager.shared.callerDelegate = nil
        WrittenRecordSocketDelegate.shared.callerDelegate = nil
        //: TalkingSocketManager.shared.calledPartyDelegate = nil
        WrittenRecordSocketDelegate.shared.calledPartyDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        WrittenRecordSocketDelegate.shared.errorDelegate = nil
    }

    // 将当前视图从栈中移除
    //: private func popCurrentViewController(animated: Bool = true) {
    private func beforeToMagnitudeeraction(animated: Bool = true) {
        //: self.stopBGM()
        self.socialBgm()

        //: if self.navigationController?.topViewController == self {
        if self.navigationController?.topViewController == self {
            //: self.navigationController?.popViewController(animated: animated)
            self.navigationController?.popViewController(animated: animated)
            //: } else {
        } else {
            //: if var vcArr = self.navigationController?.viewControllers {
            if var vcArr = self.navigationController?.viewControllers {
                //: if let index = vcArr.firstIndex(of: self) {
                if let index = vcArr.firstIndex(of: self) {
                    //: vcArr.remove(at: index)
                    vcArr.remove(at: index)
                    //: self.navigationController?.setViewControllers(vcArr, animated: false)
                    self.navigationController?.setViewControllers(vcArr, animated: false)
                }
            }
        }
    }

    /// 创建音频通话房间
    //: private func createTalkRoom() {
    private func attach() {
        //: self.voiceManager.createRoomAndStartPublish(roomId: self.chatModel!.logId)
        self.voiceManager.wall(roomId: self.chatModel!.logId)
    }

    /// 通话重连
    //: private func resumeTalk() {
    private func single() {
        //: if self.chatModel?.resumeTalk == true {
        if self.chatModel?.resumeTalk == true {
            //: createTalkRoom()
            attach()
        }
    }
}

// MARK: - 通知

//: extension TalkingVoiceChatViewController {
extension ViewErrorDelegate {
    /// 初始化通知
    //: private func initNotificationObserver() {
    private func stochasticObserver() {
        // 监听 App 从后台切前台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(appWillEnterForeground(notif:)),
                                               selector: #selector(cornerConversation(notif:)),
                                               //: name: UIApplication.willEnterForegroundNotification,
                                               name: UIApplication.willEnterForegroundNotification,
                                               //: object: nil)
                                               object: nil)

        // socket断网重连监听
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(reachabilityChanged(note:)),
                                               selector: #selector(exceptChanged(note:)),
                                               //: name: SOCKET_IS_OPEN_NOTIFICATION,
                                               name: show_skipClickText,
                                               //: object: nil)
                                               object: nil)

        //: voiceCallHelper.setDelegate(self, queue: DispatchQueue.main)
        data_recordUrl.setDelegate(self, queue: DispatchQueue.main)
    }

    /// app进入前台
    //: @objc private func appWillEnterForeground(notif: Notification) {
    @objc private func cornerConversation(notif _: Notification) {
        //: guard self.chatModel?.videoStage != .Calling else { return }
        guard self.chatModel?.videoStage != .Calling else { return }
        //: let date = Date()
        let date = Date()
        //: let interval = date.timeIntervalSince(self.expiredDate)
        let interval = date.timeIntervalSince(self.expiredDate)
        //: if interval >= 0 {
        if interval >= 0 {
            //: popCurrentViewController()
            beforeToMagnitudeeraction()
        }
    }

    /// 断网重连socket
    //: @objc private func reachabilityChanged(note: Notification) {
    @objc private func exceptChanged(note _: Notification) {
        //: guard TalkingSocketManager.shared.needReconnect == true else { return }
        guard WrittenRecordSocketDelegate.shared.needReconnect == true else { return }
        //: TalkingSocketManager.shared.callerDelegate = self
        WrittenRecordSocketDelegate.shared.callerDelegate = self
        //: TalkingSocketManager.shared.calledPartyDelegate = self
        WrittenRecordSocketDelegate.shared.calledPartyDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        WrittenRecordSocketDelegate.shared.errorDelegate = self
        //: self.voiceManager.restartTalkWhenDisconnectedAndNetAvailable(roomId: self.chatModel?.logId ?? 0)
        self.voiceManager.noDrunkChange(roomId: self.chatModel?.logId ?? 0)
    }
}

// MARK: - CXCallObserverDelegate【通话监听】

//: extension TalkingVoiceChatViewController: CXCallObserverDelegate {
extension ViewErrorDelegate: CXCallObserverDelegate {
    //: func callObserver(_ callObserver: CXCallObserver, callChanged call: CXCall) {
    func callObserver(_: CXCallObserver, callChanged call: CXCall) {
        //: if call.hasConnected == true {
        if call.hasConnected == true { // 通话中
            //: self.func__showStatusBarErrorMsg(showMsg: "Call interruption".localized)
            self.drawObserver(showMsg: (String(showCurrentUrl.prefix(4)) + " int" + constSucceedMessage.replacingOccurrences(of: "selection", with: "r") + "tion").localized)
            //: switch(self.chatModel?.videoStage) {
            switch self.chatModel?.videoStage {
            //: case .Calling:
            case .Calling:
                //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "stopCall", "data": ["logId": self.chatModel?.logId]])
                WrittenRecordSocketDelegate.shared.belowAdd(info: [String(bytes: userSizeFormat.reversed(), encoding: .utf8)!: (String(noti_picStr.suffix(8))), String(bytes: noti_voiceFormat.map{appMode(list: $0)}, encoding: .utf8)!: [String(bytes: main_clearId.map{plusIn(drag: $0)}, encoding: .utf8)!: self.chatModel?.logId]])
            //: case .Waiting:
            case .Waiting:
                //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "cancelCall", "data": ["logId": self.chatModel?.logId]])
                WrittenRecordSocketDelegate.shared.belowAdd(info: [String(bytes: userSizeFormat.reversed(), encoding: .utf8)!: (dataMiniStr.replacingOccurrences(of: "bottom", with: "c") + "elCall"), String(bytes: noti_voiceFormat.map{appMode(list: $0)}, encoding: .utf8)!: [String(bytes: main_clearId.map{plusIn(drag: $0)}, encoding: .utf8)!: self.chatModel?.logId]])
            //: case .Recieved:
            case .Recieved:
                //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "refuseCall", "data": ["uid": self.chatModel?.pairUid]])
                WrittenRecordSocketDelegate.shared.belowAdd(info: [String(bytes: userSizeFormat.reversed(), encoding: .utf8)!: (showScaleStartIdentityFormat.replacingOccurrences(of: "table", with: "u") + "seCall"), String(bytes: noti_voiceFormat.map{appMode(list: $0)}, encoding: .utf8)!: [String(bytes: main_sendBottomKey.map{listTransform(end: $0)}, encoding: .utf8)!: self.chatModel?.pairUid]])
            //: case .none:
            case .none:
                //: break
                break
            }

            //: if miniView != nil {
            if miniView != nil {
                //: self.miniView?.dismissWhenCallEnd()
                self.miniView?.birth()
                //: TalkingSocketManager.shared.currWorkSpaceVC = nil
                WrittenRecordSocketDelegate.shared.currWorkSpaceVC = nil
            }
            //: popCurrentViewController()
            beforeToMagnitudeeraction()

            //: } else if call.hasEnded == true || call.isOnHold == true {
        } else if call.hasEnded == true || call.isOnHold == true { // 电话挂断 || 无人接听挂断
            //: self.voiceManager.enableAudioModule(enable: true)
            self.voiceManager.mortalText(enable: true)
        }
    }
}

// MARK: - 通话音乐

//: extension TalkingVoiceChatViewController {
extension ViewErrorDelegate {
    /// 初始化音频通话背景音乐
    //: private func setUpBGMPlayer() {
    private func bell() {
        //: guard self.chatModel?.videoStage != .Calling else { return }
        guard self.chatModel?.videoStage != .Calling else { return }

        //: let type = self.chatModel!.isCaller == true ? CallBGMPlayerType.Call : CallBGMPlayerType.Response
        let type = self.chatModel!.isCaller == true ? EqualStrideable.Call : EqualStrideable.Response
        //: self.player = TalkingCallBGMPlayer.callBGMPlayer(type: type)
        self.player = RangePlayer.pathVariation(type: type)
    }

    /// 开始播放背景音乐
    //: private func startBGM() {
    private func pastShow() {
        //: guard self.chatModel?.videoStage != .Calling else { return }
        guard self.chatModel?.videoStage != .Calling else { return }
        //: guard self.chatModel?.resumeTalk != true else { return }
        guard self.chatModel?.resumeTalk != true else { return }

        //: self.player?.play()
        self.player?.modelPlay()
    }

    /// 停止播放背景音乐
    //: private func stopBGM() {
    private func socialBgm() {
        //: guard self.player != nil else { return }
        guard self.player != nil else { return }
        //: self.player?.stop()
        self.player?.noView()
        //: self.player = nil
        self.player = nil
    }
}

// MARK: - 定时器

//: extension TalkingVoiceChatViewController {
extension ViewErrorDelegate {
    /// 超时定时器
    //: private func timeoutRules() {
    private func doingTime() {
        //: guard self.chatModel?.videoStage != .Calling else { return }
        guard self.chatModel?.videoStage != .Calling else { return }

        //: let timeout = self.chatModel?.isCaller == true ? VIDEO_1v1_CALL_TIMEOUT : self.chatModel?.remainAnswerCallTime()
        let timeout = self.chatModel?.isCaller == true ? constAskErrorId : self.chatModel?.afterView()
        //: if timeout! <= 0 {
        if timeout! <= 0 {
            //: buildTalkTimeOutAction()
            takingAction()
        }
        //: self.timeOutTimer = Timer.scheduledTimer(withTimeInterval: timeout!, block: { [weak self] timer in
        self.timeOutTimer = Timer.scheduledTimer(withTimeInterval: timeout!, block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.buildTalkTimeOutAction()
            self.takingAction()
            //: }, repeats: false)
        }, repeats: false)

        //: self.expiredDate = Date().addingTimeInterval(60)
        self.expiredDate = Date().addingTimeInterval(60)
    }

    /// 倒计时超时逻辑处理
    //: private func buildTalkTimeOutAction() {
    private func takingAction() {
        //: guard !TalkingSocketManager.shared.workSpace else { return }
        guard !WrittenRecordSocketDelegate.shared.workSpace else { return }

        //: var socketDict: [String: Any]
        var socketDict: [String: Any]
        //: if self.chatModel?.isCaller == true {
        if self.chatModel?.isCaller == true { // 拨打方
            //: self.func__showStatusBarErrorMsg(showMsg: "No answer".localized)
            self.drawObserver(showMsg: (String(const_actionTitle.suffix(8)) + String(k_contentMessage)).localized)
            //: socketDict = ["cmd": "cancelCall", "data": ["logId": self.chatModel?.logId]]
            socketDict = [String(bytes: userSizeFormat.reversed(), encoding: .utf8)!: (dataMiniStr.replacingOccurrences(of: "bottom", with: "c") + "elCall"), String(bytes: noti_voiceFormat.map{appMode(list: $0)}, encoding: .utf8)!: [String(bytes: main_clearId.map{plusIn(drag: $0)}, encoding: .utf8)!: self.chatModel?.logId]]
            //: } else {
        } else { // 接收方
            //: socketDict = ["cmd": "refuseCall", "data": ["uid": self.chatModel?.pairUid]]
            socketDict = [String(bytes: userSizeFormat.reversed(), encoding: .utf8)!: (showScaleStartIdentityFormat.replacingOccurrences(of: "table", with: "u") + "seCall"), String(bytes: noti_voiceFormat.map{appMode(list: $0)}, encoding: .utf8)!: [String(bytes: main_sendBottomKey.map{listTransform(end: $0)}, encoding: .utf8)!: self.chatModel?.pairUid]]
        }
        //: TalkingSocketManager.shared.sendMessage(info: socketDict)
        WrittenRecordSocketDelegate.shared.belowAdd(info: socketDict)
        //: popCurrentViewController()
        beforeToMagnitudeeraction()
    }
}

// MARK: - resume talk【恢复通话】

//: extension TalkingVoiceChatViewController {
extension ViewErrorDelegate {
    /// 恢复音频通话，更新chatModel
    /// - Parameter resumeData: 数据
    //: func updateInfoViaResumeTalkData(resumeData: [String: Any]) {
    func reStartData(resumeData: [String: Any]) {
        //: let json = JSON(resumeData)
        let json = JSON(resumeData)
        //: let logId = json["logId"].intValue
        let logId = json[String(bytes: main_clearId.map{plusIn(drag: $0)}, encoding: .utf8)!].intValue
        //: let duration = json["duration"].intValue
        let duration = json[(String(notiMaleValue) + k_locationMsg.replacingOccurrences(of: "lab", with: "n"))].intValue
        //: let interval = Date().timeIntervalSince1970
        let interval = Date().timeIntervalSince1970
        //: let startTalkTime = floor(interval) - Double(duration)
        let startTalkTime = floor(interval) - Double(duration)
        //: self.chatModel?.startTime = startTalkTime
        self.chatModel?.startTime = startTalkTime
        //: self.interactionView.updateStartTime(startTime: startTalkTime)
        self.interactionView.progressTime(startTime: startTalkTime)

        //: if self.chatModel?.videoStage != .Calling {
        if self.chatModel?.videoStage != .Calling {
            //: self.chatModel?.logId = logId
            self.chatModel?.logId = logId
            //: self.chatModel?.videoStage = .Calling
            self.chatModel?.videoStage = .Calling
            //: self.interactionView.showViewsViaStage()
            self.interactionView.representation()
            //: createTalkRoom()
            attach()
            //: self.stopBGM()
            self.socialBgm()
        }
    }
}

// MARK: - PurveyorCallerDelegate【拨打方】

//: extension TalkingVoiceChatViewController: SocketManagerVideoChatCallerDelegate {
extension ViewErrorDelegate: PurveyorCallerDelegate {
    /// 拨打方拒绝了通话，接收方收到该指令（未通话）
    //: func socket_videoChat_cancelCall(data: [String: Any]) {
    func scrubCheck(data: [String: Any]) {
        //: if self.miniView == nil {
        if self.miniView == nil {
            //: let json = JSON(data)
            let json = JSON(data)
            //: var typeStr = "She has hung up".localized
            var typeStr = (String(showSizeMessage.prefix(2)) + String(userContentMsg)).localized
            //: if json["cancelSex"].stringValue == Gender.male.rawValue {
            if json[(String(dataContactKey) + String(dataLocationStr))].stringValue == TopComparable.male.rawValue {
                //: typeStr = "He has hung up".localized
                typeStr = (String(notiParaStr.suffix(6)) + " hun" + String(user_valueMessage.suffix(4))).localized
            }
            //: self.func__showStatusBarErrorMsg(showMsg: typeStr)
            self.drawObserver(showMsg: typeStr)
            //: } else {
        } else {
            //: self.miniView?.dismissWhenCallEnd()
            self.miniView?.birth()
            //: TalkingSocketManager.shared.currWorkSpaceVC = nil
            WrittenRecordSocketDelegate.shared.currWorkSpaceVC = nil
        }

        //: popCurrentViewController()
        beforeToMagnitudeeraction()
    }

    /// 对方接受了来电，建立音频通话
    //: func socket_videoChat_acceptCall(data: [String: Any]) {
    func guide(data: [String: Any]) {
        //: let json = JSON(data)
        let json = JSON(data)

        //: self.chatModel?.logId = json["logId"].intValue
        self.chatModel?.logId = json[String(bytes: main_clearId.map{plusIn(drag: $0)}, encoding: .utf8)!].intValue
        //: self.chatModel?.videoStage = .Calling
        self.chatModel?.videoStage = .Calling
        //: self.chatModel?.renderPostion = .SelfOnWindow
        self.chatModel?.renderPostion = .SelfOnWindow

        //: self.stopBGM()
        self.socialBgm()
        //: self.interactionView.showViewsViaStage()
        self.interactionView.representation()
        //: self.createTalkRoom()
        self.attach()
    }

    /// 对方结束了通话（通话中）
    //: func socket_videoChat_stopCall(data: [String: Any]) {
    func behindOmit(data: [String: Any]) {
        //: let json = JSON(data)
        let json = JSON(data)

        //: let endType = json["endType"].intValue
        let endType = json[(String(noti_labelExistImageText) + show_equalMsg.replacingOccurrences(of: "me", with: "e"))].intValue
        //: var typeStr = "She has hung up".localized
        var typeStr = (String(showSizeMessage.prefix(2)) + String(userContentMsg)).localized
        //: if json["stopSex"].stringValue == Gender.male.rawValue {
        if json[(kFilterContent.replacingOccurrences(of: "view", with: "s") + String(appLabelData))].stringValue == TopComparable.male.rawValue {
            //: typeStr = "He has hung up".localized
            typeStr = (String(notiParaStr.suffix(6)) + " hun" + String(user_valueMessage.suffix(4))).localized
        }

        //: if endType == 1 {
        if endType == 1 { // 付费方余额不足
            //: if PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue {
            if PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue {
                //: typeStr = "Insufficient gold coins, call has ended".localized
                typeStr = String(bytes: mainCellFreshData.map{touchTitle(top: $0)}, encoding: .utf8)!.localized
                //: } else {
            } else {
                //: typeStr = "The other hung up the phone".localized
                typeStr = (String(appSucceedTargetMsg.prefix(6)) + "her " + String(appIntervalValue.prefix(5)) + "up th" + String(appCenterLimitStr) + String(constBarTitle)).localized
            }
        }
        //: if self.miniView == nil {
        if self.miniView == nil {
            //: self.func__showStatusBarErrorMsg(showMsg: typeStr)
            self.drawObserver(showMsg: typeStr)
            //: } else {
        } else {
            //: self.miniView?.dismissWhenCallEnd()
            self.miniView?.birth()
            //: TalkingSocketManager.shared.currWorkSpaceVC = nil
            WrittenRecordSocketDelegate.shared.currWorkSpaceVC = nil
        }

        //: self.interactionView.func_giftViewDismiss()
        self.interactionView.coloring()
        //: self.popCurrentViewController()
        self.beforeToMagnitudeeraction()
        //: NotificationCenter.default.post(name: VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: k_bottomImageId, object: nil)
    }

    /// 余额不足提醒
    //: func socket_videoChat_onMissCoin(msg: String, data: [String: Any]) {
    func showAggregationData(msg: String, data: [String: Any]) {
        //: guard PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
        guard PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue else { return }

        //: let index = data["type"] as? String ?? ""
        let index = data[(String(const_imageValue))] as? String ?? ""
        //: if index == "2" {
        if index == "2" {
            //: guard let jumpUrl = data["jumpUrl"] as? String  else { return }
            guard let jumpUrl = data[(String(userRecoverInputTitle.suffix(6)) + String(user_momentUntilStr))] as? String else { return }
            //: let httpsUrl = PunctuateThen.share.appConfigMode.urlH5Domain+jumpUrl
            let httpsUrl = PunctuateThen.share.appConfigMode.urlH5Domain + jumpUrl
            //: var config = TalkingWebConfig.init()
            var config = SearchConfig()
            //: config.isDiscountsView = true
            config.isDiscountsView = true
            //: RangePushManager.share.func__pushToWebVC(urlStr: httpsUrl, webConfig: config)
            RangePushManager.share.userBlade(urlStr: httpsUrl, webConfig: config)
            //: } else {
        } else {
            //: TalkingAlertShow.alert(title: nil,
            SizeReactiveCompatible.exceptHeader(title: nil,
                                          //: message: msg,
                                          message: msg,
                                          //: leftBtnTitle: "Cancel".localized,
                                          leftBtnTitle: (String(user_pressId) + String(const_centerKey)).localized,
                                          //: rightBtnTitle: "Get gold coins".localized) {
                                          rightBtnTitle: (String(kViewKey.prefix(5)) + "old " + user_tableValue.replacingOccurrences(of: "section", with: "s")).localized)
            {
                //: TalkingAlertShow.hideAlert()
                SizeReactiveCompatible.obstruct()
                //: } rightBlock: {
            } rightBlock: {
                //: RangePushManager.share.func__jumpToWebRecharge(clickEvent: clickLess1minButton, sufficient: false)
                RangePushManager.share.picParams(clickEvent: main_statusName, sufficient: false)
            }
        }
    }

    /// 女性通话积分激励动效展示
    //: func socket_videoChat_onCallMotivation(data: [String: Any]) {
    func assetEqual(data: [String: Any]) {
        //: let json = JSON(data)
        let json = JSON(data)
        //: let addBean = json["addBean"].stringValue
        let addBean = json[(String(constMakeKey.prefix(6)) + const_scaleMsg.replacingOccurrences(of: "state", with: "n"))].stringValue
        //: if self.miniView == nil {
        if self.miniView == nil {
            //: interactionView.showPointAnimaData(point: addBean)
            interactionView.toConstituent(point: addBean)
            //: } else {
        } else {
            //: self.miniView?.showPointAnimaData(point: addBean)
            self.miniView?.showPopAttractor(point: addBean)
        }
    }
}

// MARK: - DataRequestObjectProtocol【接收方】

//: extension TalkingVoiceChatViewController: SocketManagerVideoChatCalledPartyDelegate {
extension ViewErrorDelegate: DataRequestObjectProtocol {
    /// 接收方拒绝了通话，拨打方收到该指令（未通话）
    /// - Parameter data: 数据
    //: func socket_videoChat_refuseCall(data: [String: Any]) {
    func primaryColour(data: [String: Any]) {
        //: if self.miniView == nil {
        if self.miniView == nil {
            //: let json = JSON(data)
            let json = JSON(data)
            //: var typeStr = "She has hung up".localized
            var typeStr = (String(showSizeMessage.prefix(2)) + String(userContentMsg)).localized
            //: if json["refuseSex"].stringValue == Gender.male.rawValue {
            if json[(String(noti_fileFormat))].stringValue == TopComparable.male.rawValue {
                //: typeStr = "He has hung up".localized
                typeStr = (String(notiParaStr.suffix(6)) + " hun" + String(user_valueMessage.suffix(4))).localized
            }
            //: self.func__showStatusBarErrorMsg(showMsg: typeStr)
            self.drawObserver(showMsg: typeStr)
            //: } else {
        } else {
            //: self.miniView?.dismissWhenCallEnd()
            self.miniView?.birth()
            //: TalkingSocketManager.shared.currWorkSpaceVC = nil
            WrittenRecordSocketDelegate.shared.currWorkSpaceVC = nil
        }
        //: popCurrentViewController()
        beforeToMagnitudeeraction()
    }

    /// 接收方接受了通话，改变状态为通话中，acceptCall回执
    //: func socket_videoChat_onAcceptCall(data: [String: Any]) {
    func groupPic(data: [String: Any]) {
        //: let json = JSON(data)
        let json = JSON(data)
        //: self.chatModel?.logId = json["logId"].intValue
        self.chatModel?.logId = json[String(bytes: main_clearId.map{plusIn(drag: $0)}, encoding: .utf8)!].intValue
        //: self.chatModel?.videoStage = .Calling
        self.chatModel?.videoStage = .Calling
        //: self.chatModel?.renderPostion = .SelfOnWindow
        self.chatModel?.renderPostion = .SelfOnWindow
        //: self.stopBGM()
        self.socialBgm()
        //: self.interactionView.showViewsViaStage()
        self.interactionView.representation()
        //: self.createTalkRoom()
        self.attach()
    }
}

// MARK: - SendToErrorDelegate【异常处理】

//: extension TalkingVoiceChatViewController: TalkingSocketManagerErrorDelegate {
extension ViewErrorDelegate: SendToErrorDelegate {
    // 处理error情况
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func nameUseData(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "refuseCall" { // 对方拒绝了通话
        if cmd == (showScaleStartIdentityFormat.replacingOccurrences(of: "table", with: "u") + "seCall") { // 对方拒绝了通话
            //: if self.miniView == nil {
            if self.miniView == nil {
                //: self.func__showStatusBarErrorMsg(showMsg: "No answer".localized)
                self.drawObserver(showMsg: (String(const_actionTitle.suffix(8)) + String(k_contentMessage)).localized)
                //: } else {
            } else {
                //: self.miniView?.dismissWhenCallEnd()
                self.miniView?.birth()
                //: TalkingSocketManager.shared.currWorkSpaceVC = nil
                WrittenRecordSocketDelegate.shared.currWorkSpaceVC = nil
            }
            //: self.popCurrentViewController()
            self.beforeToMagnitudeeraction()

            //: } else if cmd == "onAcceptCall" && errorNo == 101 { // 接听通话时，余额不足
        } else if cmd == (String(notiImageContent) + String(noti_modelData)) && errorNo == 101 { // 接听通话时，余额不足
            //: guard PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
            guard PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue else { return }
            //: RangePushManager.share.func__jumpToWebRecharge(sufficient: false)
            RangePushManager.share.picParams(sufficient: false)

            //: } else if cmd == "onAcceptCall" && errorNo == 102 { // 对方已取消通话
        } else if cmd == (String(notiImageContent) + String(noti_modelData)) && errorNo == 102 { // 对方已取消通话
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.drawObserver(showMsg: msg)
            //: self.popCurrentViewController()
            self.beforeToMagnitudeeraction()
        }
    }
}

// MARK: - LoadTitleObjectProtocol【通话按钮操作事件】

//: extension TalkingVoiceChatViewController: Talking1v1VoiceInteractionViewDelegate {
extension ViewErrorDelegate: LoadTitleObjectProtocol {
    /// 接听音频通话
    //: func interactionView_shouldAcceptCall() {
    func expositionLine() {
        //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "acceptCall", "data": ["uid": self.chatModel?.pairUid]])
        WrittenRecordSocketDelegate.shared.belowAdd(info: [String(bytes: userSizeFormat.reversed(), encoding: .utf8)!: (notiEraseUrl.replacingOccurrences(of: "data", with: "cc") + "Call"), String(bytes: noti_voiceFormat.map{appMode(list: $0)}, encoding: .utf8)!: [String(bytes: main_sendBottomKey.map{listTransform(end: $0)}, encoding: .utf8)!: self.chatModel?.pairUid]])
    }

    /// 拨打方结束通话
    //: func interactionView_shouldEndCall() {
    func sumerchange() {
        //: if self.chatModel?.videoStage == .Waiting {
        if self.chatModel?.videoStage == .Waiting { // 拨打方取消【未通话】
            //: self.func__showStatusBarErrorMsg(showMsg: "Calls are cancelled".localized)
            self.drawObserver(showMsg: (String(app_giftFormat) + String(data_userTitle.prefix(4)) + "ancelled").localized)
            //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "cancelCall", "data": ["logId": self.chatModel?.logId]])
            WrittenRecordSocketDelegate.shared.belowAdd(info: [String(bytes: userSizeFormat.reversed(), encoding: .utf8)!: (dataMiniStr.replacingOccurrences(of: "bottom", with: "c") + "elCall"), String(bytes: noti_voiceFormat.map{appMode(list: $0)}, encoding: .utf8)!: [String(bytes: main_clearId.map{plusIn(drag: $0)}, encoding: .utf8)!: self.chatModel?.logId]])
            //: } else if self.chatModel?.videoStage == .Recieved {
        } else if self.chatModel?.videoStage == .Recieved { // 接收方取消【未通话】
            //: self.func__showStatusBarErrorMsg(showMsg: "Calls are cancelled".localized)
            self.drawObserver(showMsg: (String(app_giftFormat) + String(data_userTitle.prefix(4)) + "ancelled").localized)
            //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "refuseCall", "data": ["uid": self.chatModel?.pairUid]])
            WrittenRecordSocketDelegate.shared.belowAdd(info: [String(bytes: userSizeFormat.reversed(), encoding: .utf8)!: (showScaleStartIdentityFormat.replacingOccurrences(of: "table", with: "u") + "seCall"), String(bytes: noti_voiceFormat.map{appMode(list: $0)}, encoding: .utf8)!: [String(bytes: main_sendBottomKey.map{listTransform(end: $0)}, encoding: .utf8)!: self.chatModel?.pairUid]])
            //: } else {
        } else { // 【通话中】
            //: self.func__showStatusBarErrorMsg(showMsg: "The call has ended".localized)
            self.drawObserver(showMsg: (String(main_listContent.prefix(6)) + "ll ha" + String(user_ofMakeMsg.suffix(7))).localized)
            //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "stopCall", "data": ["logId": self.chatModel?.logId]])
            WrittenRecordSocketDelegate.shared.belowAdd(info: [String(bytes: userSizeFormat.reversed(), encoding: .utf8)!: (String(noti_picStr.suffix(8))), String(bytes: noti_voiceFormat.map{appMode(list: $0)}, encoding: .utf8)!: [String(bytes: main_clearId.map{plusIn(drag: $0)}, encoding: .utf8)!: self.chatModel?.logId]])
        }

        //: self.interactionView.func_giftViewDismiss()
        self.interactionView.coloring()
        //: self.popCurrentViewController()
        self.beforeToMagnitudeeraction()
    }

    /// 是否静音
    //: func interactionView_shouldChangeMute(isMute: Bool) {
    func demonstrate(isMute: Bool) {
        //: self.voiceManager.setMute(isMute: isMute)
        self.voiceManager.put(isMute: isMute)
    }

    /// 是否免提
    //: func interactionView_shouldChangeSpeaker(isHandsfree: Bool) {
    func customerHandsfree(isHandsfree: Bool) {
        //: self.voiceManager.setHandsfree(isHandsfree: isHandsfree)
        self.voiceManager.asSuiteHandsfree(isHandsfree: isHandsfree)
    }

    /// 展示语音通话小窗口
    //: func interactionView_shouldDisplayMiniWindow() {
    func voiceData() {
        //: TalkingSocketManager.shared.currWorkSpaceVC = self
        WrittenRecordSocketDelegate.shared.currWorkSpaceVC = self
        //: self.miniView = TalkingVoiceMiniView.buildVoiceMiniView()
        self.miniView = ListReactiveCompatible.forepart()
        //: self.miniView?.tapGestureBlock = { [weak self] in
        self.miniView?.tapGestureBlock = { [weak self] in // 还原回通话界面
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.currentViewController()?.navigationController?.pushViewController(self, animated: true)
            self.occurrentWith()?.navigationController?.pushViewController(self, animated: true)
        }
        //: let talkingTime = self.interactionView.getCurrentTalkingTime()
        let talkingTime = self.interactionView.inputSizeTime()
        //: self.miniView?.updateTalkingTime(talkingTime)
        self.miniView?.pauseBar(talkingTime)
        //: popCurrentViewController()
        beforeToMagnitudeeraction()
    }

    /// 更新小窗口通话时间
    //: func interactionView_shouldUpdateTime(time: Double) {
    func constraintTime(time: Double) {
        //: guard self.miniView != nil else { return }
        guard self.miniView != nil else { return }
        //: self.miniView?.updateTalkingTime(time)
        self.miniView?.pauseBar(time)
    }

    /// 收到礼物消息展示
    //: @objc func receiveGiftPlay(giftArr: Array<Any>) {
    @objc func equalArr(giftArr: [Any]) {
        //: interactionView.addGiftEffectModelArr(giftArr: giftArr)
        interactionView.streamData(giftArr: giftArr)
    }
}

// MARK: - Layout

//: extension TalkingVoiceChatViewController {
extension ViewErrorDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func limitedTarget() {
        //: self.view.addSubview(interactionView)
        self.view.addSubview(interactionView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func skinnyInSwaddlingClothes() {
        //: interactionView.snp.makeConstraints { make in
        interactionView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
