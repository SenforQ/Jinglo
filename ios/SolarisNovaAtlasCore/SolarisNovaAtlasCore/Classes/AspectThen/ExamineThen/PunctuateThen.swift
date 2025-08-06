
//: Declare String Begin

/*: "PHPSESSID" :*/
fileprivate let kLabelViewStr:[Character] = ["P","H","P","S","E","S","S","I"]
fileprivate let app_sectionName:[Character] = ["D"]

/*: "UID" :*/
fileprivate let user_barPath:String = "itemID"

/*: "Any" :*/
fileprivate let app_equalPath:String = "load classAny"

/*: "UserBasicInfoSetting/userTag.json" :*/
fileprivate let main_imageMessage:[UInt8] = [0x95,0xb3,0xa5,0xb2,0x82,0xa1,0xb3,0xa9,0xa3,0x89,0xae,0xa6,0xaf,0x93,0xa5,0xb4,0xb4,0xa9,0xae,0xa7,0xef,0xb5,0xb3,0xa5,0xb2,0x94,0xa1,0xa7,0xee,0xaa,0xb3,0xaf,0xae]

/*: "获取数据" :*/
fileprivate let showFrameKeyId:[Character] = ["获","取","数","据"]

/*: "json 解析失败" :*/
fileprivate let mainSizeKey:String = "camera"
fileprivate let dataTouchContent:[Character] = ["s","o","n"," ","解","\u{6790}","失","败"]

/*: "request_HasInit" :*/
fileprivate let data_colorName:[Character] = ["r","e","q","u","e","s","t","_","H"]
fileprivate let dataWithUrl:String = "asInitgift file equal self system"

/*: "Reachable via WiFi" :*/
fileprivate let mainGiftValue:[Character] = ["R","e","a","c","h","a","b","l","e"," ","v","i","a"," ","W","i"]
fileprivate let showPromptMessage:String = "photo selfFi"

/*: "Reachable via Cellular" :*/
fileprivate let notiPlayTextId:String = "Reachacase res type view"
fileprivate let const_userId:[Character] = ["e","l","l","u","l","a","r"]

/*: "Network not reachable" :*/
fileprivate let mainDateId:String = "let letNetwo"
fileprivate let data_bottomFormat:String = "area to main iconot r"
fileprivate let notiDataId:String = "ehideh"

/*: "Not reachable" :*/
fileprivate let user_selectedPath:[Character] = ["N"]
fileprivate let constObjectValue:[Character] = ["o","t"," ","r","e","a","c","h","a","b","l","e"]

/*: "Unable to start notifier" :*/
fileprivate let data_actualPath:String = "equal equal else make makeUnable"
fileprivate let data_elementUrl:String = "ttabt"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PunctuateThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import UIKit
import UIKit

//: public class PunctuateThen: NSObject {
public class PunctuateThen: NSObject {
    //: @objc static public let share = PunctuateThen()
    @objc public static let share = PunctuateThen()
    //: private override init() {}
    override private init() {}

    //: @objc public var loginUserMode = LoginUserModel()
    @objc public var loginUserMode = MessageMeasurable() // 用户登录的信息
    //: @objc public var appUserConfigMode = AppUserConfigModel()
    @objc public var appUserConfigMode = AppReactiveCompatible() // App 用户配置信息
    //: var showWindow = false
    var showWindow = false // 是否需要展示巨星邀请引导弹窗【只在注册更新资料流程中才返回】
    //: var userFillInfoMode = UserFillInfoModel.init()
    var userFillInfoMode = TitleSessionInfoModel() // 用户完善资料缓存
    //: var appConfigMode = AppConfigModel()
    var appConfigMode = MessageTransformable() // App 配置信息
    //: var reachability: Reachability?
    var reachability: Reachability? // 网络监听
    //: @objc public dynamic var networkStatus: AppNetworkStatus = .Unavailable
    @objc public dynamic var networkStatus: AppSendable = .Unavailable // 网络状态

    //: @objc public dynamic var request_HasInit: Bool = false
    @objc public dynamic var request_HasInit: Bool = false

    //: @objc public var appStatus: Int {
    @objc public var appStatus: Int { // 审核状态
        //: if loginUserMode.status == 0, appConfigMode.status == 0 {
        if loginUserMode.status == 0, appConfigMode.status == 0 {
            //: return AppSkinStatus.normal.rawValue
            return HiddenHashableRepresentation.normal.rawValue
            //: } else {
        } else {
            //: return AppSkinStatus.special.rawValue
            return HiddenHashableRepresentation.special.rawValue
        }
    }

    //: @objc public dynamic var unreadMessageNum: Int = 0
    @objc public dynamic var unreadMessageNum: Int = 0

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var loginSessionId: String {
    var loginSessionId: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: LayerAddrTool.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "PHPSESSID" {
            if cookie.name.uppercased() == (String(kLabelViewStr) + String(app_sectionName)) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    //: var loginUid: String {
    var loginUid: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: LayerAddrTool.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "UID" {
            if cookie.name.uppercased() == (user_barPath.replacingOccurrences(of: "item", with: "U")) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    // 重置参数
    //: func func__reSet() {
    func barAction() {
        //: loginUserMode = LoginUserModel.init()
        loginUserMode = MessageMeasurable()
        // 首页列表筛选条件
        //: SEARCH_AGE = "Any".localized
        kSuccessPath = (String(app_equalPath.suffix(3))).localized
        //: SEARCH_VIDEOCOVER = "Any".localized
        k_tableName = (String(app_equalPath.suffix(3))).localized
    }
}

//: extension PunctuateThen {
extension PunctuateThen {
    /// 更改用户登录状态
    /// - Parameter isLogin: 是否登录
    //: func func__UserLoginChanged(isLogin: Bool) {
    func buildList(isLogin: Bool) {
        //: if isLogin {
        if isLogin {
            //: Defaults.set(PunctuateThen.share.loginUserMode.userID, forKey: TalkingLoginUidCacheKey)
            constDevicePath.set(PunctuateThen.share.loginUserMode.userID, forKey: mainErrMessage)
            //: } else {
        } else {
            //: ModelDataV2Listener.shared.func__LogingOut()
            ModelDataV2Listener.shared.liveAcrossEqual()
            //: Defaults.removeObject(forKey: TalkingLoginUidCacheKey)
            constDevicePath.removeObject(forKey: mainErrMessage)
            //: func__cleanPrevLoginData()
            observerData()
//            LayerAddrTool.share.func__removeAllCookies()
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            NumberryReactiveCompatible.share.suiteBy(showRed: false)
        }
    }

    //: func func__checkAppConfigModeNeedUpdate() {
    func conversion() {
        //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
        let configInfo = constDevicePath.dictionary(forKey: dataVideoTitle)
        //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
        if let configModel = JSONDeserializer<MessageTransformable>.deserializeFrom(dict: configInfo, designatedPath: nil) {
            //: PunctuateThen.share.appConfigMode = configModel
            PunctuateThen.share.appConfigMode = configModel
        }
        //: if let status = PunctuateThen.share.reachability?.connection, status != .unavailable {
        if let status = PunctuateThen.share.reachability?.connection, status != .unavailable {
            //: func__loadAppConfigData()
            labBottom()
            //: } else {
        } else {
            //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(withTableLoad(note:)), name: .reachabilityChanged, object: nil)
        }
    }

    //: func func__loadAppConfigData() {
    func labBottom() {
        //: AppManagerRequest.requestAppConfig { succeed, result, errorModel in
        ManagingDirectorThen.tableTitleAfter { succeed, _, _ in
            //: if succeed {
            if succeed {
                //: NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
                NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
            }
        }
    }

    //: func func__loadCurrentLoginInfoData() {
    func funcAction() {
        //: let userInfo = Defaults.dictionary(forKey: TalkingLoginUserInfoCacheKey)
        let userInfo = constDevicePath.dictionary(forKey: main_playId)
        //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: userInfo, designatedPath: nil) {
        if let userModel = JSONDeserializer<MessageMeasurable>.deserializeFrom(dict: userInfo, designatedPath: nil) {
            //: loginUserMode = userModel
            loginUserMode = userModel
        }
    }

    //: func func__cleanPrevLoginData() {
    func observerData() {
        //: func__reSet()
        barAction()
        //: Defaults.removeObject(forKey: TalkingLoginUserInfoCacheKey)
        constDevicePath.removeObject(forKey: main_playId)
//        let oldServerUrl: String = LayerAddrTool.share.serverUrlStr
//        if oldServerUrl.count > 0 {
//            let oldCookies: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: URL.init(string: oldServerUrl)!)!
//            for cookies in oldCookies {
//                if cookies.name.uppercased() == "PHPSESSID" {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                } else if(cookies.name.uppercased() == "UID") {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                }
//            }
//        }
    }

    //: func func__loadUserTagCacheData() -> Any? {
    func loserData() -> Any? {
        // MARK: 数据的读取

        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting/userTag.json"
        let jsonPath = FileManager.startDirectory() + String(bytes: main_imageMessage.map{$0^192}, encoding: .utf8)!
        //: if FileManager.judgeFileOrFolderExists(filePath: jsonPath) {
        if FileManager.revenueIn(filePath: jsonPath) {
            //: let dataInfo = FileManager.default.contents(atPath: jsonPath)
            let dataInfo = FileManager.default.contents(atPath: jsonPath)
            //: let readStr = String.init(data: dataInfo!, encoding: .utf8)
            let readStr = String(data: dataInfo!, encoding: .utf8)
            //: if let tagModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: readStr) {
            if let tagModel = JSONDeserializer<ModelHandyJSON>.deserializeFrom(json: readStr) {
                //: printLog(message: "获取数据")
                printLog(message: (String(showFrameKeyId)))
                //: return tagModel
                return tagModel
                //: } else {
            } else {
                //: printLog(message: "json 解析失败")
                printLog(message: (mainSizeKey.replacingOccurrences(of: "camera", with: "j") + String(dataTouchContent)))
            }
        }
        //: return nil
        return nil
    }

    //: func func__listenRequestHasInit() {
    func pastTitle() {
        //: self.rx.observeWeakly(Bool.self, "request_HasInit")
        self.rx.observeWeakly(Bool.self, (String(data_colorName) + String(dataWithUrl.prefix(6))))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: } else {
                } else {
                    //: AppManagerRequest.func__initAppRequest()
                    ManagingDirectorThen.back()
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    /// 网络状态监测
    //: func startNotifierNetwork() {
    func magnitudeerval() {
        //: if self.reachability == nil {
        if self.reachability == nil {
            //: guard let reachability = try? Reachability() else { return }
            guard let reachability = try? Reachability() else { return }
            //: self.reachability = reachability
            self.reachability = reachability
            //: reachability.whenReachable = { reach in
            reachability.whenReachable = { reach in
                //: switch reach.connection {
                switch reach.connection {
                //: case .wifi:
                case .wifi:
                    //: self.networkStatus = .Wifi
                    self.networkStatus = .Wifi
                    //: printLog(message: "Reachable via WiFi")
                    printLog(message: (String(mainGiftValue) + String(showPromptMessage.suffix(2))))
                //: case .cellular:
                case .cellular:
                    //: self.networkStatus = .Cellular
                    self.networkStatus = .Cellular
                    //: printLog(message: "Reachable via Cellular")
                    printLog(message: (String(notiPlayTextId.prefix(6)) + "ble via C" + String(const_userId)))
                //: default:
                default:
                    //: self.networkStatus = .Unavailable
                    self.networkStatus = .Unavailable
                    //: printLog(message: "Network not reachable")
                    printLog(message: (String(mainDateId.suffix(5)) + "rk n" + String(data_bottomFormat.suffix(4)) + notiDataId.replacingOccurrences(of: "hide", with: "ac") + "able"))
                }
            }
            //: reachability.whenUnreachable = { _ in
            reachability.whenUnreachable = { _ in
                //: self.networkStatus = .Unavailable
                self.networkStatus = .Unavailable
                //: printLog(message: "Not reachable")
                printLog(message: (String(user_selectedPath) + String(constObjectValue)))
            }

            //: do {
            do {
                //: try reachability.startNotifier()
                try reachability.startNotifier()
                //: } catch {
            } catch {
                //: printLog(message: "Unable to start notifier")
                printLog(message: (String(data_actualPath.suffix(6)) + " to s" + data_elementUrl.replacingOccurrences(of: "tab", with: "ar") + " notifier"))
            }
        }
    }

    //: @objc func reachabilityChanged(note: Notification) {
    @objc func withTableLoad(note: Notification) {
        //: let reachability = note.object as? Reachability
        let reachability = note.object as? Reachability
        //: if reachability?.connection != .unavailable {
        if reachability?.connection != .unavailable {
            //: func__loadAppConfigData()
            labBottom()
        }
    }
}
