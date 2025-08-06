
//: Declare String Begin

/*: "app_marsxlog" :*/
fileprivate let show_noMsg:String = "APP"
fileprivate let data_leadingPath:String = "_marfor view extension normal"

/*: "Install" :*/
fileprivate let mainBackgroundFormat:String = "handle"
fileprivate let dataPageName:String = "maketall"

/*: "TXUGCBase初始化：result:  :*/
fileprivate let user_layerKey:String = "TXUsex"
fileprivate let user_domainFormat:String = "e\u{521d}始化："

/*: , reason:  :*/
fileprivate let userBottomAppearPath:String = "position hidden for, rea"

/*: ." :*/
fileprivate let dataOnGestureText:[Character] = ["."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FourthBaseDelegate+ThirdParty.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/3.
//

//: import Adjust
import Adjust
//: import DXMarsXlog
import DXMarsXlog
//: import Foundation
import Foundation
//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

// MARK: - Public Event

//: extension AppDelegateHelper {
extension FourthBaseDelegate {
    /// 第三方sdk初始化
    /// - Parameter application: application
    //: func initThirdPartySetup(_ application: UIApplication) {
    func video(_: UIApplication) {
        // 程序启动就实例化进行监听（处理自动续订的情况）
        //: _ = AppleIAPManager.shared
        _ = VoiceReactiveCompatible.shared

        //: createMsgVoicePath()
        createMsgVoicePath()

        //: DXMarsXLogger.shared().initWithNamePrefix("app_marsxlog")
        DXMarsXLogger.shared().initWithNamePrefix((show_noMsg.lowercased() + String(data_leadingPath.prefix(4)) + "sxlog"))

        //: ModelDataV2Listener.shared.func__TXSDKInit()
        ModelDataV2Listener.shared.arrayInit()

        //: initADjust()
        image()
        // 首次打开埋点【只记录一次】
        //: TalkingAdjustManager.share.addOnceEvent(key: "Install")
        ExamineThen.share.bagOnce(key: (mainBackgroundFormat.replacingOccurrences(of: "handle", with: "I") + dataPageName.replacingOccurrences(of: "make", with: "ns")))
        //: setupTXLive()
        observer()
        //: setupTXUGC()
        disappear()

        //: guard SenseTime_Use == true else { return }
        guard const_useId == true else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            //: if STLicHelper.share.checkLicense() == false {
            if EqualStyleThen.share.resultAdd() == false {
                //: SenseTime_Use = false
                const_useId = false
                //: STLicHelper.share.checkRemoteLicInfoWith { succeed in
                EqualStyleThen.share.removeModel { succeed in
                    // 更新商汤美颜是否可用
                    //: SenseTime_Use = succeed
                    const_useId = succeed
                }
            }
        }
    }
}

// MARK: - Private Event

//: extension AppDelegateHelper {
extension FourthBaseDelegate {
    //: private func setupTXLive() {
    private func observer() {
        // 腾讯SDK 6.4版本之后，推流功能需要license验证SDK，
        //: if TXLIVE_LICENSE_URL.count > 0 {
        if noti_showFormat.count > 0 {
            //: TXLiveBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
            TXLiveBase.setLicenceURL(noti_showFormat, key: showAppStatusStr)
            //: TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
            TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
        }
    }

    // 短视频license
    //: private func setupTXUGC() {
    private func disappear() {
        //: TXUGCBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
        TXUGCBase.setLicenceURL(noti_showFormat, key: showAppStatusStr)
        //: TXUGCBase.sharedInstance().delegate = self
        TXUGCBase.sharedInstance().delegate = self
    }

    /// adjust事件买点统计
    //: private func initADjust() {
    private func image() {
        //: var environment = ""
        var environment = ""
        //: if !Environment_Formal {
        if !user_pointButtonNameUrl {
            //: environment = ADJEnvironmentSandbox
            environment = ADJEnvironmentSandbox
            //: } else {
        } else {
            //: environment = ADJEnvironmentProduction
            environment = ADJEnvironmentProduction
        }
        //: let yourAppToken = AdjustKey
        let yourAppToken = notiScreenUrl
        //: let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        //: adjustConfig?.logLevel = ADJLogLevelWarn
        adjustConfig?.logLevel = ADJLogLevelWarn
        //: Adjust.appDidLaunch(adjustConfig)
        Adjust.appDidLaunch(adjustConfig)
    }
}

// MARK: - TXUGCBaseDelegate【短视频压缩、上传】

//: extension AppDelegateHelper: TXUGCBaseDelegate {
extension FourthBaseDelegate: TXUGCBaseDelegate {
    //: public func onLicenceLoaded(_ result: Int32, reason: String!) {
    public func onLicenceLoaded(_ result: Int32, reason: String!) {
        //: UploadLogTool.writeLog(msg: "TXUGCBase初始化：result: \(result), reason: \(String(describing: reason)).")
        GestureLogTool.playChangeImage(msg: (user_layerKey.replacingOccurrences(of: "sex", with: "G") + "CBas" + user_domainFormat + "result: ") + "\(result)" + (String(userBottomAppearPath.suffix(5)) + "son: ") + "\(String(describing: reason)).")
    }
}
