
//: Declare String Begin

/*: "CacheFemaleVIPCallIdsArrayKey_ :*/
fileprivate let kFileUrl:String = "let gift name sinceCach"
fileprivate let app_toStyleContent:String = "leVIPCallstatus self equal"
fileprivate let const_makeData:[Character] = ["I","d","s","A","r","r","a","y","K","e","y","_"]

/*: "CHANGE_BEAN" :*/
fileprivate let constUpMessage:[Character] = ["C","H","A","N","G","E","_","B","E","A","N"]

/*: "Failed to get user information, please return and try again" :*/
fileprivate let dataManagerPath:[UInt8] = [0x44,0x63,0x6b,0x6e,0x67,0x66,0x22,0x76,0x6d,0x22,0x65,0x67,0x76,0x22,0x77,0x71,0x67,0x70,0x22,0x6b,0x6c,0x64,0x6d,0x70,0x6f,0x63,0x76,0x6b,0x6d,0x6c,0x2e,0x22,0x72,0x6e,0x67,0x63,0x71,0x67,0x22,0x70,0x67,0x76,0x77,0x70,0x6c,0x22,0x63,0x6c,0x66,0x22,0x76,0x70,0x7b,0x22,0x63,0x65,0x63,0x6b,0x6c]

private func giftView(pi num: UInt8) -> UInt8 {
    return num ^ 2
}

/*: "type" :*/
fileprivate let constTextAtValue:[UInt8] = [0xf0,0xfd,0xf4,0xe1]

/*: "uid" :*/
fileprivate let k_colorUrl:[Character] = ["u","i","d"]

/*: "fromFreeCall" :*/
fileprivate let app_hiddenImageKey:[Character] = ["f","r","o","m","F"]
fileprivate let app_statusNumbKey:[Character] = ["r","e","e","C","a","l","l"]

/*: "cmd" :*/
fileprivate let userListText:[UInt8] = [0x39,0x37,0x3e]

/*: "requestCall" :*/
fileprivate let kFirstData:String = "rtextqutextst"
fileprivate let data_makeGestureTitle:[Character] = ["C","a","l","l"]

/*: "data" :*/
fileprivate let notiImageName:[UInt8] = [0x7a,0x77,0x8a,0x77]

fileprivate func magnitudeeractionLevelKey(enable num: UInt8) -> UInt8 {
    let value = Int(num) - 22
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "onRequestCall" :*/
fileprivate let mainReadToMessage:[Character] = ["o","n"]
fileprivate let notiWantManagerValuePath:String = "Requeif content"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RefMatchDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/8/15.
//

//: import UIKit
import UIKit

//: enum CallMenuType: Int {
enum EqualCountLiteral: Int {
    //: case VideoCall = 0
    case VideoCall = 0 // 视频通话
    //: case VoiceCall = 1
    case VoiceCall = 1 // 语音通话
}

//: typealias OnReqestCallBlock = () -> Void
typealias OnReqestCallBlock = () -> Void

//: class TalkingCallMenuManager: NSObject {
class RefMatchDelegate: NSObject {
    // 被呼叫用户ID
    //: var uid: String?
    var uid: String?
    //: var onReqestCallBlock: OnReqestCallBlock?
    var onReqestCallBlock: OnReqestCallBlock? /// 发起建立通话成功

    // 女性用户VIP折扣弹窗Key
    //: let FemaleVIPCallIdsArrayKey = "CacheFemaleVIPCallIdsArrayKey_\(PunctuateThen.share.loginUid)"
    let FemaleVIPCallIdsArrayKey = (String(kFileUrl.suffix(4)) + "eFema" + String(app_toStyleContent.prefix(9)) + String(const_makeData)) + "\(PunctuateThen.share.loginUid)"

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        WrittenRecordSocketDelegate.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        WrittenRecordSocketDelegate.shared.errorDelegate = nil
    }
}

// MARK: - Event

//: extension TalkingCallMenuManager {
extension RefMatchDelegate {
    /// 展示音视频通话选择菜单
    /// - Parameters:
    ///   - videoPrice: 视频通话价格
    ///   - voicePrice: 语音通话价格
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: func showVideoCallMenu(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
    func migration(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.workSpace == false else {
        guard WrittenRecordSocketDelegate.shared.workSpace == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.drawObserver(showMsg: mainKeyTransformMsg)
            //: return
            return
        }

        //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
        let vc = SelectReactiveCompatible(frame: UIScreen.main.bounds)
        //: vc.initWithList(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        vc.exhibitPrice(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        //: vc.munuBlock = { [weak self] index, _ in
        vc.munuBlock = { [weak self] index, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let type = CallMenuType(rawValue: index) ?? .VideoCall
            let type = EqualCountLiteral(rawValue: index) ?? .VideoCall
            // 展示VIP折扣提醒弹窗
            //: if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
            if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
                //: var prompt = ""
                var prompt = ""
                //: if index == 0 {
                if index == 0 {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: videoPrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (String(constUpMessage)), with: videoPrice ?? "0")
                    //: } else {
                } else {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: voicePrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (String(constUpMessage)), with: voicePrice ?? "0")
                }
                //: self.showFemaleVIPCallAlertView(type: type, vipPrompt: prompt)
                self.showSince(type: type, vipPrompt: prompt)
                //: return
                return
            }

            //: requestCall(type: type)
            toStop(type: type)
        }
    }

    /// 发起音/视频通话
    /// - Parameter type: 通话类型
    //: func requestCall(type: CallMenuType) {
    func toStop(type: EqualCountLiteral) {
        //: switch(type) {
        switch type {
        //: case .VideoCall:
        case .VideoCall:
            //: self.checkAndCallVideo()
            self.tv()
        //: case .VoiceCall:
        case .VoiceCall:
            //: self.checkAndCallVoice()
            self.bagStart()
        }
    }

    /// 检查权限后发起音频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVoice(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func bagStart(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.workSpace == false else {
        guard WrittenRecordSocketDelegate.shared.workSpace == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.drawObserver(showMsg: mainKeyTransformMsg)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 麦克风权限
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        CustomPermissionTool.contextBag(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.drawObserver(showMsg: constChangeName)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起音频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            WrittenRecordSocketDelegate.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            WrittenRecordSocketDelegate.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 1)
            self.minimize(type: 1)
            //: complection?(true)
            complection?(true)
        }
    }

    /// 检测权限后发起视频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVideo(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func tv(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.workSpace == false else {
        guard WrittenRecordSocketDelegate.shared.workSpace == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.drawObserver(showMsg: mainKeyTransformMsg)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 权限判断
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        CustomPermissionTool.showDrunk { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.drawObserver(showMsg: constChangeName)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起视频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            WrittenRecordSocketDelegate.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            WrittenRecordSocketDelegate.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 0)
            self.minimize(type: 0)
            //: complection?(true)
            complection?(true)
        }
    }
}

// MARK: - 会员折扣提示弹窗

//: extension TalkingCallMenuManager {
extension RefMatchDelegate {
    /// 展示会员折扣提示弹窗
    /// - Parameters:
    ///   - index: 0：视频通话；1：音频通话
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: private func showFemaleVIPCallAlertView(type: CallMenuType, vipPrompt: String) {
    private func showSince(type: EqualCountLiteral, vipPrompt: String) {
        //: guard PunctuateThen.share.loginUserMode.status == AppSkinStatus.normal.rawValue else {
        guard PunctuateThen.share.loginUserMode.status == HiddenHashableRepresentation.normal.rawValue else {
            //: self.requestCall(type: type)
            self.toStop(type: type)
            //: return
            return
        }
        // 每个用户只展示一次
        //: var array: Array = Defaults.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        var array: Array = constDevicePath.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        //: if array.contains(uid ?? "") { // 已展示
        if array.contains(uid ?? "") { // 已展示
            //: self.requestCall(type: type)
            self.toStop(type: type)
            //: return
            return
        }

        // 更新缓存, 展示视图
        //: array.append(uid ?? "")
        array.append(uid ?? "")
        //: Defaults.set(array, forKey: FemaleVIPCallIdsArrayKey)
        constDevicePath.set(array, forKey: FemaleVIPCallIdsArrayKey)
        //: let alert = TalkingFemaleVIPCallAlertView(type: type, content: vipPrompt)
        let alert = ViewColorThen(type: type, content: vipPrompt)
        //: alert.callBlock = { type in
        alert.callBlock = { type in
            //: self.requestCall(type: type)
            self.toStop(type: type)
        }
        //: alert.show()
        alert.income()
    }
}

// MARK: - VoiceObjectProtocol, SendToErrorDelegate【音视频通话逻辑处理】

//: extension TalkingCallMenuManager: SocketManagerVideoMatchDelegate, TalkingSocketManagerErrorDelegate {
extension RefMatchDelegate: VoiceObjectProtocol, SendToErrorDelegate {
    /// 发送音视频通话socket
    /// - Parameter type: 通话类型：0：视频通话，1：语音通话
    //: func send_socket_requestCall(type: Int) {
    func minimize(type: Int) {
        //: guard let uid = self.uid else {
        guard let uid = self.uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Failed to get user information, please return and try again".localized)
            self.drawObserver(showMsg: String(bytes: dataManagerPath.map{giftView(pi: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }

        //: var data: [String: Any] = ["type": type, "uid": uid]
        var data: [String: Any] = [String(bytes: constTextAtValue.map{$0^132}, encoding: .utf8)!: type, (String(k_colorUrl)): uid]
        //: let index = EnableFreeCallType.nor
        let index = ColorHashableRepresentation.nor
        //: if PunctuateThen.share.loginUserMode.freeCallTimes > 0 && PunctuateThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue {
        if PunctuateThen.share.loginUserMode.freeCallTimes > 0 && PunctuateThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(app_hiddenImageKey) + String(app_statusNumbKey)))
            //: TalkingSocketManager.shared.isFreeCall = true
            WrittenRecordSocketDelegate.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: userListText.map{$0^90}, encoding: .utf8)!: (kFirstData.replacingOccurrences(of: "text", with: "e") + String(data_makeGestureTitle)), String(bytes: notiImageName.map{magnitudeeractionLevelKey(enable: $0)}, encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        WrittenRecordSocketDelegate.shared.belowAdd(info: info)
    }

    /// 匹配成功，可以拨打通话
    //: func socket_match_onRequestCall(data: [String: Any]) {        self.onReqestCallBlock?()
    func match(data: [String: Any]) { self.onReqestCallBlock?()
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.uid
        newData[(String(k_colorUrl))] = self.uid
        //: PunctuateThen.share.start1v1TalkCall(info: newData)
        PunctuateThen.share.contestant(info: newData)
    }

    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func onObject(data _: [String: Any]) {}

    /// 失败处理
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func nameUseData(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(mainReadToMessage) + String(notiWantManagerValuePath.prefix(5)) + "stCall") {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.drawObserver(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == ColorMirrorPath.MoneyLack.rawValue {
                //: guard PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue else { return }
                //: RangePushManager.share.func__jumpToWebRecharge(clickEvent: clickVideocallButton, sufficient: false)
                RangePushManager.share.picParams(clickEvent: noti_micFormat, sufficient: false)
            }
        }
    }
}
