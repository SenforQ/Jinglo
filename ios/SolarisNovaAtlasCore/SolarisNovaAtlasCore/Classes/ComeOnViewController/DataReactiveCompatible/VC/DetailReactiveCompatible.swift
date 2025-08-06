
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let main_meKey:[Character] = ["b","g","_","s","h","o","u","y","e","_","m","i","s","a","n","g","u"]
fileprivate let notiMakeMsg:String = "content image indexang_d"
fileprivate let notiMenuTitle:String = "EFAULT"

/*: "#777777" :*/
fileprivate let kHiddenPageText:String = "#777777"

/*: "#333333" :*/
fileprivate let dataStatusPhaseValue:String = "#33333"
fileprivate let appManagerName:String = "3"

/*: "Party" :*/
fileprivate let data_itemPath:String = "Partyback succeed make else sound"

/*: "Popular" :*/
fileprivate let kVoiceFormat:String = "edit withPopular"

/*: "Nearby" :*/
fileprivate let mainRangeData:String = "Nearbylack voice voice"

/*: "New" :*/
fileprivate let kRowTitle:[Character] = ["N","e","w"]

/*: "btn_popular_search_nor" :*/
fileprivate let app_timeFormat:String = "equal videobtn_p"
fileprivate let notiGalleryData:String = "let true of normal acceptar_se"
fileprivate let mainDetailText:String = "imagec"
fileprivate let showTopFrameData:String = "h_norwhite view"

/*: "icon_live_nor" :*/
fileprivate let main_shareToolId:String = "text true post beauty sourceicon_live"
fileprivate let userEnterByFormat:String = "_norsize class at gesture"

/*: "btn_popular_ranking_nor" :*/
fileprivate let dataGestureKey:[Character] = ["b","t","n","_","p","o","p","u","l","a","r"]
fileprivate let dataManagerName:[Character] = ["_","r","a","n","k"]
fileprivate let appLevelText:String = "ing_nortype gesture else frame if"

/*: "Congratulation on your chance to join the Star Plan !" :*/
fileprivate let main_byGroupMsg:[UInt8] = [0x63,0x4f,0x4e,0x47,0x52,0x41,0x54,0x55,0x4c,0x41,0x54,0x49,0x4f,0x4e,0x0,0x4f,0x4e,0x0,0x59,0x4f,0x55,0x52,0x0,0x43,0x48,0x41,0x4e,0x43,0x45,0x0,0x54,0x4f,0x0,0x4a,0x4f,0x49,0x4e,0x0,0x54,0x48,0x45,0x0,0x73,0x54,0x41,0x52,0x0,0x70,0x4c,0x41,0x4e,0x0,0x1]

private func voiceMain(leading num: UInt8) -> UInt8 {
    return num ^ 32
}

/*: "No, thanks" :*/
fileprivate let show_textMessage:[Character] = ["N","o",","," ","t","h","a","n","k","s"]

/*: "Find out more" :*/
fileprivate let mainPlayerName:String = "f"
fileprivate let show_halfFormat:String = "center message againstind o"

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let userMeAddValue:[Character] = ["c","l","i","c","k","S","t","a","r","P","r","o","j","e","c","t","p","o","p","-"]
fileprivate let app_modelStr:[Character] = ["u","p","s","C","a","n","c","e","l"]

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let app_withMsg:[UInt8] = [0x38,0x37,0x32,0x38,0x30,0x8,0x2f,0x3a,0x29,0xb,0x29,0x34,0x31,0x3e,0x38,0x2f,0x2b,0x34,0x2b,0x76,0x2e,0x2b,0x28,0x1d,0x32,0x35,0x3f,0x34,0x2e,0x2f,0x36,0x34,0x29,0x3e]

private func nextThought(frame num: UInt8) -> UInt8 {
    return num ^ 91
}

/*: "Allow %@ to send you notifications?" :*/
fileprivate let app_hiddenData:[UInt8] = [0xcb,0xe6,0xe6,0xe5,0xfd,0xaa,0xaf,0xca,0xaa,0xfe,0xe5,0xaa,0xf9,0xef,0xe4,0xee,0xaa,0xf3,0xe5,0xff,0xaa,0xe4,0xe5,0xfe,0xe3,0xec,0xe3,0xe9,0xeb,0xfe,0xe3,0xe5,0xe4,0xf9,0xb5]

private func emptyUp(segment num: UInt8) -> UInt8 {
    return num ^ 138
}

/*: "Cancel" :*/
fileprivate let userTotalTitle:String = "height height equal modelCancel"

/*: "Settings" :*/
fileprivate let data_reportUrl:String = "lab let true videoSettings"

/*: _ :*/
fileprivate let showRawMessage:String = "_"

/*: "male" :*/
fileprivate let show_liveValue:[UInt8] = [0x67,0x6b,0x66,0x6f]

private func addTable(model num: UInt8) -> UInt8 {
    return num ^ 10
}

/*: "female" :*/
fileprivate let constUserData:String = "fetalkle"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DetailReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import JXPagingView
import JXPagingView
//: import JXSegmentedView
import JXSegmentedView
//: import UIKit
import UIKit

//: class TalkingSocialViewController: TalkingBaseViewController {
class DetailReactiveCompatible: SizeViewController {
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()
    //: private var  isNearbyShow = false
    private var isNearbyShow = false
    //: var  seleteIndex = 1
    var seleteIndex = 1
    //: private var liveTipsTimer: Timer?
    private var liveTipsTimer: Timer? /// 头像动画timer

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: GiftFloatViewManager.shared.activeWhenShow()
        DirectionViewManager.shared.sole()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: GiftFloatViewManager.shared.stopWhenDismiss()
        DirectionViewManager.shared.sizeVoice()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.setupSubviews()
        self.awakeHead()
        //: self.setupSubViewsConstraint()
        self.currentConstraint()
        //: self.addNotification()
        self.equalInNotification()
        //: self.func__checkStarPlanNeedShow()
        self.starResume()
        //: self.func__turnOnSystemNotification()
        self.clickNotification()
        //: self.pushIsClubVideo()
        self.toBaseballClubVideo()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: stop_liveTipsTimer()
        textNumbereraction()
    }

    // MARK: - Lazy load

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.BundleImageNamed(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.thoughtImageBundleSizeText(name: (String(main_meKey) + String(notiMakeMsg.suffix(5)) + notiMenuTitle.lowercased())))
        //: imgV.isUserInteractionEnabled = false
        imgV.isUserInteractionEnabled = false
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var categoryView: JXSegmentedView = {
    private lazy var categoryView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: NavigationBarHeight))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 0, y: constLiveErrorMessage, width: kQueryValue, height: constGameData))
        //: segmentedDataSource.itemSpacing = 18
        segmentedDataSource.itemSpacing = 18
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.isItemSpacingAverageEnabled = false
        segmentedDataSource.isItemSpacingAverageEnabled = false
        //: segmentedDataSource.isSelectedAnimable = false
        segmentedDataSource.isSelectedAnimable = false
        //: segmentedDataSource.titleNormalColor = UIColor.init(hex: "#777777")!
        segmentedDataSource.titleNormalColor = UIColor(hex: (kHiddenPageText.capitalized))!
        //: segmentedDataSource.titleSelectedColor = UIColor.init(hex: "#333333")!
        segmentedDataSource.titleSelectedColor = UIColor(hex: (dataStatusPhaseValue.capitalized + appManagerName.capitalized))!
        //: segmentedDataSource.titleNormalFont = .pingfangFont(type: .Medium, fontSize: 16)
        segmentedDataSource.titleNormalFont = .clickLarge(type: .Medium, fontSize: 16)
        //: segmentedDataSource.titleSelectedFont = .pingfangFont(type: .Medium, fontSize: 18)
        segmentedDataSource.titleSelectedFont = .clickLarge(type: .Medium, fontSize: 18)
//        segmentedDataSource.itemWidthIncrement = 0
        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 12
        indicator.indicatorWidth = 12
        //: indicator.indicatorHeight = 4
        indicator.indicatorHeight = 4
        //: indicator.verticalOffset = 4
        indicator.verticalOffset = 4
        //: indicator.lineStyle = .normal
        indicator.lineStyle = .normal
        //: indicator.indicatorColor = UIColor.init(hex: "#333333")!
        indicator.indicatorColor = UIColor(hex: (dataStatusPhaseValue.capitalized + appManagerName.capitalized))!
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.delegate = self
        segmentedView.delegate = self
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: segmentedView.defaultSelectedIndex = 1
        segmentedView.defaultSelectedIndex = 1
//        segmentedView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
            segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        //: let view = JXPagingListRefreshView.init(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.frame = CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight-StatusBarHeight)
        view.frame = CGRect(x: 0, y: constLiveErrorMessage, width: kQueryValue, height: notiKeyTitle - app_tableNoHeightName - constLiveErrorMessage)
//        view.pinSectionHeaderVerticalOffset = 20
        //: view.defaultSelectedIndex = 1
        view.defaultSelectedIndex = 1
        //: view.mainTableView.backgroundColor = .clear
        view.mainTableView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: view.transform = CGAffineTransform(scaleX: -1, y: 1)
            view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = {
        //: var array = [String]()
        var array = [String]()

        //: array.append("Party".localized)
        array.append((String(data_itemPath.prefix(5))).localized)
        //: array.append("Popular".localized)
        array.append((String(kVoiceFormat.suffix(7))).localized)
        //: array.append("Nearby".localized)
        array.append((String(mainRangeData.prefix(6))).localized)
        //: array.append("New".localized)
        array.append((String(kRowTitle)).localized)
        //: return array
        return array
        //: }()
    }()

    //: lazy var dataVC: [UIViewController] = {
    lazy var dataVC: [UIViewController] = {
        //: var array = [UIViewController]()
        var array = [UIViewController]()
        //: for i in titleArray {
        for i in titleArray {
            //: if i == "Party".localized {
            if i == (String(data_itemPath.prefix(5))).localized {
                //: let partyVC = PartyListViewController.init()
                let partyVC = TableSelectDataSource()
                //: array.append(partyVC)
                array.append(partyVC)
                //: }else{
            } else {
                //: let popularVC = SocialPopularViewController.init()
                let popularVC = ComeOnViewController()
                //: if i == "Popular".localized {
                if i == (String(kVoiceFormat.suffix(7))).localized {
                    //: popularVC.tabType = .hot
                    popularVC.tabType = .hot
                    //: } else if i == "Nearby".localized {
                } else if i == (String(mainRangeData.prefix(6))).localized {
                    //: popularVC.tabType = .nearby
                    popularVC.tabType = .nearby
                    //: } else if i == "New".localized {
                } else if i == (String(kRowTitle)).localized {
                    //: popularVC.tabType = .new
                    popularVC.tabType = .new
                }
                //: array.append(popularVC)
                array.append(popularVC)
            }
        }
        //: return array
        return array
        //: }()
    }()

    //: private lazy var searchBtn: UIButton = {
    private lazy var searchBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_popular_search_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(app_timeFormat.suffix(5)) + "opul" + String(notiGalleryData.suffix(5)) + mainDetailText.replacingOccurrences(of: "image", with: "ar") + String(showTopFrameData.prefix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(searchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(buttonClickSelect), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_live_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(main_shareToolId.suffix(9)) + String(userEnterByFormat.prefix(4)))), for: .normal)
        //: btn.addTarget(self, action: #selector(liveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(awakeClick), for: .touchUpInside)
        //: btn.isHidden = !(PunctuateThen.share.appStatus == AppSkinStatus.special.rawValue && PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue)
        btn.isHidden = !(PunctuateThen.share.appStatus == HiddenHashableRepresentation.special.rawValue && PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rankBtn: UIButton = {
    private lazy var rankBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_popular_ranking_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(dataGestureKey) + String(dataManagerName) + String(appLevelText.prefix(7)))), for: .normal)
        //: btn.addTarget(self, action: #selector(rankButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(emptyMake), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 开播提醒弹窗定时器

//: extension TalkingSocialViewController {
extension DetailReactiveCompatible {
    /// 跳转随机匹配
    //: private func pushIsClubVideo() {
    private func toBaseballClubVideo() {
        //: if PunctuateThen.share.loginUserMode.jumpType == 1 && PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue && PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if PunctuateThen.share.loginUserMode.jumpType == 1, PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue, PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                //: RangePushManager.share.func__pushToRandomVideoVC(isBeginRand: false)
                RangePushManager.share.metadataRand(isBeginRand: false)
            }
        }
    }

    /// 排行榜按钮点击事件
    //: @objc private func rankButtonClick() {
    @objc private func emptyMake() {
        //: let rankVC = SocialRankTabVC()
        let rankVC = SingleTopDataSource()
        //: self.navigationController?.pushViewController(rankVC, animated: true)
        self.navigationController?.pushViewController(rankVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickRankIngButton)
        const_screenFormat.occurrenceIn(eventID: k_changeName)
    }

    /// "mf/index/getConfig"请求成功后创建定时器
    //: @objc func setliveTipsTimer() {
    @objc func setlive() {
        //: if PunctuateThen.share.appUserConfigMode.liveDialogInterval > 0 &&
        if PunctuateThen.share.appUserConfigMode.liveDialogInterval > 0,
           //: PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue &&
           PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue,
           //: PunctuateThen.share.appStatus != AppSkinStatus.special.rawValue {
           PunctuateThen.share.appStatus != HiddenHashableRepresentation.special.rawValue
        {
            //: initLiveTipsTimer()
            signature()
            //: liveTipsTimer?.fireDate = Date.init(timeIntervalSinceNow: TimeInterval(PunctuateThen.share.appUserConfigMode.liveDialogInterval))
            liveTipsTimer?.fireDate = Date(timeIntervalSinceNow: TimeInterval(PunctuateThen.share.appUserConfigMode.liveDialogInterval))
        }
    }

    /// 展示开闭提醒弹窗
    //: @objc func setLiveTipsPopView() {
    @objc func colorful() {
        // 模态出来的webView不展示直播提醒弹窗
        //: if let currentVC = self.currentViewController() {
        if let currentVC = self.occurrentWith() {
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: RubricViewController.self),
               //: (currentVC as! TalkingWebViewController).isModal == true {
               (currentVC as! RubricViewController).isModal == true
            {
                //: return
                return
            }
        }

        //: if PunctuateThen.share.appUserConfigMode.enableLive &&
        if PunctuateThen.share.appUserConfigMode.enableLive,
           //: !TalkingLiveManager.shared().isLive &&
           !LogLiveManager.anUp().isLive,
           //: !TalkingSocketManager.shared.workSpace &&
           !WrittenRecordSocketDelegate.shared.workSpace,
           //: !TalkingSocketManager.shared.isCalling {
           !WrittenRecordSocketDelegate.shared.isCalling
        {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            MessageThen.shared.glory()
        }
    }

    /// 初始化定时器
    //: func initLiveTipsTimer() {
    func signature() {
        //: let timeInterval = TimeInterval(PunctuateThen.share.appUserConfigMode.liveDialogInterval)
        let timeInterval = TimeInterval(PunctuateThen.share.appUserConfigMode.liveDialogInterval)
        //: liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(setLiveTipsPopView), userInfo: nil, repeats: true)
        liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(colorful), userInfo: nil, repeats: true)
        //: RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
        RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
    }

    /// 停止定时器
    //: @objc func stop_liveTipsTimer() {
    @objc func textNumbereraction() {
        //: if self.liveTipsTimer != nil {
        if self.liveTipsTimer != nil {
            //: self.liveTipsTimer?.invalidate()
            self.liveTipsTimer?.invalidate()
            //: self.liveTipsTimer?.fire()
            self.liveTipsTimer?.fire()
            //: self.liveTipsTimer = nil
            self.liveTipsTimer = nil
        }
    }

    /// 开启直播按钮点击事件
    //: @objc func liveBtnClick() {
    @objc func awakeClick() {
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: notiStatusData, object: nil)
    }
}

// MARK: - Public Event

//: extension TalkingSocialViewController {
extension DetailReactiveCompatible {
    /// 检测巨星计划弹窗是否需要弹出
    //: private func func__checkStarPlanNeedShow() {
    private func starResume() {
        //: guard PunctuateThen.share.showWindow == true else { return }
        guard PunctuateThen.share.showWindow == true else { return }
        //: PunctuateThen.share.showWindow = false
        PunctuateThen.share.showWindow = false

        // 加入巨星计划弹窗
        //: TalkingAlertShow.alert(title: nil,
        SizeReactiveCompatible.exceptHeader(title: nil,
                                      //: message: "Congratulation on your chance to join the Star Plan !",
                                      message: String(bytes: main_byGroupMsg.map{voiceMain(leading: $0)}, encoding: .utf8)!,
                                      //: leftBtnTitle: "No, thanks",
                                      leftBtnTitle: (String(show_textMessage)),
                                      //: rightBtnTitle: "Find out more") {
                                      rightBtnTitle: (mainPlayerName.uppercased() + String(show_halfFormat.suffix(5)) + "ut more"))
        {
            //: TalkingAlertShow.hideAlert()
            SizeReactiveCompatible.obstruct()
            // 统计点击首页巨星邀请弹窗中“no,thanks”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsCancel")
            ExamineThen.share.sendData(key: (String(userMeAddValue) + String(app_modelStr)))

            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            SizeReactiveCompatible.obstruct()
            // 跳转巨星计划页
            //: RangePushManager.share.func__pushToWebVC(webViewType: .StarPlanIndex)
            RangePushManager.share.barOn(webViewType: .StarPlanIndex)

            // 统计点击首页巨星邀请弹窗中“Find out more”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsFindoutmore")
            ExamineThen.share.sendData(key: String(bytes: app_withMsg.map{nextThought(frame: $0)}, encoding: .utf8)!)
        }
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func clickNotification() {
        // 有随机视频，不弹出开启推送弹窗
        //: if PunctuateThen.share.loginUserMode.jumpType == 1 &&
        if PunctuateThen.share.loginUserMode.jumpType == 1,
           //: PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue &&
           PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue,
           //: PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue {
           PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue
        {
            //: return
            return
        }

        //: let isShow = Defaults.bool(forKey: TalkingHomeTabTurnOnNotificationsKey)
        let isShow = constDevicePath.bool(forKey: appTimeStr)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        //: TalkingPermissionTool.checkPushNotification { isEnable in
        CustomPermissionTool.selfRegard { isEnable in
            //: guard isEnable == false else { return }
            guard isEnable == false else { return }
            //: DispatchQueue.main.sync {
            DispatchQueue.main.sync {
                //: Defaults.set(true, forKey: TalkingHomeTabTurnOnNotificationsKey)
                constDevicePath.set(true, forKey: appTimeStr)
                //: TalkingAlertShow.alert(title: nil,
                SizeReactiveCompatible.exceptHeader(title: nil,
                                              //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                              message: String(bytes: app_hiddenData.map{emptyUp(segment: $0)}, encoding: .utf8)!.viewfinder(const_onFormat),
                                              //: leftBtnTitle: "Cancel".localized,
                                              leftBtnTitle: (String(userTotalTitle.suffix(6))).localized,
                                              //: rightBtnTitle: "Settings".localized) {
                                              rightBtnTitle: (String(data_reportUrl.suffix(8))).localized)
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

    /// 搜索按钮点击事件
    //: @objc private func searchButtonClick() {
    @objc private func buttonClickSelect() {
        //: let searchVC = TalkingSearchTabViewController()
        let searchVC = FourthViewDelegate()
        //: self.navigationController?.pushViewController(searchVC, animated: true)
        self.navigationController?.pushViewController(searchVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickSearchButton)
        const_screenFormat.occurrenceIn(eventID: constServerConnectHeightName)
    }

    /// 切换到party
    //: func switchParty() {
    func sinceList() {
        //: categoryView.defaultSelectedIndex = 0
        categoryView.defaultSelectedIndex = 0
        //: categoryView.reloadData()
        categoryView.reloadData()
        //: pagerView.defaultSelectedIndex = 0
        pagerView.defaultSelectedIndex = 0
        //: pagerView.reloadData()
        pagerView.reloadData()
    }
}

// MARK: - NotificationCenter

//: extension TalkingSocialViewController {
extension DetailReactiveCompatible {
    /// 添加通知
    //: private func addNotification() {
    private func equalInNotification() {
        // 礼物首页飘屏
        //: GiftFloatViewManager.shared.addNotifications()
        DirectionViewManager.shared.popBy()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(setliveTipsTimer),
                                               selector: #selector(setlive),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: constTabValue,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_liveTipsTimer),
                                               selector: #selector(textNumbereraction),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: k_deviceKey,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXSegmentedViewDelegate {
extension DetailReactiveCompatible: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didSelectedItemAt index: Int) {
        //: if seleteIndex == index {
        if seleteIndex == index {
            //: return
            return
        }
        //: seleteIndex = index
        seleteIndex = index
        //: if index == 0 {
        if index == 0 {
            //: uploadRecord.uploadRecordEvent(eventID:"\(click_HomePartyTab)_\(PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue ? "male":"female")")
            const_screenFormat.occurrenceIn(eventID: "\(showAskName)_\(PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue ? String(bytes: show_liveValue.map{addTable(model: $0)}, encoding: .utf8)! : (constUserData.replacingOccurrences(of: "talk", with: "ma")))")
            //: }else if index == 1 {
        } else if index == 1 {
            //: let popularVC = dataVC[index] as? SocialPopularViewController
            let popularVC = dataVC[index] as? ComeOnViewController
            //: popularVC?.showSettingsAlertView()
            popularVC?.constraintViewExhibitAlert() // 展示定位设置弹窗
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNearbyListNoP)
            const_screenFormat.occurrenceIn(eventID: constUseSumUrl)
            //: } else if index == 2 {
        } else if index == 2 {
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNewListNoP)
            const_screenFormat.occurrenceIn(eventID: k_senseLiveName)
        }
    }

    // 添加该方法是为了防止首次进入应用，直接点击nearby无法初始化页面的情况 【该方法只会在点击标题时调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didClickSelectedItemAt index: Int) {
        // 初始点击item时，创建vc

        //: if index == 1 && !isNearbyShow {
        if index == 1 && !isNearbyShow {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        //: pagerView.listContainerView.reloadData()
        pagerView.listContainerView.reloadData()
    }

    //: func segmentedView(_ segmentedView: JXSegmentedView, didScrollSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didScrollSelectedItemAt _: Int) {}
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXPagingViewDelegate {
extension DetailReactiveCompatible: JXPagingViewDelegate {
    //: func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
    func pagingView(_: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }
        //: if index == 1 {
        if index == 1 {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: let popularVC = dataVC[type]
        let popularVC = dataVC[type]
        //: return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
        return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
    }

    //: func tableHeaderViewHeight(in pagingView: JXPagingView) -> Int {
    func tableHeaderViewHeight(in _: JXPagingView) -> Int {
        //: return 0
        return 0
    }

    //: func tableHeaderView(in pagingView: JXPagingView) -> UIView {
    func tableHeaderView(in _: JXPagingView) -> UIView {
        //: return UIView()
        return UIView()
    }

    //: func heightForPinSectionHeader(in pagingView: JXPagingView) -> Int {
    func heightForPinSectionHeader(in _: JXPagingView) -> Int {
        //: return Int(categoryView.frame.height)
        return Int(categoryView.frame.height)
    }

    //: func viewForPinSectionHeader(in pagingView: JXPagingView) -> UIView {
    func viewForPinSectionHeader(in _: JXPagingView) -> UIView {
        //: return categoryView
        return categoryView
    }

    //: func numberOfLists(in pagingView: JXPagingView) -> Int {
    func numberOfLists(in _: JXPagingView) -> Int {
        //: return titleArray.count
        return titleArray.count
    }
}

// MARK: - Layout

//: extension TalkingSocialViewController {
extension DetailReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func awakeHead() {
        // 导航底部渐变背景
        //: self.view.addSubview(pagerView)
        self.view.addSubview(pagerView)
        //: categoryView.addSubview(searchBtn)
        categoryView.addSubview(searchBtn)
        //: categoryView.addSubview(rankBtn)
        categoryView.addSubview(rankBtn)
        //: self.view.addSubview(bottomImgView)
        self.view.addSubview(bottomImgView)
        //: self.view.addSubview(liveBtn)
        self.view.addSubview(liveBtn)
        //: self.view.bringSubviewToFront(liveBtn)
        self.view.bringSubviewToFront(liveBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func currentConstraint() {
        //: searchBtn.snp.makeConstraints { make in
        searchBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
        //: rankBtn.snp.makeConstraints { make in
        rankBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }

        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + constLiveErrorMessage)
        }
        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.bottom.width.equalTo(-122)
            make.bottom.width.equalTo(-122)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.size.equalTo(56)
            make.size.equalTo(56)
        }
    }
}
