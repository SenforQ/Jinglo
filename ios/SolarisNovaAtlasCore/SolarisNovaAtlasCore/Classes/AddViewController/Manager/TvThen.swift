
//: Declare String Begin

/*: "0,0" :*/
fileprivate let show_countMakeKey:String = "0,0"

/*: "dist/loungePlus" :*/
fileprivate let show_systemMsg:String = "dpatht"
fileprivate let show_normalTextLabFormat:[Character] = ["g","e","P","l","u","s"]

/*: "mf/freeCall/getVideoInfo" :*/
fileprivate let appSucceedMessage:String = "mf/frshared equal in model"
fileprivate let user_mIndexTitle:String = "var add head selfll/ge"
fileprivate let userDataName:[Character] = ["e","o","I","n","f","o"]

/*: "fromType" :*/
fileprivate let show_equalSizeId:[UInt8] = [0x65,0x70,0x79,0x54,0x6d,0x6f,0x72,0x66]

/*: "videoId" :*/
fileprivate let k_shareGiftViewMsg:String = "self layer labvideoI"
fileprivate let main_languageCenterLetId:String = "raw"

/*: "uid" :*/
fileprivate let mainAppCornerText:[Character] = ["u","i","d"]

/*: "type" :*/
fileprivate let k_nameFormat:[Character] = ["t","y","p","e"]

/*: "logId" :*/
fileprivate let mainListText:String = "video array gamelogId"

/*: "duration" :*/
fileprivate let dataTableSpecialKey:[Character] = ["d","u","r","a","t","i","o","n"]

/*: "stopUid" :*/
fileprivate let userObserverData:String = "thought make super connect socialstopUid"

/*: "mf/freeCall/operation" :*/
fileprivate let user_dataValue:[Character] = ["m","f","/"]
fileprivate let notiMessageTouchHeightFormat:[Character] = ["f","r","e","e","C","a","l","l","/","o","p","e","r","a","t","i","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TvThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

/// 主动拨打视频弹窗管理
//: class TalkingVideoInitivCallManager: NSObject {
class TvThen: NSObject {
    //: private var videoCallTimer: Timer?
    private var videoCallTimer: Timer? /// timer
    //: var videoCallModel = TalkingVideoInitivCallModel.init()
    var videoCallModel = CustomHandyJSON()
    //: private var countDown = 0
    private var countDown = 0 /// x秒后显示主动拨打弹窗
    //: private var intervalDown = 0
    private var intervalDown = 0 /// 间隔时间x秒
    //: private var timer_Duration: TimeInterval = 0
    private var timer_Duration: TimeInterval = 0 /// 时间间隔 初次3s，后续90s

    //: static let shared = TalkingVideoInitivCallManager()
    static let shared = TvThen()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_VideoCallTimer),
                                               selector: #selector(statusFrom),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: k_deviceKey,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - Event

//: extension TalkingVideoInitivCallManager {
extension TvThen {
    //: private func distroryNotif() {
    private func withNotif() {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func setObserver() {
    func dataBackground() {
        //: guard PunctuateThen.share.loginUserMode.callPopupSetting != "0,0" else {
        guard PunctuateThen.share.loginUserMode.callPopupSetting != "0,0" else {
            //: distroryNotif()
            withNotif()
            //: return
            return
        }
        //: let arr = PunctuateThen.share.loginUserMode.callPopupSetting .split(separator: ",")
        let arr = PunctuateThen.share.loginUserMode.callPopupSetting.split(separator: ",")
        //: if arr.count > 1 {
        if arr.count > 1 {
            //: countDown = Int(arr[0]) ?? 0
            countDown = Int(arr[0]) ?? 0
            //: intervalDown = Int(arr[1]) ?? 0
            intervalDown = Int(arr[1]) ?? 0
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+Double(countDown)) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(countDown)) {
            //: self.req_getVideoInfo()
            self.tagInfo()
        }
        /// 充值/订阅成功
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(paySuccessTool),
                                               selector: #selector(needZone),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: constSkipPath,
                                               //: object: nil)
                                               object: nil)
    }

    /// 开启x秒倒计时
    //: func initVideoCallTimer() {
    func equalDoing() {
        //: self.timer_Duration = TimeInterval(intervalDown)
        self.timer_Duration = TimeInterval(intervalDown)
        //: if videoCallTimer == nil {
        if videoCallTimer == nil {
            //: videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(req_getVideoInfo), userInfo: nil, repeats: true)
            videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(tagInfo), userInfo: nil, repeats: true)
            //: RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
            RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
        }
    }

    //: private func videoCallTimerPopView() {
    private func dismissError() {
        /// 当前显示半屏充值页或订阅页时，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if occurrentWith()?.isKind(of: RubricViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = occurrentWith() as! RubricViewController
            //: if vc.urlStr.contains(WebUrlType.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains("dist/loungePlus") {
            if vc.urlStr.contains(DataPlumeBidirectionalCollection.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains((show_systemMsg.replacingOccurrences(of: "path", with: "is") + "/loun" + String(show_normalTextLabFormat))) {
                //: return
                return
            }
        }
        /// 当前在随机匹配页，视频通话页，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingRandomVideoViewController.self) == true || currentViewController()?.isKind(of: TalkingVideoInitivCallVC.self) == true {
        if occurrentWith()?.isKind(of: ColorCallerDelegate.self) == true || occurrentWith()?.isKind(of: AddObjectProtocol.self) == true {
            //: return
            return
        }
        //: TalkingPopupWindowManager.shared.videoCallPopUpWindow()
        MessageThen.shared.drag()
        //: stop_VideoCallTimer()
        statusFrom()
    }

    /// 停止
    //: @objc func stop_VideoCallTimer() {
    @objc func statusFrom() {
        //: if self.videoCallTimer != nil {
        if self.videoCallTimer != nil {
            //: self.videoCallTimer?.invalidate()
            self.videoCallTimer?.invalidate()
            //: self.videoCallTimer = nil
            self.videoCallTimer = nil
        }
    }

    ///  充值成功后，跳转到callTab页面
    //: @objc private func paySuccessTool() {
    @objc private func needZone() {
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if occurrentWith()?.isKind(of: RubricViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = occurrentWith() as! RubricViewController
            //: if (vc.urlStr.contains(WebUrlType.RechargeHalfPage.rawValue) || vc.urlStr.contains(WebUrlType.SubscribeAlert.rawValue )) && vc.isRechargeOrSubscribeChangeMatch {
            if vc.urlStr.contains(DataPlumeBidirectionalCollection.RechargeHalfPage.rawValue) || vc.urlStr.contains(DataPlumeBidirectionalCollection.SubscribeAlert.rawValue), vc.isRechargeOrSubscribeChangeMatch {
                //: stop_VideoCallTimer()
                statusFrom()
                //: vc.dismiss(animated: true)
                vc.dismiss(animated: true)
//                tabberSelete()
            }
        }
    }
}

// MARK: - Load Data

//: extension TalkingVideoInitivCallManager {
extension TvThen {
    /// 获取用户主动拨打视频信息
    //: @objc private func req_getVideoInfo() {
    @objc private func tagInfo() {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/freeCall/getVideoInfo"
        reqModel.requestPath = (String(appSucceedMessage.prefix(5)) + "eeCa" + String(user_mIndexTitle.suffix(5)) + "tVid" + String(userDataName))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["fromType": "0"]
        reqModel.params = [String(bytes: show_equalSizeId.reversed(), encoding: .utf8)!: "0"]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            /// 用户正在通话中，需要开启x秒后再次请求
            //: if errorModel?.errorCode == 104 {
            if errorModel?.errorCode == 104 {
                //: self.initVideoCallTimer()
                self.equalDoing()
                //: return
                return
            }
            //: guard succeed == true else {
            guard succeed == true else {
                //: self.distroryNotif()
                self.withNotif()
                //: self.stop_VideoCallTimer()
                self.statusFrom()
                //: return
                return
            }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: if let model = TalkingVideoInitivCallModel.deserialize(from: result as? Dictionary) {
            if let model = CustomHandyJSON.deserialize(from: result as? Dictionary) {
                //: self.videoCallModel = model
                self.videoCallModel = model
            }
            /// 预加载
            //: let  player = TalkingVideoPlayerManager.init()
            let player = MemoryReactiveCompatible()
            //: player.setMute(bEnable: true)
            player.valueDoing(bEnable: true)
            //: player.playerWithUrlAndVideoView(url: self.videoCallModel.winVideoUrl, view: UIView.init())
            player.asDrunk(url: self.videoCallModel.winVideoUrl, view: UIView())

            //: self.videoCallTimerPopView()
            self.dismissError()
        }
    }

    /** 接口记录用户是否接通或拒绝当前通话
     *  type :3 拒绝 1 接通 2 挂断
     *  duration 接通时长
     */
    //: func req_userOperation(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
    func finishBecome(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["videoId"] = videoCallModel.videoId
        dict[(String(k_shareGiftViewMsg.suffix(6)) + main_languageCenterLetId.replacingOccurrences(of: "raw", with: "d"))] = videoCallModel.videoId
        //: dict["uid"] = videoCallModel.uid
        dict[(String(mainAppCornerText))] = videoCallModel.uid
        //: dict["type"] = type
        dict[(String(k_nameFormat))] = type
        //: dict["logId"] = videoCallModel.logId
        dict[(String(mainListText.suffix(5)))] = videoCallModel.logId

        //: if duration > 0 {
        if duration > 0 {
            //: dict["duration"] = duration
            dict[(String(dataTableSpecialKey))] = duration
        }
        //: if stopUid.count > 0 {
        if stopUid.count > 0 {
            //: dict["stopUid"] = stopUid
            dict[(String(userObserverData.suffix(7)))] = stopUid
        }

        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/freeCall/operation"
        reqModel.requestPath = (String(user_dataValue) + String(notiMessageTouchHeightFormat))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
