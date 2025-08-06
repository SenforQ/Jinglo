
//: Declare String Begin

/*: "/dist/loungePlus/index.html" :*/
fileprivate let app_labelData:[Character] = ["/","d","i","s","t","/","l","o","u"]
fileprivate let constAtTitle:[Character] = ["n","g"]
fileprivate let show_meColorPath:String = "ePlusequal top view lab"
fileprivate let userEqualValue:String = "let make imagex.html"

/*: "PremiumStarPlanBanner" :*/
fileprivate let constActiveUrl:String = "Premilet any"
fileprivate let data_showValue:[Character] = ["a","n","B"]
fileprivate let k_executeSumFormat:String = "annes"

/*: "uid" :*/
fileprivate let main_nameKey:[Character] = ["u","i","d"]

/*: "mfChatGift" :*/
fileprivate let const_labelUrl:String = "mfChainfo color self"
fileprivate let constMatchStr:String = "object"

/*: "mfChat" :*/
fileprivate let constEqualUrl:String = "mfChatarea back number view"

/*: "user" :*/
fileprivate let main_cornerValue:[Character] = ["u","s","e","r"]

/*: "Please verification first" :*/
fileprivate let mainVideoValue:String = "take lab observer iconPleas"
fileprivate let kResFrameData:[Character] = ["e"," ","v","e","r","i"]
fileprivate let noti_backgroundStr:[Character] = ["f","i","c","a","t","i","o","n"," ","f","i","r","s","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeSingleBannerModel.swift
//  AbroadTalking
//
//  Created by young on 2022/9/9.
//

//: import UIKit
import UIKit

//: struct SocialAdBannerModel: HandyJSON {
struct MakeSingleBannerModel: HandyJSON {
    // 广告图
    //: var pic: String = ""
    var pic: String = ""
    // 跳转链接
    //: var url: String = ""
    var url: String = ""
    // 跳转类型 0=无，1=跳转网页，2=跳转原生页面，3=游戏跳转，4=外部网页
    //: var type = 0
    var type = 0
    // 游戏宽高
    //: var widthHeight: Double?
    var widthHeight: Double?
    // 广告小图
    //: var thumbnail: String = ""
    var thumbnail: String = ""
}

// MARK: - Event

//: extension SocialAdBannerModel {
extension MakeSingleBannerModel {
    /// 跳转事件
    //: static func jumpEvent(model: SocialAdBannerModel) {
    static func eventScreen(model: MakeSingleBannerModel) {
        //: if model.type == 1 {
        if model.type == 1 { // 网页跳转
            //: let newUrl: String = model.url
            let newUrl: String = model.url
            //: if newUrl.contains("/dist/loungePlus/index.html") {
            if newUrl.contains((String(app_labelData) + String(constAtTitle) + String(show_meColorPath.prefix(5)) + "/inde" + String(userEqualValue.suffix(6)))) {
                //: RangePushManager.share.pushOn()
                RangePushManager.share.pushOn()
                //: return
                return
            }
            //: RangePushManager.share.func__pushToWebVC(urlStr: model.url)
            RangePushManager.share.userBlade(urlStr: model.url)

            //: } else if model.type == 2 {
        } else if model.type == 2 { // 原生跳转
            //: guard let url = URL(string: model.url),
            guard let url = URL(string: model.url),
                  //: let components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
                  let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
            else {
                //: return
                return
            }
            //: if model.url.contains("PremiumStarPlanBanner") { // 巨星计划
            if model.url.contains((String(constActiveUrl.prefix(5)) + "umStarPl" + String(data_showValue) + k_executeSumFormat.replacingOccurrences(of: "s", with: "r"))) { // 巨星计划
                //: SocialAdBannerModel.premiumStarPlanBanner()
                MakeSingleBannerModel.indicatorDown()
                //: return
                return
            }

            //: if let uidItem = components.queryItems?.first(where: { $0.name == "uid" }) {
            if let uidItem = components.queryItems?.first(where: { $0.name == (String(main_nameKey)) }) {
                //: let uid = uidItem.value ?? ""
                let uid = uidItem.value ?? ""
                //: if model.url.contains("mfChatGift") { // 私聊打开礼物面板
                if model.url.contains((String(const_labelUrl.prefix(5)) + "tGif" + constMatchStr.replacingOccurrences(of: "object", with: "t"))) { // 私聊打开礼物面板
                    //: RangePushManager.share.func__pushToPriveteChatVC(chatID: uid) { vc in
                    RangePushManager.share.liveInsideCompletion(chatID: uid) { vc in
                        //: vc.msgInputView.clickgiftBtn()
                        vc.msgInputView.blockChange()
                    }
                    //: } else if model.url.contains("mfChat") { // 私聊
                } else if model.url.contains((String(constEqualUrl.prefix(6)))) { // 私聊
                    //: RangePushManager.share.func__pushToPriveteChatVC(chatID: uid)
                    RangePushManager.share.liveInsideCompletion(chatID: uid)
                    //: } else if model.url.contains("user") { // 用户详情
                } else if model.url.contains((String(main_cornerValue))) { // 用户详情
                    //: RangePushManager.share.func__pushToUserDetailVC(uid: uid)
                    RangePushManager.share.clickOfUid(uid: uid)
                }
            }

            //: } else if model.type == 3 {
        } else if model.type == 3 { // 游戏跳转
            //: var config = TalkingWebConfig()
            var config = SearchConfig()
            //: config.widthHeight = model.widthHeight
            config.widthHeight = model.widthHeight
            //: config.clearBgColor = true
            config.clearBgColor = true
            //: RangePushManager.share.func__pushToWebVC(urlStr: model.url, webConfig: config)
            RangePushManager.share.userBlade(urlStr: model.url, webConfig: config)

            //: } else if model.type == 4 {
        } else if model.type == 4 { // 外部网页
            //: if let url = URL(string: model.url) {
            if let url = URL(string: model.url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }

    /// 加入巨星计划
    //: static func premiumStarPlanBanner() {
    static func indicatorDown() {
        //: if PunctuateThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue ||
        if PunctuateThen.share.loginUserMode.isTPAuth == AuthColumnConvertible.isSuccessed.rawValue ||
            //: PunctuateThen.share.loginUserMode.isRealPersonAuth == false {
            PunctuateThen.share.loginUserMode.isRealPersonAuth == false
        { // 真人认证成功 || 不需要真人认证
            //: if PunctuateThen.share.loginUserMode.premiumStarApplyStatus != PStarStatus.isOnGoing.rawValue {
            if PunctuateThen.share.loginUserMode.premiumStarApplyStatus != SizeBidirectionalCollection.isOnGoing.rawValue {
                //: RangePushManager.share.func__pushToWebVC(webViewType: .StarPlanIndex)
                RangePushManager.share.barOn(webViewType: .StarPlanIndex)
                //: } else {
            } else {
                //: RangePushManager.share.func__pushToWebVC(webViewType: .StarPlanAudit)
                RangePushManager.share.barOn(webViewType: .StarPlanAudit)
            }
            //: } else if PunctuateThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if PunctuateThen.share.loginUserMode.isTPAuth == AuthColumnConvertible.isOnGoing.rawValue { // 真人认证审核中
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().occupant(showMsg: (String(mainVideoValue.suffix(5)) + String(kResFrameData) + String(noti_backgroundStr)).localized)
            //: let vc = TalkingFinalVerificationVC()
            let vc = TopViewController()
            //: RangePushManager.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            RangePushManager.share.retrieve()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().occupant(showMsg: (String(mainVideoValue.suffix(5)) + String(kResFrameData) + String(noti_backgroundStr)).localized)
            //: RangePushManager.share.func__pushUserVerifyController(toast: nil)
            RangePushManager.share.controller(toast: nil)
        }
    }
}
