
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_regularData:[UInt8] = [0x9f,0x98,0x9f,0x82,0xde,0x95,0x99,0x92,0x93,0x84,0xcc,0xdf,0xd6,0x9e,0x97,0x85,0xd6,0x98,0x99,0x82,0xd6,0x94,0x93,0x93,0x98,0xd6,0x9f,0x9b,0x86,0x9a,0x93,0x9b,0x93,0x98,0x82,0x93,0x92]

private func withView(title num: UInt8) -> UInt8 {
    return num ^ 246
}

/*: "#EEEEEE" :*/
fileprivate let constFrameValue:[Character] = ["#","E","E","E","E","E","E"]

/*: "tabBar" :*/
fileprivate let data_styleLabListFormat:String = "image var return datatabBa"
fileprivate let user_viewKey:String = "next"

/*: "home" :*/
fileprivate let mainFillMessage:String = "hoequale"

/*: "user" :*/
fileprivate let dataAppMessage:[Character] = ["u","s","e","r"]

/*: "icon" :*/
fileprivate let app_actionFormat:String = "icomanager"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeHasDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingTabBarViewController: UITabBarController, UITabBarControllerDelegate {
class RangeHasDelegate: UITabBarController, UITabBarControllerDelegate {
    //: var tabBarVCType: TarBarControllerViewType?
    var tabBarVCType: EditionHiddenViewType?
    //: var tabBarView = TalkingTabBar()
    var tabBarView = BlockHasDelegate()

    //: init(tabBarType: TarBarControllerViewType) {
    init(tabBarType: EditionHiddenViewType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.delegate = self
        self.delegate = self
        //: self.tabBarVCType = tabBarType
        self.tabBarVCType = tabBarType
        //: if tabBarType == .Taking {
        if tabBarType == .Taking {
            //: setupTabBar()
            matchApp()
            //: ProgressHUD.show()
            DirectThen.levelHandle()
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            ManagingDirectorThen.visible { succeed, _, _ in
                //: ProgressHUD.dismiss()
                DirectThen.cutWith()
                //: ModelDataV2Listener.shared.func__addDelegate(self)
                ModelDataV2Listener.shared.my(self)
                //: let tarItemTypes = self.tabBarConentTypes()
                let tarItemTypes = self.clickData()
                //: self.tabBarView.setupItemsWithArr(itemTypes: tarItemTypes as! Array<TabBarItemType>)
                self.tabBarView.toTypes(itemTypes: tarItemTypes as! [ListSignedNumber])
                //: self.func__setupControllersWith(itemTypes: tarItemTypes)
                self.putDoing(itemTypes: tarItemTypes)
                //: if PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue && PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue {
                if PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue && PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue {
                    //: self.selectTabbar(type: 0)
                    self.enterSize(type: 0)
                }
                //: self.func__configViewDidLoad()
                self.toView()

                //: if succeed && PunctuateThen.share.loginUserMode.remindBindEmail == true {
                if succeed && PunctuateThen.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: RangePushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                        RangePushManager.share.magnitudeSharedDorsalVertebra(isShowBack: false)
                    }
                }
            }
            //: } else {
        } else {
            //: func__setupControllersWith(itemTypes: self.tabBarConentTypes())
            putDoing(itemTypes: self.clickData())
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_regularData.map{withView(title: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        /// H5刷新index/getConfig配置信息接口
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getLoginUserConfig),
                                               selector: #selector(somebodyConfig),
                                               //: name: REFRESH_INDEX_GETCONFIG_NOTIFICATION,
                                               name: app_lengthData,
                                               //: object: nil)
                                               object: nil)

        /// 直播状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(anyError),
                                               //: name: LIVE_STATUS_CHANGE_NOTIFICATION,
                                               name: data_recordName,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(openLive),
                                               selector: #selector(rowLive),
                                               //: name: LIVE_NEED_OPEN_NOTIFICATION,
                                               name: notiStatusData,
                                               //: object: nil)
                                               object: nil)

        /// 语聊房状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(anyError),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: const_userFormat,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchTabbarHomeParty),
                                               selector: #selector(eventAtParty),
                                               //: name: SWITCH_TABBAR_HOME_PARTY_NOTIFICATION,
                                               name: k_messageMsg,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()
        //: tabBar.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBar.frame = CGRect(origin: CGPoint(x: 0, y: notiKeyTitle - app_tableNoHeightName), size: CGSize(width: kQueryValue, height: app_tableNoHeightName))
    }

    /// 初始化tabbar
    //: func setupTabBar() {
    func matchApp() {
        //: tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: notiKeyTitle - app_tableNoHeightName), size: CGSize(width: kQueryValue, height: app_tableNoHeightName))
        //: tabBarView.backgroundColor = .white
        tabBarView.backgroundColor = .white
        //: let backgroundImage = UIImage.imageFillColor(color: .white, size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        let backgroundImage = UIImage.textDown(color: .white, size: CGSize(width: kQueryValue, height: app_tableNoHeightName))
        //: tabBarView.backgroundImage = backgroundImage
        tabBarView.backgroundImage = backgroundImage

        //: let shadowImage = UIImage.imageFillColor(color: UIColor(hex: "#EEEEEE")!, size: CGSize(width: ScreenWidth, height: 0.5))
        let shadowImage = UIImage.textDown(color: UIColor(hex: (String(constFrameValue)))!, size: CGSize(width: kQueryValue, height: 0.5))
        //: tabBarView.shadowImage = shadowImage
        tabBarView.shadowImage = shadowImage

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .white
            tabBarAppearance.backgroundColor = .white
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = UIColor.separatorLineColor()
            tabBarAppearance.shadowColor = UIColor.loadstarColor()
            //: tabBarView.standardAppearance = tabBarAppearance
            tabBarView.standardAppearance = tabBarAppearance
        }
        //: setValue(tabBarView, forKey: "tabBar")
        setValue(tabBarView, forKey: (String(data_styleLabListFormat.suffix(5)) + user_viewKey.replacingOccurrences(of: "next", with: "r")))
    }

    //: func tabBarConentTypes() -> NSArray {
    func clickData() -> NSArray {
        //: if tabBarVCType == TarBarControllerViewType.Login {
        if tabBarVCType == EditionHiddenViewType.Login {
            //: return [TabBarItemType.Login]
            return [ListSignedNumber.Login]
            //: } else {
        } else {
            //: if PunctuateThen.share.appStatus == AppSkinStatus.special.rawValue {
            if PunctuateThen.share.appStatus == HiddenHashableRepresentation.special.rawValue {
                //: return [TabBarItemType.Social,
                return [ListSignedNumber.Social,
                        //: TabBarItemType.Moment,
                        ListSignedNumber.Moment,
                        //: TabBarItemType.Message,
                        ListSignedNumber.Message,
                        //: TabBarItemType.Account]
                        ListSignedNumber.Account]
                //: } else {
            } else {
                //: if PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue {
                if PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue { // 女性
                    //: return [TabBarItemType.Social,
                    return [ListSignedNumber.Social,
                            //: TabBarItemType.Moment,
                            ListSignedNumber.Moment,
                            //: TabBarItemType.Live,
                            ListSignedNumber.Live,
                            //: TabBarItemType.Message,
                            ListSignedNumber.Message,
                            //: TabBarItemType.Account]
                            ListSignedNumber.Account]
                    //: } else {
                } else { // 男性
                    //: return [TabBarItemType.Social,
                    return [ListSignedNumber.Social,
                            //: TabBarItemType.Moment,
                            ListSignedNumber.Moment,
                            //: TabBarItemType.Randow,
                            ListSignedNumber.Randow,
                            //: TabBarItemType.Message,
                            ListSignedNumber.Message,
                            //: TabBarItemType.Account]
                            ListSignedNumber.Account]
                }
            }
        }
    }

    //: func func__setupControllersWith(itemTypes: NSArray) {
    func putDoing(itemTypes: NSArray) {
        //: let tmp = NSMutableArray()
        let tmp = NSMutableArray()
        //: for itemType in itemTypes {
        for itemType in itemTypes {
            //: let VC = rootViewControllerFor(itemType: itemType as! TabBarItemType)
            let VC = dirigibleType(itemType: itemType as! ListSignedNumber)
            //: let navVC = TalkingNavigationController(rootViewController: VC)
            let navVC = DirectionReactiveCompatible(rootViewController: VC)
            //: navVC.tabBarType = (itemType as! TabBarItemType)
            navVC.tabBarType = (itemType as! ListSignedNumber)
            //: tmp.add(navVC)
            tmp.add(navVC)
        }
        //: setViewControllers(tmp as? [UIViewController], animated: true)
        setViewControllers(tmp as? [UIViewController], animated: true)
    }

    //: func rootViewControllerFor(itemType: TabBarItemType) -> UIViewController {
    func dirigibleType(itemType: ListSignedNumber) -> UIViewController {
        //: let ret: UIViewController
        let ret: UIViewController
        //: switch itemType {
        switch itemType {
        //: case .Social:
        case .Social:
            //: ret = TalkingSocialViewController()
            ret = DetailReactiveCompatible()

        //: case .Moment:
        case .Moment:
            //: ret = TalkingMomentViewController()
            ret = CountoNavigationDelegate()

        //: case .FreeMoment:
        case .FreeMoment:
            //: ret = UIViewController()
            ret = UIViewController()
            /// 使用view，会导致VC的viewDidLoad调用，避免别的控制器没显示时，就调用viewDidLoad
            /// 虚拟的VC根据tag，正常的VC可以根据class判断

        //: case .Live:
        case .Live:
            //: ret = UIViewController()
            ret = UIViewController()

        //: case .Message:
        case .Message:
            //: ret = TalkingMessageViewController()
            ret = ControllerPanThen()

        //: case .Account:
        case .Account:
            //: ret = TalkingMeViewController()
            ret = HiddenDataSource()

        //: case .Login:
        case .Login:
            //: ret = TalkingLoginMainViewController()
            ret = ThrowViewController()
            //: ret.hidesBottomBarWhenPushed = true
            ret.hidesBottomBarWhenPushed = true

        //: case .Randow:
        case .Randow:
            //: ret = TalkingMaleStaticRandomVideoVC()
            ret = StatusViewController()

        //: case .meet:
        case .meet:
            //: ret = UIViewController()
            ret = UIViewController()
        }

        //: ret.view.tag = itemType.rawValue
        ret.view.tag = itemType.rawValue
        //: return ret
        return ret
    }

    //: override var selectedViewController: UIViewController? {
    override var selectedViewController: UIViewController? {
        //: willSet {
        willSet {
            //: let nav = newValue as! TalkingNavigationController
            let nav = newValue as! DirectionReactiveCompatible
            //: tabBarView.setSelectedTabItem(itemType: nav.tabBarType!)
            tabBarView.objectAcross(itemType: nav.tabBarType!)
        }
    }
}

// MARK: - Event

//: extension TalkingTabBarViewController {
extension RangeHasDelegate {
    /// 切换到tab-party
    //: @objc func switchTabbarHomeParty() {
    @objc func eventAtParty() {
        //: getNavigationController()?.popToRootViewController(animated: false)
        fileController()?.popToRootViewController(animated: false)
        //: selectTabbar(type: 0)
        enterSize(type: 0)
        //: if let vc = currentViewController(), vc is TalkingSocialViewController {
        if let vc = occurrentWith(), vc is DetailReactiveCompatible {
            //: (vc as! TalkingSocialViewController).switchParty()
            (vc as! DetailReactiveCompatible).sinceList()
        }
    }

    /// tabbar直播按钮点击事件
    //: @objc private func liveButtonClick() {
    @objc private func addClick() {
        //: guard TalkingVoiceRoomManager.shared().isParty == false else {
        guard RangeManager.universalShared().isParty == false else { // 语聊房
            //: if String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == PunctuateThen.share.loginUid {
            if String(RangeManager.universalShared().partyModel.streamerInfo.uid) == PunctuateThen.share.loginUid {
                //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
                RangeManager.universalShared().giftGoback()
                //: } else {
            } else {
                //: func__showStatusBarErrorMsg(showMsg: kMessage_party_limit)
                drawObserver(showMsg: user_streamContent)
            }
            //: return
            return
        }
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard LogLiveManager.anUp().isLive == false else { // 直播间
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            drawObserver(showMsg: kBarAdjustKeyMessage)
            //: return
            return
        }
        //: let tabView = TalkingTabLiveView()
        let tabView = ImageSizeView()
        //: tabView.show()
        tabView.memoryImageStart()
    }

    //: func func__configViewDidLoad() {
    func toView() {
        //: TalkingAPNSManager.share.func__listenAPNSInit()
        KeyTableReactiveCompatible.share.customer()
        //: AppManagerRequest.func__reportDeviceID()
        ManagingDirectorThen.deliver()
        //: func__getLoginUserConfig(true)
        somebodyConfig(true)
    }

    //: func selectTabbar(type: Int) {
    func enterSize(type: Int) {
        //: guard type < viewControllers?.count ?? 0 else { return }
        guard type < viewControllers?.count ?? 0 else { return }
        //: let vc = viewControllers?[type]
        let vc = viewControllers?[type]
        //: selectedIndex = type
        selectedIndex = type
        //: selectedViewController = vc
        selectedViewController = vc
    }

    /// 切换直播tabBar图标
    //: @objc private func switchLiveTabBarImage() {
    @objc private func anyError() {
        //: tabBarView.switchLiveTabBarImage()
        tabBarView.offImage()
    }

    /// 唤起直播功能
    //: @objc private func openLive() {
    @objc private func rowLive() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard CustomPermissionTool.withGift() == false else { return }

        // 展示说明页（如果展示过，则直接开播）
        //: let isShow = Defaults.bool(forKey: TalkingLiveTabExplainIsShow)
        let isShow = constDevicePath.bool(forKey: appDeviceClickName)
        //: guard isShow != true else {
        guard isShow != true else {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            LogLiveManager.anUp().next()
            //: return
            return
        }
        //: Defaults.set(true, forKey: TalkingLiveTabExplainIsShow)
        constDevicePath.set(true, forKey: appDeviceClickName)
        //: let explainView = TalkingLiveExplainViewController()
        let explainView = ViewThen()
        //: explainView.modalPresentationStyle = .fullScreen
        explainView.modalPresentationStyle = .fullScreen
        //: present(explainView, animated: true)
        present(explainView, animated: true)
    }

    /// 切换RandowtabBar图标
    //: @objc private func switchRandowTabBarImage(isHidde: Bool) {
    @objc private func climaxCreate(isHidde: Bool) {
        //: tabBarView.switchRandowTabBarImage(isHidde: isHidde)
        tabBarView.listenerInserter(isHidde: isHidde)
    }

    /// 连接socket
    //: private func linkWebCocket() {
    private func tiedCurrent() {
        // 连接socket【放在这里是为了保证app/getConfig调用成功拿到ws信息】
        //: TalkingSocketManager.shared.updateWebSocket()
        WrittenRecordSocketDelegate.shared.rawTo()
    }

    /// 切换tab时判断是否需要展示直播开播提醒弹窗
    /// - Returns: 是否展示结果
    //: @discardableResult
    @discardableResult
    //: private func needShowLiveAlertView(type: TabBarItemType = .Social) -> Bool {
    private func typeShowNeedLiveSharedPerspective(type: ListSignedNumber = .Social) -> Bool {
        //: guard PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue else { return false }
        //: guard PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue else { return false }
        //: guard PunctuateThen.share.appUserConfigMode.userCountryType == 1 else { return false }
        guard PunctuateThen.share.appUserConfigMode.userCountryType == 1 else { return false }
        //: guard PunctuateThen.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        guard PunctuateThen.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        //: guard !TalkingVoiceRoomManager.shared().isParty,
        guard !RangeManager.universalShared().isParty,
              //: !TalkingLiveManager.shared().isLive,
              !LogLiveManager.anUp().isLive,
              //: !TalkingSocketManager.shared.workSpace,
              !WrittenRecordSocketDelegate.shared.workSpace,
              //: !TalkingSocketManager.shared.isCalling else { return false }
              !WrittenRecordSocketDelegate.shared.isCalling else { return false }
        //: let arr = PunctuateThen.share.appUserConfigMode.popLiveTabArr
        let arr = PunctuateThen.share.appUserConfigMode.popLiveTabArr
        //: let shouldShowPopup = (arr.contains("1") && type == .Social) ||
        let shouldShowPopup = (arr.contains("1") && type == .Social) ||
            //: (arr.contains("2") && type == .Moment) ||
            (arr.contains("2") && type == .Moment) ||
            //: (arr.contains("3") && type == .Message)
            (arr.contains("3") && type == .Message)
        //: if shouldShowPopup {
        if shouldShowPopup {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            MessageThen.shared.glory()
            //: return true
            return true
        }

        //: return false
        return false
    }
}

// MARK: - 通知事件

//: extension TalkingTabBarViewController {
extension RangeHasDelegate {
    /// 更新index/getConfig接口
    /// - Parameter showLiveToast: 是否展示live提示（只有创建Tab时展示）
    //: @objc func func__getLoginUserConfig(_ showLiveToast: Bool = false) {
    @objc func somebodyConfig(_ showLiveToast: Bool = false) {
        //: AppManagerRequest.func__requestUserConfig { succeed, _, _ in
        ManagingDirectorThen.makeEvent { succeed, _, _ in
            //: if showLiveToast {
            if showLiveToast {
                // 连接socket
                //: self.linkWebCocket()
                self.tiedCurrent()
                //: if PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue {
                if PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue {
                    //: self.tabBarView.showFemaleLiveTurnOnToast()
                    self.tabBarView.showPop()
                    //: self.needShowLiveAlertView()
                    self.typeShowNeedLiveSharedPerspective()
                    //: self.func__selectClubTabbar()
                    self.dataTabbar()
                }
                //: if succeed {
                if succeed {
                    //: self.func__reqPopUpWindow()
                    self.sectionPosition()
                }
            }
        }
    }

    //: func func__selectClubTabbar() {
    func dataTabbar() {
        //: if PunctuateThen.share.loginUserMode.jumpType == 1 {
        if PunctuateThen.share.loginUserMode.jumpType == 1 {
            //: return
            return
        }
        //: switchRandowTabBarImage(isHidde: true)
        climaxCreate(isHidde: true)
        //: if PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue, PunctuateThen.share.appUserConfigMode.homeTab == "home" {
        if PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue, PunctuateThen.share.appUserConfigMode.homeTab == (mainFillMessage.replacingOccurrences(of: "equal", with: "m")) {
            //: let type = 2
            let type = 2
            //: selectTabbar(type: type)
            enterSize(type: type)
            //: switchRandowTabBarImage(isHidde: false)
            climaxCreate(isHidde: false)
        }
    }

    /// 弹窗
    //: func func__reqPopUpWindow() {
    func sectionPosition() {
        //: guard PunctuateThen.share.loginUserMode.updateInfo == true else {
        guard PunctuateThen.share.loginUserMode.updateInfo == true else {
            //: return
            return
        }
        //: let manager = TalkingPopupWindowManager.shared
        let manager = MessageThen.shared
        //: manager.setHomePopUpWindow()
        manager.metronymic()

        //: if PunctuateThen.share.loginUserMode.jumpType == 2, PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue {
        if PunctuateThen.share.loginUserMode.jumpType == 2, PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue {
            /// 主动拨打视频弹窗
            //: TalkingVideoInitivCallManager.shared.setObserver()
            TvThen.shared.dataBackground()
        }
    }
}

// MARK: - UITabBarControllerDelegate

//: extension TalkingTabBarViewController {
extension RangeHasDelegate {
    //: func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    func tabBarController(_: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        //: if PunctuateThen.share.appStatus == AppSkinStatus.special.rawValue {
        if PunctuateThen.share.appStatus == HiddenHashableRepresentation.special.rawValue {
            //: return true
            return true
        }
        //: if let vc = viewController.children.first, let tabbarType = TabBarItemType(rawValue: vc.view.tag) {
        if let vc = viewController.children.first, let tabbarType = ListSignedNumber(rawValue: vc.view.tag) {
            // 点击直播虚拟按钮，不切换tabbar
            //: if tabbarType == .Live {
            if tabbarType == .Live {
                //: liveButtonClick()
                addClick()
                //: return false
                return false
            }
            //: switchRandowTabBarImage(isHidde: tabbarType != .Randow)
            climaxCreate(isHidde: tabbarType != .Randow)
            // 展示直播开播提醒弹窗，不切换tabbar
            //: if needShowLiveAlertView(type: tabbarType) {
            if typeShowNeedLiveSharedPerspective(type: tabbarType) {
                //: return false
                return false
            }
        }

        //: return true
        return true
    }

    //: func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //: if tabBarView.isHidden {
        if tabBarView.isHidden {
            //: tabBarView.isHidden = false
            tabBarView.isHidden = false
        }

        //: if PunctuateThen.share.appStatus == AppSkinStatus.special.rawValue {
        if PunctuateThen.share.appStatus == HiddenHashableRepresentation.special.rawValue {
            //: return
            return
        }

        //: uploadTabSelete()
        digitiserSelete()

        // 消息列表切换到Intimate时，再次切回要默认选中all
        //: if tabBarView.currentTabType == TabBarItemType.Message.rawValue {
        if tabBarView.currentTabType == ListSignedNumber.Message.rawValue {
            //: let vc = viewController.children.first as? TalkingMessageViewController
            let vc = viewController.children.first as? ControllerPanThen
            //: if vc?.isNoChangeTop == false {
            if vc?.isNoChangeTop == false {
                //: vc?.isNoChangeTop = true
                vc?.isNoChangeTop = true
                //: vc?.setIsTopAll()
                vc?.makeRecord()
            }
            //: } else {
        } else {
            //: if let vcArrs = tabBarController.viewControllers {
            if let vcArrs = tabBarController.viewControllers {
                //: for vc in vcArrs {
                for vc in vcArrs {
                    //: if let firstVc = vc.children.first {
                    if let firstVc = vc.children.first {
                        //: if firstVc.isKind(of: TalkingMessageViewController.self) {
                        if firstVc.isKind(of: ControllerPanThen.self) {
                            //: (firstVc as! TalkingMessageViewController).isNoChangeTop = false
                            (firstVc as! ControllerPanThen).isNoChangeTop = false
                            //: break
                            break
                        }
                    }
                }
            }
        }
    }

    //: func uploadTabSelete() {
    func digitiserSelete() {
        //: switch tabBarView.currentTabType {
        switch tabBarView.currentTabType {
        //: case TabBarItemType.Social.rawValue:
        case ListSignedNumber.Social.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickHomeTabButton)
            const_screenFormat.occurrenceIn(eventID: noti_routeUrl)
        //: case TabBarItemType.Randow.rawValue: break
        case ListSignedNumber.Randow.rawValue: break
//            uploadRecord.uploadRecordEvent(eventID: ClickMatchTabButton)
        //: case TabBarItemType.Moment.rawValue:
        case ListSignedNumber.Moment.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMomentTabButton)
            const_screenFormat.occurrenceIn(eventID: data_cellValue)
        //: case TabBarItemType.Message.rawValue:
        case ListSignedNumber.Message.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMassagesTabButton)
            const_screenFormat.occurrenceIn(eventID: data_tableGroupMsg)
        //: case TabBarItemType.Account.rawValue:
        case ListSignedNumber.Account.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMeTabButton)
            const_screenFormat.occurrenceIn(eventID: show_lastOndPath)
        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - ActionObjectProtocol

//: extension TalkingTabBarViewController: IMManagerDelegate {
extension RangeHasDelegate: ActionObjectProtocol {
    //: func onUnreadMsgCountChanged(count: Int) {
    func pointOfReference(count _: Int) {
        //: refreshUnreadIMMessageCount()
        sumEach()
    }

    //: func onRecvNewMessage(msg: V2TIMMessage) {
    func methodFromMsg(msg: V2TIMMessage) {
        //: let extra = String(data: msg.customElem.data, encoding: .utf8)
        let extra = String(data: msg.customElem.data, encoding: .utf8)
        //: let json = JSON(parseJSON: extra!)
        let json = JSON(parseJSON: extra!)
        //: let userInfo = json["user"]
        let userInfo = json[(String(dataAppMessage))]
        //: let headUrlStr = userInfo["icon"].stringValue
        let headUrlStr = userInfo[(app_actionFormat.replacingOccurrences(of: "manager", with: "n"))].stringValue
        //: if headUrlStr.isEmptyString {
        if headUrlStr.isEmptyString {
            //: return
            return
        }

        //: tabBarView.showNewMessageUser(headPic: headUrlStr)
        tabBarView.fromSub(headPic: headUrlStr)
    }

    //: func refreshUnreadIMMessageCount() {
    func sumEach() {
        //: if ModelDataV2Listener.shared.isConnection {
        if ModelDataV2Listener.shared.isConnection {
            //: let unreadMsgCount = PunctuateThen.share.unreadMessageNum
            let unreadMsgCount = PunctuateThen.share.unreadMessageNum
            //: tabBarView.refreshBadgeLayoutWith(unread: unreadMsgCount, barType: .Message)
            tabBarView.userTaproom(unread: unreadMsgCount, barType: .Message)
        }
    }
}
