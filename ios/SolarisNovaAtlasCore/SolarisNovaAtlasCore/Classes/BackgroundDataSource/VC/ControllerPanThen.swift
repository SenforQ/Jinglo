
//: Declare String Begin

/*: "bg_message_top" :*/
fileprivate let appRegularStr:String = "view length of method makebg_mess"
fileprivate let main_sizeRawKey:String = "age_toplanguage origin thought"

/*: "777777" :*/
fileprivate let main_infoMessage:[Character] = ["7","7","7","7","7","7"]

/*: "Messages" :*/
fileprivate let constRangePath:[Character] = ["M","e","s","s","a","g"]
fileprivate let noti_theData:[Character] = ["e","s"]

/*: "Who like me" :*/
fileprivate let data_effectId:[Character] = ["W","h","o"]
fileprivate let k_renderTitle:String = "content return manager icon leading like me"

/*: "Call" :*/
fileprivate let show_numberFormat:String = "index net statusCall"

/*: "#FF2348" :*/
fileprivate let main_actionName:String = "title lab title#FF2348"

/*: "Current network unavailable" :*/
fileprivate let k_methodTitle:String = "Currenmake return data of"
fileprivate let userItemTitle:String = "work view case"
fileprivate let kHiddenModelId:String = "withlab"
fileprivate let kTableValue:String = "scalee"

/*: "icon_yidu_pre" :*/
fileprivate let notiVideoMessage:String = "ilabn"
fileprivate let k_existContent:[Character] = ["_","p","r","e"]

/*: "99+" :*/
fileprivate let kToFormat:String = "count+"

/*: "transform.rotation" :*/
fileprivate let appSizeKey:[Character] = ["t","r","a","n","s","f","o","r","m",".","r","o","t","a"]
fileprivate let constVideoText:String = "tindicatoron"

/*: "transform.scale" :*/
fileprivate let appDateId:[Character] = ["t","r","a","n","s","f","o","r","m","."]
fileprivate let app_cameraMsg:[Character] = ["s","c","a","l","e"]

/*: "zoom&shake" :*/
fileprivate let userModelId:String = "collection thinzoom&"
fileprivate let userApplicationKey:String = "SHAKE"

/*: "yyyy-MM-dd" :*/
fileprivate let mainDuringPath:String = "layerlayer"

/*: "Allow %@ to send you notifications?" :*/
fileprivate let showNoData:[UInt8] = [0x3f,0x73,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x74,0x6f,0x6e,0x20,0x75,0x6f,0x79,0x20,0x64,0x6e,0x65,0x73,0x20,0x6f,0x74,0x20,0x40,0x25,0x20,0x77,0x6f,0x6c,0x6c,0x41]

/*: "Cancel" :*/
fileprivate let kLabelHiddenLetData:[Character] = ["C","a","n","c","e","l"]

/*: "Settings" :*/
fileprivate let notiColorTitle:String = "error if model errorSettin"
fileprivate let data_clickUrl:String = "gbottom"

/*: "badNumber" :*/
fileprivate let const_toolMsg:String = "badNto hidden tool"
fileprivate let user_kindPathValue:[Character] = ["u","m","b","e","r"]

/*: "isConnection" :*/
fileprivate let user_layerThoughtFormat:[Character] = ["i","s","C","o","n","n","e","c","t","i","o"]
fileprivate let noti_positionMessage:String = "voice"

/*: "networkStatus" :*/
fileprivate let const_extendedName:String = "networkScolor in kit make"
fileprivate let showLayerNowNameId:String = "tequalus"

/*: "unreadMessageNum" :*/
fileprivate let constIndexPathId:[Character] = ["u","n","r","e","a","d","M","e","s","s","a"]
fileprivate let constPicText:String = "geNumsecond please finish control guard"

/*: "Do you want to mark all messages as read?" :*/
fileprivate let k_rangeUpgradeValue:[UInt8] = [0x46,0x6d,0x22,0x7b,0x6d,0x77,0x22,0x75,0x63,0x6c,0x76,0x22,0x76,0x6d,0x22,0x6f,0x63,0x70,0x69,0x22,0x63,0x6e,0x6e,0x22,0x6f,0x67,0x71,0x71,0x63,0x65,0x67,0x71,0x22,0x63,0x71,0x22,0x70,0x67,0x63,0x66,0x3d]

private func infoToPath(back num: UInt8) -> UInt8 {
    return num ^ 2
}

/*: "OK" :*/
fileprivate let data_viewFormat:[Character] = ["O","K"]

/*: "消息列表一键已读失败：code: :*/
fileprivate let data_whiteStr:String = "\u{6d88}息\u{5217}表"
fileprivate let kUserModelMessage:String = "layer index bag weight：code:"

/*: , desc: :*/
fileprivate let constTableShareManagerMsg:[Character] = [","," ","d","e","s"]
fileprivate let dataHeadTitleGameValue:String = "c:mini layer"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ControllerPanThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingMessageViewController: TalkingBaseViewController {
class ControllerPanThen: SizeViewController {
    //: var isNoChangeTop = false
    var isNoChangeTop = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var seleteIndex = 0
    private var seleteIndex = 0

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: setIsShowCleanAmimat()
        observerTitle()
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: createUI()
        boxSub()
        //: bindInteraction()
        republicanPartyFee()
        //: func__turnOnSystemNotification()
        motility()
    }

    // MARK: - Lazy load

    // 背景
    //: private lazy var colorImageView: UIImageView = {
    private lazy var colorImageView: UIImageView = {
        //: let colorV = UIImageView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 100+StatusBarNavigationBarHeight))
        let colorV = UIImageView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: 100 + mainKeyValue))
        //: colorV.image = UIImage.BundleImageNamed(name: "bg_message_top")
        colorV.image = UIImage.thoughtImageBundleSizeText(name: (String(appRegularStr.suffix(7)) + String(main_sizeRawKey.prefix(7))))
        //: return colorV
        return colorV
        //: }()
    }()

    //: private lazy var noticeView: TalkingNoticeTipView = {
    private lazy var noticeView: NoticeView = {
        //: let V = TalkingNoticeTipView()
        let V = NoticeView()
        //: V.isHidden = true
        V.isHidden = true
        //: return V
        return V
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: SumimateViewDelegate = {
        //: let vc = QYSlideNavigationViewController()
        let vc = SumimateViewDelegate()
        //: vc.topDistance = 0
        vc.topDistance = 0
        //: vc.controllerItems = controllerItems
        vc.controllerItems = controllerItems
        //: vc.titleItems = titleItems
        vc.titleItems = titleItems
        //: vc.rightSpace = 60
        vc.rightSpace = 60
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .pingfangFont(type: .Medium, fontSize: 16)
        vc.titleFont = .clickLarge(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .pingfangFont(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .clickLarge(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (String(main_infoMessage)))!
        //: vc.selectedColor = UIColor.appTitleColor()
        vc.selectedColor = UIColor.toEvent()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var controllerItems: [TalkingBaseViewController] = {
    private lazy var controllerItems: [SizeViewController] = {
        //: var arr = [self.chatListVC, TalkingWhoLikeViewController()]
        var arr = [self.chatListVC, MatronymicViewController()]
        //: if PunctuateThen.share.loginUserMode.callTabSwitch == 1 {
        if PunctuateThen.share.loginUserMode.callTabSwitch == 1 {
            //: arr.insert(TalkingVideoCallVC(), at: arr.count-1)
            arr.insert(LargeViewDelegate(), at: arr.count - 1)
        }
        //: return arr
        return arr

        //: }()
    }()

    //: private lazy var chatListVC: TalkingChatListViewController = {
    private lazy var chatListVC: BackgroundDataSource = {
        //: let vc = TalkingChatListViewController()
        let vc = BackgroundDataSource()
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var titleItems: [String] = {
    private lazy var titleItems: [String] = {
        //: var arr = ["Messages".localized, "Who like me".localized]
        var arr = [(String(constRangePath) + String(noti_theData)).localized, (String(data_effectId) + String(k_renderTitle.suffix(8))).localized]
        //: if PunctuateThen.share.loginUserMode.callTabSwitch == 1 {
        if PunctuateThen.share.loginUserMode.callTabSwitch == 1 {
            //: arr.insert("Call".localized, at: arr.count-1)
            arr.insert((String(show_numberFormat.suffix(4))).localized, at: arr.count - 1)
        }
        //: return arr
        return arr
        //: }()
    }()

    // 断网提醒
    //: private lazy var netTipLabel: UILabel = {
    private lazy var netTipLabel: UILabel = {
        //: let tipView = UILabel.init(frame: CGRect(x: 0, y: StatusBarNavigationBarHeight, width: ScreenWidth, height: 30))
        let tipView = UILabel(frame: CGRect(x: 0, y: mainKeyValue, width: kQueryValue, height: 30))
        //: tipView.font = UIFont.pingfangRugularFont(fontSize: 14)
        tipView.font = UIFont.recoverOf(fontSize: 14)
        //: tipView.textColor = .white
        tipView.textColor = .white
        //: tipView.backgroundColor = UIColor.init(hex: "#FF2348")?.withAlphaComponent(0.8)
        tipView.backgroundColor = UIColor(hex: (String(main_actionName.suffix(7))))?.withAlphaComponent(0.8)
        //: tipView.textAlignment = .center
        tipView.textAlignment = .center
        //: tipView.text = "Current network unavailable".localized
        tipView.text = (String(k_methodTitle.prefix(6)) + "t net" + String(userItemTitle.prefix(5)) + "unav" + kHiddenModelId.replacingOccurrences(of: "with", with: "ai") + kTableValue.replacingOccurrences(of: "scale", with: "l")).localized
        //: tipView.isHidden = true
        tipView.isHidden = true
        //: return tipView
        return tipView
        //: }()
    }()

    // message红点角标
    //: private lazy var msgNumLabel: BadgeLab = {
    private lazy var msgNumLabel: LabReactiveCompatible = {
        //: let numbLabel = BadgeLab()
        let numbLabel = LabReactiveCompatible()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // whoLikeMe红点角标
    //: private lazy var badgLB: BadgeLab = {
    private lazy var badgLB: LabReactiveCompatible = {
        //: let numbLabel = BadgeLab()
        let numbLabel = LabReactiveCompatible()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // 一键清除
    //: private lazy var cleanBtn: UIButton = {
    private lazy var cleanBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_yidu_pre"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (notiVideoMessage.replacingOccurrences(of: "lab", with: "co") + "_yidu" + String(k_existContent))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_yidu_pre"), for: .highlighted)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (notiVideoMessage.replacingOccurrences(of: "lab", with: "co") + "_yidu" + String(k_existContent))), for: .highlighted)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - NameNavigationDelegate

//: extension TalkingMessageViewController: QYSlideNavigationDelegate {
extension ControllerPanThen: NameNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {
    func toScale(_ viewController: UIViewController, index: Int) {
        //: self.seleteIndex = Int(index)
        self.seleteIndex = Int(index)
        //: if viewController.isKind(of: TalkingChatListViewController.self) {
        if viewController.isKind(of: BackgroundDataSource.self) {
            //: self.cleanBtn.isHidden = false
            self.cleanBtn.isHidden = false
            //: setIsShowCleanAmimat()
            observerTitle()

            //: } else if viewController.isKind(of: TalkingWhoLikeViewController.self) {
        } else if viewController.isKind(of: MatronymicViewController.self) {
            //: self.cleanBtn.isHidden = true
            self.cleanBtn.isHidden = true
            //: uploadRecord.uploadRecordEvent(eventID: ClickWLikeMeTabNoP)
            const_screenFormat.occurrenceIn(eventID: k_limitStr)
        }
    }
}

// MARK: - Event

//: extension TalkingMessageViewController {
extension ControllerPanThen {
    //: func setIsTopAll() {
    func makeRecord() {
        /// 默认选中all
        //: if seleteIndex == 0 {
        if seleteIndex == 0 {
            //: let vc = slideVC.controllerItems.first as? TalkingChatListViewController
            let vc = slideVC.controllerItems.first as? BackgroundDataSource
            //: vc?.resetToTopItemView()
            vc?.errorAll()
            // 刷新在线状态
            //: vc?.refreshOnlineStatus(isFirst: true)
            vc?.toImage(isFirst: true)
        }
    }

    /// 无网络提示
    //: func func__checkNetTipState() {
    func watch() {
        //: if PunctuateThen.share.networkStatus != .Unavailable && ModelDataV2Listener.shared.isConnection {
        if PunctuateThen.share.networkStatus != .Unavailable, ModelDataV2Listener.shared.isConnection {
            //: netTipLabel.isHidden = true
            netTipLabel.isHidden = true
            //: } else {
        } else {
            //: netTipLabel.isHidden = false
            netTipLabel.isHidden = false
        }
    }

    /// message红点
    //: func func__messagebadgLBState(num: Int) {
    func thrustNum(num: Int) {
        //: if num > 0 {
        if num > 0 {
            //: msgNumLabel.isHidden = false
            msgNumLabel.isHidden = false
            //: if num > 99 {
            if num > 99 {
                //: msgNumLabel.text = "99+"
                msgNumLabel.text = "99+"
                //: } else {
            } else {
                //: msgNumLabel.text = String(num)
                msgNumLabel.text = String(num)
            }
            //: } else {
        } else {
            //: msgNumLabel.isHidden = true
            msgNumLabel.isHidden = true
        }
    }

    /// 一键清除动画
    //: func setIsShowCleanAmimat() {
    func observerTitle() {
        //: let unreadMsgCount = PunctuateThen.share.unreadMessageNum
        let unreadMsgCount = PunctuateThen.share.unreadMessageNum
        //: let isClean: Bool = UserDefaults.standard.object(forKey: isShowCleanAnimatCacheKey) as? Bool ?? false
        let isClean: Bool = UserDefaults.standard.object(forKey: kPartyClickStr) as? Bool ?? false
        //: if unreadMsgCount >= 10 && !isClean {
        if unreadMsgCount >= 10, !isClean {
            //: self.cleanBtnBtnAnimat()
            self.appearance()
        }
    }

    //: func cleanBtnBtnAnimat() {
    func appearance() {
        //: let degreesToRadians = 180.0 * .pi
        let degreesToRadians = 180.0 * .pi
        //: let angle1 = 0 / degreesToRadians
        let angle1 = 0 / degreesToRadians
        //: let angle2 = 100 / degreesToRadians
        let angle2 = 100 / degreesToRadians
        //: let angle3 = -100 / degreesToRadians
        let angle3 = -100 / degreesToRadians
        //: let angle4 = 100 / degreesToRadians
        let angle4 = 100 / degreesToRadians
        //: let angle5 = -100 / degreesToRadians
        let angle5 = -100 / degreesToRadians
        //: let angle6 = 0 / degreesToRadians
        let angle6 = 0 / degreesToRadians

        //: let du1: NSNumber = 0
        let du1: NSNumber = 0
        //: let du2: NSNumber = 0.13
        let du2: NSNumber = 0.13
        //: let du3: NSNumber = 0.3
        let du3: NSNumber = 0.3
        //: let du4: NSNumber = 0.47
        let du4: NSNumber = 0.47
        //: let du5: NSNumber = 0.8
        let du5: NSNumber = 0.8
        //: let du6: NSNumber = 1.0
        let du6: NSNumber = 1.0

        // 旋转
        //: let roate = CAKeyframeAnimation.init(keyPath: "transform.rotation")
        let roate = CAKeyframeAnimation(keyPath: (String(appSizeKey) + constVideoText.replacingOccurrences(of: "indicator", with: "i")))
        //: roate.values = [(angle1), (angle2), (angle3), (angle4), (angle5), (angle6)]
        roate.values = [angle1, angle2, angle3, angle4, angle5, angle6]
        //: roate.keyTimes = [(du1), (du2), (du3), (du4), (du5), (du6)]
        roate.keyTimes = [du1, du2, du3, du4, du5, du6]

        // 缩放
        //: let zoom = CAKeyframeAnimation.init(keyPath: "transform.scale")
        let zoom = CAKeyframeAnimation(keyPath: (String(appDateId) + String(app_cameraMsg)))
        //: zoom.values = [(1.0), (1.2), (1.0)]
        zoom.values = [1.0, 1.2, 1.0]
        //: zoom.keyTimes = [(0), (0.5), (1.0)]
        zoom.keyTimes = [0, 0.5, 1.0]

        //
        //: let groupAnnimation = CAAnimationGroup.init()
        let groupAnnimation = CAAnimationGroup()
        //: groupAnnimation.autoreverses = false
        groupAnnimation.autoreverses = false
        //: groupAnnimation.animations = [roate, zoom]
        groupAnnimation.animations = [roate, zoom]
        //: groupAnnimation.duration = 1.0
        groupAnnimation.duration = 1.0
        //: groupAnnimation.repeatCount = 2
        groupAnnimation.repeatCount = 2
        //: groupAnnimation.isRemovedOnCompletion = false
        groupAnnimation.isRemovedOnCompletion = false
        //: groupAnnimation.fillMode = .forwards
        groupAnnimation.fillMode = .forwards
        //: cleanBtn.layer.add(groupAnnimation, forKey: "zoom&shake")
        cleanBtn.layer.add(groupAnnimation, forKey: (String(userModelId.suffix(5)) + userApplicationKey.lowercased()))
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func motility() {
        //: TalkingPermissionTool.checkPushNotification { isEnable in
        CustomPermissionTool.selfRegard { isEnable in

            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if isEnable {
                if isEnable {
                    //: self.noticeView.isHidden = true
                    self.noticeView.isHidden = true
                    //: self.func__hideNotificationTipView(hide: true)
                    self.outsideWorldView(hide: true)
                    //: }else{
                } else {
                    /// 页面顶部提示
                    //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
                    let today = NSDate.errorFormat(date: Date(), dateFormat: (mainDuringPath.replacingOccurrences(of: "layer", with: "yy") + "-MM-dd"))
                    //: if let closeDateStr = Defaults.string(forKey: TalkingMessageTabCloseNotificationsKey), today == closeDateStr {
                    if let closeDateStr = constDevicePath.string(forKey: kTopStatusUseMessage), today == closeDateStr {
                        //: self.func__hideNotificationTipView(hide: true)
                        self.outsideWorldView(hide: true)
                        //: }else{
                    } else {
                        //: self.func__hideNotificationTipView(hide: false)
                        self.outsideWorldView(hide: false)
                    }
                    /// 弹框逻辑
                    //: let isShow = Defaults.bool(forKey: TalkingMessageTabTurnOnNotificationsKey)
                    let isShow = constDevicePath.bool(forKey: user_screenErrHalfTitle)
                    //: if !isShow {
                    if !isShow {
                        //: Defaults.set(true, forKey: TalkingMessageTabTurnOnNotificationsKey)
                        constDevicePath.set(true, forKey: user_screenErrHalfTitle)
                        //: TalkingAlertShow.alert(title: nil,
                        SizeReactiveCompatible.exceptHeader(title: nil,
                                                      //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                                      message: String(bytes: showNoData.reversed(), encoding: .utf8)!.viewfinder(const_onFormat),
                                                      //: leftBtnTitle: "Cancel".localized,
                                                      leftBtnTitle: (String(kLabelHiddenLetData)).localized,
                                                      //: rightBtnTitle: "Settings".localized) {
                                                      rightBtnTitle: (String(notiColorTitle.suffix(6)) + data_clickUrl.replacingOccurrences(of: "bottom", with: "s")).localized)
                        {
                            //: TalkingAlertShow.hideAlert()
                            SizeReactiveCompatible.obstruct()
                            //: return
                            //: } rightBlock: {
                        } rightBlock: {
                            //: if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                            if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                                //: UIApplication.shared.open(settingsUrl)
                                UIApplication.shared.open(settingsUrl)
                            }
                        }
                    }
                }
            }
        }
    }

    //: private func func__hideNotificationTipView(hide: Bool) {
    private func outsideWorldView(hide: Bool) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if hide{
            if hide {
                //: self.noticeView.isHidden = true
                self.noticeView.isHidden = true
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight)
                    make.top.equalToSuperview().offset(constLiveErrorMessage)
                }
                //: self.slideVC.viewHeight = ScreenHeight - StatusBarHeight - TabBarViewHeight
                self.slideVC.viewHeight = notiKeyTitle - constLiveErrorMessage - app_tableNoHeightName
                //: }else{
            } else {
                //: self.noticeView.isHidden = false
                self.noticeView.isHidden = false
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight + self.noticeView.viewHeight)
                    make.top.equalToSuperview().offset(constLiveErrorMessage + self.noticeView.viewHeight)
                }
                //: self.slideVC.viewHeight = ScreenHeight - self.noticeView.bottom - TabBarViewHeight
                self.slideVC.viewHeight = notiKeyTitle - self.noticeView.bottom - app_tableNoHeightName
            }
        }
    }
}

// MARK: - 通知

//: extension TalkingMessageViewController {
extension ControllerPanThen {
    /// who like me 红点通知
    //: @objc func showbadgNumberNotif(notification: NSNotification) {
    @objc func getDownGift(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let badNumber: Int  = userinfo["badNumber"] as! Int
        let badNumber: Int = userinfo[(String(const_toolMsg.prefix(4)) + String(user_kindPathValue))] as! Int
        //: badgLB.isHidden = false
        badgLB.isHidden = false
        //: if badNumber > 99 {
        if badNumber > 99 {
            //: badgLB.text = "99+"
            badgLB.text = "99+"
            //: } else if badNumber<=0 {
        } else if badNumber <= 0 {
            //: badgLB.isHidden = true
            badgLB.isHidden = true
            //: badgLB.text = "0"
            badgLB.text = "0"
            //: } else {
        } else {
            //: badgLB.text = String(badNumber)
            badgLB.text = String(badNumber)
        }
    }
}

// MARK: - Layout

//: extension TalkingMessageViewController {
extension ControllerPanThen {
    /// UI
    //: private func createUI() {
    private func boxSub() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white

        //: view.addSubview(colorImageView)
        view.addSubview(colorImageView)
        //: view.addSubview(noticeView)
        view.addSubview(noticeView)
        //: self.addChild(slideVC)
        self.addChild(slideVC)

        //: self.view.addSubview(slideVC.view)
        self.view.addSubview(slideVC.view)
        //: slideVC.view.backgroundColor = UIColor.clear
        slideVC.view.backgroundColor = UIColor.clear
        //: slideVC.view.snp.makeConstraints { make in
        slideVC.view.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(constLiveErrorMessage)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }

        //: for btn in slideVC.allBtn {
        for btn in slideVC.allBtn {
            //: let curenbrn: UIButton = btn
            let curenbrn: UIButton = btn
            //: if curenbrn.titleLabel!.text == "Who like me".localized {
            if curenbrn.titleLabel!.text == (String(data_effectId) + String(k_renderTitle.suffix(8))).localized {
                //: (curenbrn as AnyObject).addSubview(badgLB)
                (curenbrn as AnyObject).addSubview(badgLB)
                //: badgLB.snp.makeConstraints { make in
                badgLB.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
                //: badgLB.isHidden = true
                badgLB.isHidden = true
                //: } else if (curenbrn.titleLabel!.text == "Messages".localized) {
            } else if curenbrn.titleLabel!.text == (String(constRangePath) + String(noti_theData)).localized {
                //: (curenbrn as AnyObject).addSubview(msgNumLabel)
                (curenbrn as AnyObject).addSubview(msgNumLabel)
                //: msgNumLabel.snp.makeConstraints { make in
                msgNumLabel.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
            }
        }

        //: view.addSubview(cleanBtn)
        view.addSubview(cleanBtn)
        //: cleanBtn.snp.makeConstraints { make in
        cleanBtn.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top)
            make.top.equalTo(slideVC.view.snp.top)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.size.equalTo(CGSize(width: 44, height: 44))
            make.size.equalTo(CGSize(width: 44, height: 44))
        }

        //: view.addSubview(netTipLabel)
        view.addSubview(netTipLabel)
        //: netTipLabel.snp.makeConstraints { make in
        netTipLabel.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top).offset(44)
            make.top.equalTo(slideVC.view.snp.top).offset(44)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(30)
            make.height.equalTo(30)
        }
    }

    /// 绑定事件
    //: private func bindInteraction() {
    private func republicanPartyFee() {
        //: ModelDataV2Listener.shared.rx
        ModelDataV2Listener.shared.rx
            //: .observeWeakly(Bool.self, "isConnection")
            .observeWeakly(Bool.self, (String(user_layerThoughtFormat) + noti_positionMessage.replacingOccurrences(of: "voice", with: "n")))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.watch()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: PunctuateThen.share.rx.observeWeakly(Int.self, "networkStatus")
        PunctuateThen.share.rx.observeWeakly(Int.self, (String(const_extendedName.prefix(8)) + showLayerNowNameId.replacingOccurrences(of: "equal", with: "at")))
            //: .subscribe(onNext: { [weak self]  (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.watch()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // 展示全部红点
        //: PunctuateThen.share.rx.observeWeakly(Int.self, "unreadMessageNum")
        PunctuateThen.share.rx.observeWeakly(Int.self, (String(constIndexPathId) + String(constPicText.prefix(5))))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let valueInt = value ?? 0
                let valueInt = value ?? 0
                //: self.func__messagebadgLBState(num: valueInt)
                self.thrustNum(num: valueInt)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: cleanBtn.rx.controlEvent(.touchUpInside)
        cleanBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: let config = ShowAlertConfig()
                let config = CurtilageAlertConfig()
                //: config.alignment = .center
                config.alignment = .center

                //: TalkingAlertShow.customAlert(message: "Do you want to mark all messages as read?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
                SizeReactiveCompatible.buttonEnter(message: String(bytes: k_rangeUpgradeValue.map{infoToPath(back: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(kLabelHiddenLetData)).localized, rightBtnTitle: "OK".localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    SizeReactiveCompatible.obstruct()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: V2TIMManager.sharedInstance().markAllMessage {
                    V2TIMManager.sharedInstance().markAllMessage {
                        //: UserDefaults.standard.set(true, forKey: isShowCleanAnimatCacheKey)
                        UserDefaults.standard.set(true, forKey: kPartyClickStr)
                        //: } fail: { code, desc in
                    } fail: { code, desc in
                        //: UploadLogTool.writeLog(msg: "消息列表一键已读失败：code:\(code), desc:\(String(describing: desc))")
                        GestureLogTool.playChangeImage(msg: (data_whiteStr + "一键已读失\u{8d25}" + String(kUserModelMessage.suffix(6))) + "\(code)" + (String(constTableShareManagerMsg) + String(dataHeadTitleGameValue.prefix(2))) + "\(String(describing: desc))")
                    }
                    //: }, config: config)
                }, config: config)

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // who like me 红点通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showbadgNumberNotif(notification:)),
                                               selector: #selector(getDownGift(notification:)),
                                               //: name: WHOLIKEME_BADGENUMBER_NOTIF,
                                               name: data_barId,
                                               //: object: nil)
                                               object: nil)

        //: noticeView.closeBtnBlock = { [weak self] ()  -> Void in
        noticeView.closeBtnBlock = { [weak self] () in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.errorFormat(date: Date(), dateFormat: (mainDuringPath.replacingOccurrences(of: "layer", with: "yy") + "-MM-dd"))
            //: Defaults.set(today, forKey: TalkingMessageTabCloseNotificationsKey)
            constDevicePath.set(today, forKey: kTopStatusUseMessage)
            //: self.func__hideNotificationTipView(hide: true)
            self.outsideWorldView(hide: true)
        }

        //: NotificationCenter.default.rx.notification( UIApplication.willEnterForegroundNotification)
        NotificationCenter.default.rx.notification(UIApplication.willEnterForegroundNotification)
            //: .subscribe(onNext: { [weak self] (notification) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__turnOnSystemNotification()
                self.motility()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}
