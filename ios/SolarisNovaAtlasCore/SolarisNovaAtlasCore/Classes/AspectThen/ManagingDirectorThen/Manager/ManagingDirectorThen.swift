
//: Declare String Begin

/*: "app/getConfig" :*/
fileprivate let showTransformMsg:String = "in forapp/"
fileprivate let mainObjectViewText:String = "content"

/*: "mf/user/getMyInfo" :*/
fileprivate let userTouchStr:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","M","y","I","n","f","o"]

/*: "mf/user/getInfoColumn" :*/
fileprivate let mainTransactionToStr:String = "mf/usefor let section name"
fileprivate let mainScreenStr:[Character] = ["r","/","g","e","t","I","n","f","o","C","o","l","u","m","n"]

/*: "%.2f" :*/
fileprivate let const_videoName:[Character] = ["%",".","2","f"]

/*: "mfCoin" :*/
fileprivate let mainNetRegularMsg:String = "mfCoinlet photo input info size"

/*: "mf/index/getConfig" :*/
fileprivate let show_equalId:String = "information on image leading selfmf/i"
fileprivate let noti_emptyMsg:String = "error labelgetCo"
fileprivate let dataDrawMessage:[Character] = ["n","f","i","g"]

/*: _ :*/
fileprivate let userSeatData:[Character] = ["_"]

/*: "baseinfo =  :*/
fileprivate let dataTableKey:String = "BASE"
fileprivate let appCardListKey:String = "info = let kit page break self"

/*: "UserBasicInfoSetting" :*/
fileprivate let dataPhoneTitle:[Character] = ["U","s","e","r","B"]
fileprivate let appToolEventData:String = "current leadingasicIn"
fileprivate let mainStatusPath:[Character] = ["f","o","S","e","t","t","i","n","g"]

/*: "/userTag.json" :*/
fileprivate let kQuantityKey:[Character] = ["/","u","s","e","r","T","a","g",".","j","s"]
fileprivate let constShowData:String = "oportrait"

/*: "json 解析失败" :*/
fileprivate let notiTextPath:[Character] = ["j","s","o","n"," ","解","析","失","败"]

/*: "app/reportDeviceId" :*/
fileprivate let kVideoTitle:String = "equal file selfapp/r"
fileprivate let constShareStr:String = "text as voice large indexeportD"
fileprivate let k_lockName:[Character] = ["e","v","i","c","e","I","d"]

/*: "p0" :*/
fileprivate let const_largeStr:String = "pdown"

/*: "token" :*/
fileprivate let noti_messageKey:[UInt8] = [0xd8,0xc3,0xc7,0xc9,0xc2]

/*: "app/reportFcmPushToken" :*/
fileprivate let mainImageMessage:[Character] = ["a","p","p","/","r","e"]
fileprivate let noti_filterData:String = "continue kitportF"
fileprivate let userDataId:String = "extra table recordToken"

/*: "app/init" :*/
fileprivate let appViewGiftPath:String = "else name title asapp/i"
fileprivate let kTextPath:[Character] = ["n","i","t"]

/*: "app/ping" :*/
fileprivate let notiMessageMsg:String = "component"
fileprivate let user_sectionName:[Character] = ["p","p","/","p","i","n","g"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagingDirectorThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/25.
//

//: import Adjust
import Adjust
//: import Alamofire
import Alamofire
//: import FirebaseMessaging
import FirebaseMessaging
//: import UIKit
import UIKit

//: var isRequestingInit = false
var kFailKey = false

//: var isRetryDeviceIdTime = 3.0
var appRecordPath = 3.0

//: class AppManagerRequest: NSObject {
class ManagingDirectorThen: NSObject {
    /// 请求app配置信息【无需登录】
    //: class func requestAppConfig(completion: @escaping FinishBlock) {
    class func tableTitleAfter(completion: @escaping FinishBlock) {
        //: let requestModel = TalkingRequestModel.init()
        let requestModel = SubRequestModel()
        //: requestModel.requestPath = "app/getConfig"
        requestModel.requestPath = (String(showTransformMsg.suffix(4)) + "getConfi" + mainObjectViewText.replacingOccurrences(of: "content", with: "g"))
        //: requestModel.showErrorStatusBar = false
        requestModel.showErrorStatusBar = false
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: GJ.startRequest(model: requestModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: requestModel) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingAppConfigKey)
                constDevicePath.set(result, forKey: dataVideoTitle)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let configModel = JSONDeserializer<MessageTransformable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: PunctuateThen.share.appConfigMode = configModel
                    PunctuateThen.share.appConfigMode = configModel
                    // 通知
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: const_logData, object: nil)
                    //: completion(succeed, result, errorModel)
                    completion(succeed, result, errorModel)
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
                let configInfo = constDevicePath.dictionary(forKey: dataVideoTitle)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let configModel = JSONDeserializer<MessageTransformable>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: PunctuateThen.share.appConfigMode = configModel
                    PunctuateThen.share.appConfigMode = configModel
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: const_logData, object: nil)
                    //: completion(true, result, errorModel)
                    completion(true, result, errorModel)
                }
            }
        }
    }

    //: class func func__requestUserInfo(completion: @escaping FinishBlock) {
    class func visible(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/user/getMyInfo"
        reqModel.requestPath = (String(userTouchStr))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingLoginUserInfoCacheKey)
                constDevicePath.set(result, forKey: main_playId)
                //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<MessageMeasurable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: PunctuateThen.share.loginUserMode = userModel
                    PunctuateThen.share.loginUserMode = userModel
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询用户余额
    //: class func func__getInfoColumn(completion: @escaping FinishBlock) {
    class func exceptViewCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/user/getInfoColumn"
        reqModel.requestPath = (String(mainTransactionToStr.prefix(6)) + String(mainScreenStr))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: PunctuateThen.share.loginUserMode.mf_coin = String(format: "%.2f", json["mfCoin"].doubleValue)
                PunctuateThen.share.loginUserMode.mf_coin = String(format: "%.2f", json[(String(mainNetRegularMsg.prefix(6)))].doubleValue)
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__requestUserConfig(completion: @escaping FinishBlock) {
    class func makeEvent(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/index/getConfig"
        reqModel.requestPath = (String(show_equalId.suffix(4)) + "ndex/" + String(noti_emptyMsg.suffix(5)) + String(dataDrawMessage))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: let configKey = "\(TalkingLoginUserConfigKey)_\(String(describing: PunctuateThen.share.loginUserMode.sex))"
            let configKey = "\(constFailFormat)_\(String(describing: PunctuateThen.share.loginUserMode.sex))"
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: configKey)
                constDevicePath.set(result, forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<AppReactiveCompatible>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: PunctuateThen.share.appUserConfigMode = userModel
                    PunctuateThen.share.appUserConfigMode = userModel
                    //: ModelDataV2Listener.shared.func__LogingIn()
                    ModelDataV2Listener.shared.colorCompletion()
                    //: func__checkUserBaseinfoFileVersionWithURL(baseinfo: PunctuateThen.share.appUserConfigMode.baseInfo)
                    pic(baseinfo: PunctuateThen.share.appUserConfigMode.baseInfo)
                    // 上传用户日志
                    //: if userModel.needUploadLog == true {
                    if userModel.needUploadLog == true {
                        //: UploadLogTool.shared.uploadLog(false)
                        GestureLogTool.shared.matchPhoto(false)
                    }
                    // 上报女性用户busy状态
                    //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
                    (QueryEnableReactiveCompatible.shared as! QueryEnableReactiveCompatible).dropPackage()
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: configKey)
                let configInfo = constDevicePath.dictionary(forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let userModel = JSONDeserializer<AppReactiveCompatible>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: PunctuateThen.share.appUserConfigMode = userModel
                    PunctuateThen.share.appUserConfigMode = userModel
                    //: ModelDataV2Listener.shared.func__LogingIn()
                    ModelDataV2Listener.shared.colorCompletion()
                }
            }
            //: NotificationCenter.default.post(name: UPDATE_INDEX_GETCONFIG_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: constTabValue, object: nil)
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__checkUserBaseinfoFileVersionWithURL(baseinfo: String) {
    class func pic(baseinfo: String) {
        //: let cacheUrl = Defaults.string(forKey: TalkingUserTagCacheUrlKey)
        let cacheUrl = constDevicePath.string(forKey: notiChangeUserMsg)
        //: printLog(message: "baseinfo = \(baseinfo)")
        printLog(message: (dataTableKey.lowercased() + String(appCardListKey.prefix(7))) + "\(baseinfo)")
        //: if cacheUrl != baseinfo {
        if cacheUrl != baseinfo {
            //: AF.request(baseinfo, method: .get).responseData { responseData in
            AF.request(baseinfo, method: .get).responseData { responseData in
                //: switch responseData.result {
                switch responseData.result {
                //: case .success:
                case .success:
                    //: let responseJson = String(data: responseData.data!, encoding: .utf8)
                    let responseJson = String(data: responseData.data!, encoding: .utf8)
                    //: if let responseModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: responseJson) {
                    if let responseModel = JSONDeserializer<ModelHandyJSON>.deserializeFrom(json: responseJson) {
                        //: Defaults.set(baseinfo, forKey: TalkingUserTagCacheUrlKey)
                        constDevicePath.set(baseinfo, forKey: notiChangeUserMsg)
                        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting"
                        let jsonPath = FileManager.startDirectory() + (String(dataPhoneTitle) + String(appToolEventData.suffix(6)) + String(mainStatusPath))
                        //: if FileManager.createFolder(folderPath: jsonPath) {
                        if FileManager.sizePath(folderPath: jsonPath) {
                            //: FileManager.writeStringToFile(content: responseJson!, writePath: jsonPath+"/userTag.json")
                            FileManager.technicality(content: responseJson!, writePath: jsonPath + (String(kQuantityKey) + constShowData.replacingOccurrences(of: "portrait", with: "n")))
                            //: PunctuateThen.share.func__loadUserTagCacheData()
                            PunctuateThen.share.loserData()
                        }
                        //: } else {
                    } else {
                        //: printLog(message: "json 解析失败")
                        printLog(message: (String(notiTextPath)))
                    }
                //: break
                //: case .failure:
                case .failure:

                    //: break
                    break
                }
            }
            //: } else {
        } else {
            //: PunctuateThen.share.func__loadUserTagCacheData()
            PunctuateThen.share.loserData()
        }
    }

    // 登录后上报FCM跟Device
    //: class func func__reportDeviceID() {
    class func deliver() {
        //: func__reportDeviceIdentifier()
        header()
    }

    /// 上报adid
    //: class func func__reportDeviceIdentifier() {
    class func header() {
        //: let adid = Adjust.adid() ?? ""
        let adid = Adjust.adid() ?? ""
        //: if !adid.isEmptyString {
        if !adid.isEmptyString {
            //: let reqModel = TalkingRequestModel.init()
            let reqModel = SubRequestModel()
            //: reqModel.requestType = .POST
            reqModel.requestType = .POST
            //: reqModel.requestPath = "app/reportDeviceId"
            reqModel.requestPath = (String(kVideoTitle.suffix(5)) + String(constShareStr.suffix(6)) + String(k_lockName))
            //: reqModel.showErrorStatusBar = false
            reqModel.showErrorStatusBar = false
            //: var params = UIDevice.deviceInfoDic
            var params = UIDevice.deviceInfoDic
            //: if let poStr = params["p0"] {
            if let poStr = params["p0"] {
                //: let token = NSDate.getCurrentTimeStamp()
                let token = NSDate.contentTitleCell()
                //: reqModel.addHeaderToken = token
                reqModel.addHeaderToken = token
                //: let key = token.appending(TokenSaltStr)
                let key = token.appending(const_micIconStr)
                //: params["p0"] = (poStr as? String)?.encrypt(withKey: key)
                params["p0"] = (poStr as? String)?.keyView(key)
            }
            //: reqModel.params = params
            reqModel.params = params
            //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
            showTopStr.toFromLabel(model: reqModel) { _, _, _ in
            }
            //: }else {
        } else {
            //: if isRetryDeviceIdTime <= 384 {
            if appRecordPath <= 384 {
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + isRetryDeviceIdTime) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + appRecordPath) {
                    //: isRetryDeviceIdTime *= 2
                    appRecordPath *= 2
                    //: self.func__reportDeviceIdentifier()
                    self.header()
                }
            }
        }
    }

    //: class func func__reportFCMID() {
    class func ofHead() {
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, _ in
            //: if let token = token {
            if let token = token {
                //: let params = ["token": token]
                let params = [String(bytes: noti_messageKey.map{$0^172}, encoding: .utf8)!: token]
                //: let reqModel = TalkingRequestModel.init()
                let reqModel = SubRequestModel()
                //: reqModel.requestType = .POST
                reqModel.requestType = .POST
                //: reqModel.requestPath = "app/reportFcmPushToken"
                reqModel.requestPath = (String(mainImageMessage) + String(noti_filterData.suffix(5)) + "cmPush" + String(userDataId.suffix(5)))
                //: reqModel.params = params
                reqModel.params = params
                //: reqModel.showErrorStatusBar = false
                reqModel.showErrorStatusBar = false
                //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
                showTopStr.toFromLabel(model: reqModel) { _, _, _ in
                }
            }
        }
    }

    //: class func func__initAppRequest() {
    class func back() {
        //: if isRequestingInit {
        if kFailKey {
            //: return
            return
        }
        //: isRequestingInit = true
        kFailKey = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "app/init"
        reqModel.requestPath = (String(appViewGiftPath.suffix(5)) + String(kTextPath))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, _, _ in
            //: isRequestingInit =  false
            kFailKey = false
            //: if succeed && PunctuateThen.share.request_HasInit == false {
            if succeed && PunctuateThen.share.request_HasInit == false {
                //: PunctuateThen.share.request_HasInit = true
                PunctuateThen.share.request_HasInit = true
            }
        }
    }

    //: class func func__initRequestHost(completion: @escaping FinishBlock) {
    class func gossipingTap(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "app/ping"
        reqModel.requestPath = (notiMessageMsg.replacingOccurrences(of: "component", with: "a") + String(user_sectionName))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
