
//: Declare String Begin

/*: "www.apple.com" :*/
fileprivate let k_reportTitle:[Character] = ["w","w"]
fileprivate let data_titleKey:[Character] = ["w",".","a","p","p","l","e",".","c","o","m"]

/*: "后台播放音乐模式异常:  :*/
fileprivate let userDataMsg:[Character] = ["后","\u{53f0}","播","放","音","\u{4e50}","模","式","异","常",":"," "]

/*: ." :*/
fileprivate let showMakeName:String = "."

/*: "key_uid" :*/
fileprivate let constInfoPath:[Character] = ["k","e","y","_","u"]
fileprivate let dataGiftId:[Character] = ["i","d"]

/*: "Reachable via WiFi" :*/
fileprivate let notiTextData:String = "Reachheight root equal insert"
fileprivate let app_centerValue:String = " via WiFito no define info"

/*: "Reachable via Cellular" :*/
fileprivate let notiLabText:String = "Reachjump country button remaining"
fileprivate let mainRequestUrl:String = "data leading self since picvia Ce"

/*: "Current network unavailable" :*/
fileprivate let kLogToTitle:[Character] = ["C","u","r","r","e","n","t"," ","n","e","t","w","o","r","k"," ","u","n","a","v","a","i","l","a"]
fileprivate let userHomePath:[Character] = ["b","l","e"]

/*: "Network none" :*/
fileprivate let showValueUrl:[Character] = ["N","e","t","w","o"]
fileprivate let const_lineArrayName:[Character] = ["r","k"," ","n","o","n","e"]

/*: "call_response_bgm" :*/
fileprivate let const_toolTitle:String = "clabell"
fileprivate let kQueryedUrl:String = "sub app self effect sendnse_bgm"

/*: "Error playing BMG audio:  :*/
fileprivate let const_readMessage:String = "Erroleading view"
fileprivate let app_ofTitle:String = "ying self empty owner model"
fileprivate let notiButtonData:String = "udio: self level let layer self"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FourthBaseDelegate.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/30.
//

//: import AVFAudio
import AVFAudio
//: import FirebaseCrashlytics
import FirebaseCrashlytics
//: import UIKit
import UIKit
//: import WebKit
import WebKit

//: public class AppDelegateHelper: NSObject {
public class FourthBaseDelegate: NSObject {
    // 后台下载
    //: var backgroundSessionCompletionHandler: (() -> Void)?
    var backgroundSessionCompletionHandler: (() -> Void)?
    //: private var window: UIWindow?
    private var window: UIWindow?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private let networkManager = NetworkReachabilityManager(host: "www.apple.com")
    private let networkManager = NetworkReachabilityManager(host: (String(k_reportTitle) + String(data_titleKey)))
    //: private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid
    private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid // 后台任务名称
    //: private var bgmPlayer: AVAudioPlayer?
    private var bgmPlayer: AVAudioPlayer? // 音视频通话后台播放音频
    //: private var currApplication: UIApplication?
    private var currApplication: UIApplication? // 当前application
    // singleton
    //: public static let shared = AppDelegateHelper()
    public static let shared = FourthBaseDelegate()
    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.window?.rootViewController = NormalWaitingController()
        self.window?.rootViewController = InvisibleReactiveCompatible()
        //: self.window?.makeKeyAndVisible()
        self.window?.makeKeyAndVisible()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(initRootController),
                                               selector: #selector(controllerFor),
                                               //: name: UPDATE_APP_GETCONFIG_NOTIFICATION,
                                               name: const_logData,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - 系统API

//: public extension AppDelegateHelper {
public extension FourthBaseDelegate {
    //: func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
    func app(_ application: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
        //: AppDelegateHelper.shared.window = window
        FourthBaseDelegate.shared.window = window
        //: TalkingRequestAddrTool.share.func__setAppCookies()
        LayerAddrTool.share.keyCookies()
        //: AppDelegateHelper.shared.installNotificationObservers()
        FourthBaseDelegate.shared.result()
        //: AppDelegateHelper.shared.initGetCache()
        FourthBaseDelegate.shared.outsideColor()
        //: TalkingRequestAddrTool.share.checkServerUrl()
        LayerAddrTool.share.eigenvalueOfAMatrixUrl()
        //: AppDelegateHelper.shared.currApplication = application
        FourthBaseDelegate.shared.currApplication = application
        // 支持后台播放音乐
        //: do {
        do {
            //: try AVAudioSession.sharedInstance().setCategory(.playback)
            try AVAudioSession.sharedInstance().setCategory(.playback)
            //: try AVAudioSession.sharedInstance().setActive(true)
            try AVAudioSession.sharedInstance().setActive(true)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "后台播放音乐模式异常: \(error).")
            GestureLogTool.playChangeImage(msg: (String(userDataMsg)) + "\(error).")
        }

        //: if #available(iOS 15.0, *) {
        if #available(iOS 15.0, *) {
            //: UITableView.appearance().sectionHeaderTopPadding = 0
            UITableView.appearance().sectionHeaderTopPadding = 0
        }
        //: return true
        return true
    }

    //: class func applicationDidEnterBackground(_ application: UIApplication) {
    class func employmentTextBackground(_: UIApplication) {
        // 开启后台任务，增加app后台运行时间
        //: AppDelegateHelper.shared.startBackgroundTask()
        FourthBaseDelegate.shared.path()
    }

    //: class func applicationWillEnterForeground(_ application: UIApplication) {
    class func alongApplication(_: UIApplication) {
        //: AppDelegateHelper.shared.stopPlayBGM()
        FourthBaseDelegate.shared.button()
        // 进入前台，结束后台任务
        //: AppDelegateHelper.shared.checkAndEndBackgroundTask()
        FourthBaseDelegate.shared.error()
    }

    //: class func applicationWillResignActive(_ application: UIApplication) {
    class func wire(_ application: UIApplication) {
        //: let unreadMsgCount = PunctuateThen.share.unreadMessageNum
        let unreadMsgCount = PunctuateThen.share.unreadMessageNum
        //: application.applicationIconBadgeNumber = unreadMsgCount
        application.applicationIconBadgeNumber = unreadMsgCount
    }

    //: class func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
    class func point(_: UIApplication) {
        //: URLCache.shared.removeAllCachedResponses()
        URLCache.shared.removeAllCachedResponses()
        //: URLCache.shared.diskCapacity = 0
        URLCache.shared.diskCapacity = 0
        //: URLCache.shared.memoryCapacity = 0
        URLCache.shared.memoryCapacity = 0
        //: let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        //: WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
        WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
    }

    //: class func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
    class func showHandler(_: UIApplication, handleEventsForBackgroundURLSession _: String, completionHandler: @escaping () -> Void) {
        //: AppDelegateHelper.shared.backgroundSessionCompletionHandler = completionHandler
        FourthBaseDelegate.shared.backgroundSessionCompletionHandler = completionHandler
    }
}

// MARK: - openURL

//: public extension AppDelegateHelper {
public extension FourthBaseDelegate {
    //: class func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
    class func up(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        //: if googleOpenURL(app, open: url, options: options) {
        if rawData(app, open: url, options: options) {
            //: return true
            return true
        }
        //: return true
        return true
    }
}

// MARK: - 控制器初始化方法

//: extension AppDelegateHelper {
extension FourthBaseDelegate {
    /// 获取config和userinfo缓存
    //: private func initGetCache() {
    private func outsideColor() {
        //: PunctuateThen.share.func__checkAppConfigModeNeedUpdate()
        PunctuateThen.share.conversion()
        //: PunctuateThen.share.func__loadCurrentLoginInfoData()
        PunctuateThen.share.funcAction()
    }

    //: @objc private func initRootController() {
    @objc private func controllerFor() {
        // 延后初始化三方sdk, 防止首次安装时无网络初始化失败
        //: if currApplication != nil {
        if currApplication != nil {
            //: AppDelegateHelper.shared.initThirdPartySetup(currApplication!)
            FourthBaseDelegate.shared.video(currApplication!)
        }
        //: PunctuateThen.share.func__listenRequestHasInit()
        PunctuateThen.share.pastTitle()
        //: window = UIWindow(frame: UIScreen.main.bounds)
        window = UIWindow(frame: UIScreen.main.bounds)
        //: window?.backgroundColor = .white
        window?.backgroundColor = .white
        //: window?.makeKeyAndVisible()
        window?.makeKeyAndVisible()

        //: let uid = (Defaults.string(forKey: TalkingLoginUidCacheKey)) ?? ""
        let uid = (constDevicePath.string(forKey: mainErrMessage)) ?? ""
        //: if !uid.isEmptyString, Int(uid)! > 0 {
        if !uid.isEmptyString, Int(uid)! > 0 { // 登录状态
            //: func__setupTakingViewController()
            appear()

            // 统计崩溃用户Id
            //: Crashlytics.crashlytics().setUserID(PunctuateThen.share.loginUid)
            Crashlytics.crashlytics().setUserID(PunctuateThen.share.loginUid)
            //: Crashlytics.crashlytics().setCustomValue(PunctuateThen.share.loginUid, forKey: "key_uid")
            Crashlytics.crashlytics().setCustomValue(PunctuateThen.share.loginUid, forKey: (String(constInfoPath) + String(dataGiftId)))
            // 检查是否有未完成的支付订单
            //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
            VoiceReactiveCompatible.shared.spring()
            //: PunctuateThen.share.request_HasInit = false
            PunctuateThen.share.request_HasInit = false
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            NumberryReactiveCompatible.share.suiteBy(showRed: false)
            // firebase上报token
            //: AppManagerRequest.func__reportFCMID()
            ManagingDirectorThen.ofHead()
            //: } else {
        } else {
            //: if PunctuateThen.share.loginSessionId.count > 0 {
            if PunctuateThen.share.loginSessionId.count > 0 {
                //: TalkingLoginRequestTool.req_loginOut { _ in
                ComponentRequestTool.model { _ in
                }
                //: PunctuateThen.share.func__cleanPrevLoginData()
                PunctuateThen.share.observerData()
            }
            //: func__setupLoginViewController()
            afterList()
            //: PunctuateThen.share.request_HasInit = true
            PunctuateThen.share.request_HasInit = true
        }
    }

    //: private func func__setupTakingViewController() {
    private func appear() {
        //: func__setupRootViewController(type: .Taking)
        gardenTool(type: .Taking)
    }

    //: private func func__setupLoginViewController() {
    private func afterList() {
        //: func__setupRootViewController(type: .Login)
        gardenTool(type: .Login)
    }

    //: private func func__setupRootViewController(type: TarBarControllerViewType) {
    private func gardenTool(type: EditionHiddenViewType) {
        //: if Thread.current.isMainThread {
        if Thread.current.isMainThread {
            //: func__setWindowRootViewController(type: type)
            push(type: type)
            //: } else {
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self.func__setWindowRootViewController(type: type)
                self.push(type: type)
            }
        }
    }

    //: private func func__setWindowRootViewController(type: TarBarControllerViewType) {
    private func push(type: EditionHiddenViewType) {
        //: if checkRootTarBarController(type: type) {
        if applicationType(type: type) {
            //: return
            return
                //: } else {
        } else {
            //: let tabbar = TalkingTabBarViewController(tabBarType: type)
            let tabbar = RangeHasDelegate(tabBarType: type)
            //: window?.rootViewController = tabbar
            window?.rootViewController = tabbar
        }
    }

    //: private func checkRootTarBarController(type: TarBarControllerViewType) -> Bool {
    private func applicationType(type: EditionHiddenViewType) -> Bool {
        //: let rootVC = window?.rootViewController
        let rootVC = window?.rootViewController
        //: if rootVC is TalkingTabBarViewController {
        if rootVC is RangeHasDelegate {
            //: if let rootVC1 = rootVC as? TalkingTabBarViewController {
            if let rootVC1 = rootVC as? RangeHasDelegate {
                //: if rootVC1.tabBarVCType == type {
                if rootVC1.tabBarVCType == type {
                    //: return true
                    return true
                }
            }
        }
        //: return false
        return false
    }
}

// MARK: - 通知监听

//: extension AppDelegateHelper {
extension FourthBaseDelegate {
    /// 初始化通知监听
    //: private func installNotificationObservers() {
    private func result() {
        // 网络状态监听
        //: PunctuateThen.share.startNotifierNetwork()
        PunctuateThen.share.magnitudeerval()

        //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.note(note:)), name: .reachabilityChanged, object: nil)

        // 登录成功通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_SUCCESS_NOTIFICATION)
            .notification(notiEnvironmentPath)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in

                /// 重新打开数据库
                //: WCDBManager.shared.connectDatabase()
                MakeManager.shared.putThroughView()
                //: self.func__setupTakingViewController()
                self.appear()
                //: PunctuateThen.share.func__UserLoginChanged(isLogin: true)
                PunctuateThen.share.buildList(isLogin: true)

                // 统计崩溃用户Id
                //: Crashlytics.crashlytics().setUserID(PunctuateThen.share.loginUid)
                Crashlytics.crashlytics().setUserID(PunctuateThen.share.loginUid)
                //: Crashlytics.crashlytics().setCustomValue(PunctuateThen.share.loginUid, forKey: "key_uid")
                Crashlytics.crashlytics().setCustomValue(PunctuateThen.share.loginUid, forKey: (String(constInfoPath) + String(dataGiftId)))
                // 检查是否有末完成的支付订单
                //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
                VoiceReactiveCompatible.shared.spring()
                //: if !PunctuateThen.share.request_HasInit {
                if !PunctuateThen.share.request_HasInit {
                    //: PunctuateThen.share.request_HasInit = true
                    PunctuateThen.share.request_HasInit = true
                }
                // firebase上报token
                //: AppManagerRequest.func__reportFCMID()
                ManagingDirectorThen.ofHead()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 退出登录通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_OUT_SUCCESS_NOTIFICATION)
            .notification(k_deviceKey)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: PunctuateThen.share.func__UserLoginChanged(isLogin: false)
                PunctuateThen.share.buildList(isLogin: false)
                //: TalkingSocketManager.shared.closeWebSocket(userLoginOut: true)
                WrittenRecordSocketDelegate.shared.forwardingOut(userLoginOut: true)
                //: self.func__setupLoginViewController()
                self.afterList()
                //: (TalkingApplication.shared as! TalkingApplication).destroy()
                (QueryEnableReactiveCompatible.shared as! QueryEnableReactiveCompatible).plugIn()

                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 刷新个人资料
        //: NotificationCenter.default.rx.notification(UPDATE_USER_GETMYINFO_NOTIFICATION)
        NotificationCenter.default.rx.notification(userReasonMessage)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: AppManagerRequest.func__requestUserInfo { succeed, _, _ in
                ManagingDirectorThen.visible { succeed, _, _ in
                    //: guard succeed else { return }
                    guard succeed else { return }
                    // 个人信息请求成功发送通知
                    //: NotificationCenter.default.post(name: USER_GETMYINFO_SUCCEED_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: constCoverPathValue, object: nil)
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: @objc private func reachabilityChanged(note: Notification) {
    @objc private func note(note: Notification) {
        //: let reachability = note.object as! Reachability
        let reachability = note.object as! Reachability
        //: switch reachability.connection {
        switch reachability.connection {
        //: case .wifi:
        case .wifi:
            //: printLog(message: "Reachable via WiFi")
            printLog(message: (String(notiTextData.prefix(5)) + "able" + String(app_centerValue.prefix(9))))
        //: case .cellular:
        case .cellular:
            //: printLog(message: "Reachable via Cellular")
            printLog(message: (String(notiLabText.prefix(5)) + "able " + String(mainRequestUrl.suffix(6)) + "llular"))
        //: case .unavailable:
        case .unavailable:
            // 网络不可用，全局提示用户
            //: func__showStatusBarErrorMsg(showMsg: "Current network unavailable".localized)
            drawObserver(showMsg: (String(kLogToTitle) + String(userHomePath)).localized)
        //: case .none:
        case .none:
            //: printLog(message: "Network none")
            printLog(message: (String(showValueUrl) + String(const_lineArrayName)))
        }
    }
}

// MARK: - 后台任务

//: extension AppDelegateHelper {
extension FourthBaseDelegate {
    // 开启后台任务
    //: private func startBackgroundTask() {
    private func path() {
        //: checkAndEndBackgroundTask()
        error()
        //: if backTaskIdentifier == .invalid {
        if backTaskIdentifier == .invalid {
            //: backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
            backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
                //: self.checkAndEndBackgroundTask()
                self.error()
            }
        }
    }

    /// 结束后台任务
    //: private func checkAndEndBackgroundTask() {
    private func error() {
        //: if backTaskIdentifier != .invalid {
        if backTaskIdentifier != .invalid {
            //: UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            //: backTaskIdentifier = .invalid
            backTaskIdentifier = .invalid
        }
    }

    /// 开始播放背景音乐
    //: func startPlayBGM() {
    func timeBgm() {
        //: let filePath = SVGAEffectTool.default.getMp3Path(name: "call_response_bgm")
        let filePath = SkullSessionReactiveCompatible.default.statusFilter(name: (const_toolTitle.replacingOccurrences(of: "label", with: "al") + "_respo" + String(kQueryedUrl.suffix(7))))

        //: let fileURL = URL(fileURLWithPath: filePath)
        let fileURL = URL(fileURLWithPath: filePath)
        //: do {
        do {
            //: bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            //: bgmPlayer?.play()
            bgmPlayer?.play()
            //: startSystemVibrate()
            deedFrom()
            //: } catch {
        } catch {
            //: printLog(message: "Error playing BMG audio: \(error.localizedDescription)")
            printLog(message: (String(const_readMessage.prefix(4)) + "r pla" + String(app_ofTitle.prefix(5)) + "BMG a" + String(notiButtonData.prefix(6))) + "\(error.localizedDescription)")
        }
    }

    ///  停止播放背景音乐
    //: func stopPlayBGM() {
    func button() {
        //: stopSystemVibrate()
        crush()
        //: guard bgmPlayer != nil else { return }
        guard bgmPlayer != nil else { return }
        //: bgmPlayer?.stop()
        bgmPlayer?.stop()
        //: bgmPlayer = nil
        bgmPlayer = nil
    }

    /// 开始震动
    //: private func startSystemVibrate() {
    private func deedFrom() {
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            }
            //: }, nil)
        }, nil)
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }

    /// 停止震动
    //: private func stopSystemVibrate() {
    private func crush() {
        //: AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        //: AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
        AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
    }
}
