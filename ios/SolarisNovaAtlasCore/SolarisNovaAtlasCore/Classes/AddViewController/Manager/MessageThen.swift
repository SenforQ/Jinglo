
//: Declare String Begin

/*: "content" :*/
fileprivate let show_cellTopId:String = "conofnt"

/*: "jumpKey" :*/
fileprivate let dataTimeMessage:String = "jvalue"
fileprivate let show_picMsg:String = "mpKeyview from add make max"

/*: "uploadUserHeaderPic" :*/
fileprivate let constActionFirstStr:String = "uequalloa"
fileprivate let user_shareValue:String = "normal path last modelrHead"

/*: "truePersonAuth" :*/
fileprivate let k_liveMessage:String = "truePeof text"
fileprivate let dataResponseDateMessage:String = "info"

/*: "yyyy-MM-dd" :*/
fileprivate let userCoverStr:String = "make left betweenyyyy-"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/17.
//

//: import UIKit
import UIKit

//: enum PopupWindowType: CaseIterable {
enum RecordWindowType: CaseIterable {
    //: case sign_in
    case sign_in // 签到
    //: case video_Cover
    case video_Cover // 上传视频封面提醒弹窗
    //: case startLive_Tips
    case startLive_Tips // 开播提醒弹窗
    //: case video_Call
    case video_Call // 主动拨打弹窗
    //: case face_Verification
    case face_Verification // 需要真人认证弹窗
    //: case Web_Subscribe
    case Web_Subscribe // 会员订阅弹窗
    //: case Attestation_Refuse
    case Attestation_Refuse // 真人认证，头像上传，被拒绝时提示弹窗
    //: case New_Guidance
    case New_Guidance // 主播引导弹窗（女性首次注册，未完成全部新人任务）
}

//: class TalkingPopupWindowManager: NSObject {
class MessageThen: NSObject {
    //: var dataSource = Array<PopupWindowType>()
    var dataSource = [RecordWindowType]()
    //: var alertQueue: PublishSubject<PopupWindowType> = PublishSubject<PopupWindowType>()
    var alertQueue: PublishSubject<RecordWindowType> = .init()
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: private var isShowLiveTipsView = false
    private var isShowLiveTipsView = false
    /// 通话中，结束后再显示审核拒绝提示弹窗
    //: private var isLateronRefuseView = false
    private var isLateronRefuseView = false

    //: var refuseViewData = [String: String]()
    var refuseViewData = [String: String]()

    //: static let shared = TalkingPopupWindowManager()
    static let shared = MessageThen()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: setObserver()
        tooth()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingPopupWindowManager {
extension MessageThen {
    //: func setObserver() {
    func tooth() {
        //: alertQueue.asObservable().subscribe(onNext: { [weak self]  type in
        alertQueue.asObservable().subscribe(onNext: { [weak self] type in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dataSource.append(type)
            self.dataSource.append(type)
            //: self.showAlert()
            self.bounds()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: NotificationCenter.default.addObserver(self, selector: #selector(showRefuseView), name: VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(constraintLoad), name: k_bottomImageId, object: nil)
    }

    //: func setHomePopUpWindow() {
    func metronymic() {
        // 默认模式, 男性, 未订阅
        //: if PunctuateThen.share.loginUserMode.jumpType == 0,
        if PunctuateThen.share.loginUserMode.jumpType == 0,
           //: PunctuateThen.share.appUserConfigMode.payWinType == 2,
           PunctuateThen.share.appUserConfigMode.payWinType == 2,
           //: PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue,
           PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue,
           //: PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue,
           PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue,
           //: PunctuateThen.share.loginUserMode.loungePlus == false {
           PunctuateThen.share.loginUserMode.loungePlus == false
        {
            //: self.alertQueue.onNext(PopupWindowType.Web_Subscribe)
            self.alertQueue.onNext(RecordWindowType.Web_Subscribe)
        }

        //: if  PunctuateThen.share.loginUserMode.showSignInPage && PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue && PunctuateThen.share.appStatus != AppSkinStatus.special.rawValue {
        if PunctuateThen.share.loginUserMode.showSignInPage, PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue, PunctuateThen.share.appStatus != HiddenHashableRepresentation.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.sign_in)
            self.alertQueue.onNext(RecordWindowType.sign_in)
        }

        //: if PunctuateThen.share.loginUserMode.isNaUser == false,
        if PunctuateThen.share.loginUserMode.isNaUser == false,
           //: PunctuateThen.share.appUserConfigMode.videoCover.count > 0,
           PunctuateThen.share.appUserConfigMode.videoCover.count > 0,
           //: PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue,
           PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue,
           //: PunctuateThen.share.appStatus != AppSkinStatus.special.rawValue {
           PunctuateThen.share.appStatus != HiddenHashableRepresentation.special.rawValue
        {
            //: self.alertQueue.onNext(PopupWindowType.video_Cover)
            self.alertQueue.onNext(RecordWindowType.video_Cover)
        }

        //: if PunctuateThen.share.appUserConfigMode.showNewGuidance, PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue && PunctuateThen.share.appStatus != AppSkinStatus.special.rawValue {
        if PunctuateThen.share.appUserConfigMode.showNewGuidance, PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue, PunctuateThen.share.appStatus != HiddenHashableRepresentation.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.New_Guidance)
            self.alertQueue.onNext(RecordWindowType.New_Guidance)
        }

        //: if PunctuateThen.share.appUserConfigMode.headPicRejectNotice.count > 0 && PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue && PunctuateThen.share.appStatus != AppSkinStatus.special.rawValue {
        if PunctuateThen.share.appUserConfigMode.headPicRejectNotice.count > 0, PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue, PunctuateThen.share.appStatus != HiddenHashableRepresentation.special.rawValue {
            //: refuseViewData["content"] = PunctuateThen.share.appUserConfigMode.headPicRejectNotice
            refuseViewData[(show_cellTopId.replacingOccurrences(of: "of", with: "te"))] = PunctuateThen.share.appUserConfigMode.headPicRejectNotice
            //: refuseViewData["jumpKey"] = "uploadUserHeaderPic"
            refuseViewData[(dataTimeMessage.replacingOccurrences(of: "value", with: "u") + String(show_picMsg.prefix(5)))] = (constActionFirstStr.replacingOccurrences(of: "equal", with: "p") + "dUse" + String(user_shareValue.suffix(5)) + "erPic")
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(RecordWindowType.Attestation_Refuse)
        }

        //: if PunctuateThen.share.appUserConfigMode.realPicRejectNotice.count > 0 && PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue && PunctuateThen.share.appStatus != AppSkinStatus.special.rawValue {
        if PunctuateThen.share.appUserConfigMode.realPicRejectNotice.count > 0, PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue, PunctuateThen.share.appStatus != HiddenHashableRepresentation.special.rawValue {
            //: refuseViewData["content"] = PunctuateThen.share.appUserConfigMode.realPicRejectNotice
            refuseViewData[(show_cellTopId.replacingOccurrences(of: "of", with: "te"))] = PunctuateThen.share.appUserConfigMode.realPicRejectNotice
            //: refuseViewData["jumpKey"] = "truePersonAuth"
            refuseViewData[(dataTimeMessage.replacingOccurrences(of: "value", with: "u") + String(show_picMsg.prefix(5)))] = (String(k_liveMessage.prefix(6)) + "rsonAu" + dataResponseDateMessage.replacingOccurrences(of: "info", with: "th"))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(RecordWindowType.Attestation_Refuse)
        }
    }

    //: func startLivePopUpWindow() {
    func glory() {
        //: self.alertQueue.onNext(PopupWindowType.startLive_Tips)
        self.alertQueue.onNext(RecordWindowType.startLive_Tips)
    }

    /// 主动拨打弹窗
    //: func videoCallPopUpWindow() {
    func drag() {
        //: self.alertQueue.onNext(PopupWindowType.video_Call)
        self.alertQueue.onNext(RecordWindowType.video_Call)
    }

    /// 需要真人认证弹窗
    //: func faceVerificationPopUpWindow() {
    func eponym() {
        //: self.alertQueue.onNext(PopupWindowType.face_Verification)
        self.alertQueue.onNext(RecordWindowType.face_Verification)
    }

    /// 真人认证，头像上传，被拒绝时提示弹窗
    //: func attestationRefusePopUpWindow(dic: [String: Any]) {
    func changeDic(dic: [String: Any]) {
        //: refuseViewData["content"] = dic["content"] as? String
        refuseViewData[(show_cellTopId.replacingOccurrences(of: "of", with: "te"))] = dic[(show_cellTopId.replacingOccurrences(of: "of", with: "te"))] as? String
        //: refuseViewData["jumpKey"] = dic["jumpKey"] as? String
        refuseViewData[(dataTimeMessage.replacingOccurrences(of: "value", with: "u") + String(show_picMsg.prefix(5)))] = dic[(dataTimeMessage.replacingOccurrences(of: "value", with: "u") + String(show_picMsg.prefix(5)))] as? String
        //: guard TalkingSocketManager.shared.workSpace == false else {
        guard WrittenRecordSocketDelegate.shared.workSpace == false else {
            //: isLateronRefuseView = true
            isLateronRefuseView = true
            //: return
            return
        }
        //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
        self.alertQueue.onNext(RecordWindowType.Attestation_Refuse)
    }

    /// 通话结束后
    //: @objc private func showRefuseView() {
    @objc private func constraintLoad() {
        //: if isLateronRefuseView {
        if isLateronRefuseView {
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(RecordWindowType.Attestation_Refuse)
        }
    }

    //: func showAlert() {
    func bounds() {
        //: guard self.dataSource.count > 0 else { return }
        guard self.dataSource.count > 0 else { return }
        //: self.actionForTask(type: self.dataSource.first!)
        self.actionFromVersion(type: self.dataSource.first!)
    }

    //: func actionForTask(type: PopupWindowType) {
    func actionFromVersion(type: RecordWindowType) {
        //: switch type {
        switch type {
        //: case .sign_in:
        case .sign_in:
            //: if let index = self.dataSource.firstIndex(of: .sign_in) {
            if let index = self.dataSource.firstIndex(of: .sign_in) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: RangePushManager.share.func__pushToWebVC(webViewType: .SiginPopup)
            RangePushManager.share.barOn(webViewType: .SiginPopup)

        //: case .video_Cover:
        case .video_Cover:
            //: if let index = self.dataSource.firstIndex(of: .video_Cover) {
            if let index = self.dataSource.firstIndex(of: .video_Cover) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCoverPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = SheetThen(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle))
            //: view.show()
            view.antheral()

        //: case .startLive_Tips:
        case .startLive_Tips:
            //: if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
            if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: if isShowLiveTipsView {
            if isShowLiveTipsView {
                //: return
                return
            }
            //: let view = TalkingLiveTipsPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = InformationView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle))
            //: view.show()
            view.filly()
            //: isShowLiveTipsView = true
            isShowLiveTipsView = true
            //: view.endBlock = { [weak self] in
            view.endBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.isShowLiveTipsView = false
                self.isShowLiveTipsView = false
            }

        //: case.video_Call:
        case .video_Call:
            //: if let index = self.dataSource.firstIndex(of: .video_Call) {
            if let index = self.dataSource.firstIndex(of: .video_Call) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCallPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = FourthThen(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle))
            //: view.show()
            view.common()

        //: case.face_Verification:
        case .face_Verification:
            //: if let index = self.dataSource.firstIndex(of: .face_Verification) {
            if let index = self.dataSource.firstIndex(of: .face_Verification) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingFaceVerificationPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = VideoReactiveCompatible(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle))
            //: view.show()
            view.listShow()

        //: case .Web_Subscribe:
        case .Web_Subscribe:
            //: if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
            if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let date = Defaults.object(forKey: TalkingMaleUnsubscribedAlertIsShow)
            let date = constDevicePath.object(forKey: constAppId)
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.errorFormat(date: Date(), dateFormat: (String(userCoverStr.suffix(5)) + "MM-dd"))
            //: if date == nil || (date as! String) != today {
            if date == nil || (date as! String) != today {
                //: Defaults.set(today, forKey: TalkingMaleUnsubscribedAlertIsShow)
                constDevicePath.set(today, forKey: constAppId)
                //: RangePushManager.share.func__pushToSubscribeAlert()
                RangePushManager.share.quantityernalRepresentation()
            }

        //: case.Attestation_Refuse:
        case .Attestation_Refuse:
            //: if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
            if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingAttestationRefusePopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = WithView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle))
            //: view.setViewData(dit: refuseViewData)
            view.incomeParallelize(dit: refuseViewData)
            //: view.show()
            view.listPublish()

        //: case .New_Guidance:
        case .New_Guidance:
            //: if let index = self.dataSource.firstIndex(of: .New_Guidance) {
            if let index = self.dataSource.firstIndex(of: .New_Guidance) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingNewGuidancePopUpView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = AspectView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle))
            //: view.show()
            view.miniShow()
        }
    }
}
