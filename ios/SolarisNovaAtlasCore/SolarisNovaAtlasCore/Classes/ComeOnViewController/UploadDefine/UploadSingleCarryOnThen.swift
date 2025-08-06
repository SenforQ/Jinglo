
//: Declare String Begin

/*: "V4ujGjsNUl6RvgjvgD6m91" :*/
fileprivate let kTopId:String = "V4ujclick app"
fileprivate let userAdName:String = "Rvgjinteraction label self game"

/*: "data/index" :*/
fileprivate let main_indicatorId:String = "voiceata"
fileprivate let appMicTitle:String = "/indexnot model price"

/*: "toUid" :*/
fileprivate let user_screenModelTitle:String = "toUidvar color text name"

/*: "uid" :*/
fileprivate let app_applicationMsg:String = "ubottom"

/*: "POST" :*/
fileprivate let main_backgroundData:[Character] = ["P","O","S","T"]

/*: "Token" :*/
fileprivate let notiBarName:[Character] = ["T","o","k","e","n"]

/*: "%@" :*/
fileprivate let noti_bigStr:String = "%center"

/*: "无法解析出JSON字符串" :*/
fileprivate let main_lengthMsg:String = "无"
fileprivate let k_actionData:String = "make self intimate manager camera法解析出JS"

/*: "plat" :*/
fileprivate let appInputSizePlayUrl:[Character] = ["p","l","a","t"]

/*: "ios" :*/
fileprivate let const_instanceUrl:String = "iicon"

/*: "packageId" :*/
fileprivate let user_voiceUrl:String = "pacsend"
fileprivate let mainToData:[Character] = ["d"]

/*: "channel" :*/
fileprivate let main_labelData:[Character] = ["c"]
fileprivate let noti_rowRequestName:String = "HANNEL"

/*: "type" :*/
fileprivate let mainUserPath:String = "hiddenype"

/*: "stat" :*/
fileprivate let main_imageValue:String = "scontentt"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UploadSingleCarryOnThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/19.
//

//: import Alamofire
import Alamofire
//: import UIKit
import UIKit

//: let uploadRecord = UploadRecordManage()
let const_screenFormat = UploadSingleCarryOnThen()
//: let TokenSaltStr = "V4ujGjsNUl6RvgjvgD6m91"
let const_micIconStr = (String(kTopId.prefix(4)) + "GjsNUl6" + String(userAdName.prefix(4)) + "vgD6m91")

//: class UploadRecordManage: NSObject {
class UploadSingleCarryOnThen: NSObject {
    //: public func uploadRecordEvent(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
    public func occurrenceIn(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (main_indicatorId.replacingOccurrences(of: "voice", with: "d") + String(appMicTitle.prefix(6)))
        //: reqModel.requestServer = PunctuateThen.share.appConfigMode.reportDomain
        reqModel.requestServer = PunctuateThen.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.editPosition()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: if jsonStr?.count ?? 0 > 0 {
        if jsonStr?.count ?? 0 > 0 {
            //: dict["c"] = NSDictionary.dictionary(withJsonString: jsonStr)
            dict["c"] = NSDictionary.requestContent(withJsonString: jsonStr)
            //: } else {
        } else {
            //: var messageDic = [String: Any]()
            var messageDic = [String: Any]()
            //: if toUid?.count ?? 0 > 0 {
            if toUid?.count ?? 0 > 0 {
                //: messageDic["toUid"] = toUid
                messageDic[(String(user_screenModelTitle.prefix(5)))] = toUid
            }
            //: messageDic["uid"] = PunctuateThen.share.loginUserMode.userID
            messageDic[(app_applicationMsg.replacingOccurrences(of: "bottom", with: "id"))] = PunctuateThen.share.loginUserMode.userID
            //: dict["c"] = messageDic /// 事件详细内容
            dict["c"] = messageDic /// 事件详细内容
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.thanForOverdo(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordEvent(eventID: String, parameterStr: [String: Any]) {
    public func infoEqual(eventID: String, parameterStr: [String: Any]) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (main_indicatorId.replacingOccurrences(of: "voice", with: "d") + String(appMicTitle.prefix(6)))
        //: reqModel.requestServer = PunctuateThen.share.appConfigMode.reportDomain
        reqModel.requestServer = PunctuateThen.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.editPosition()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: let messageDic = NSMutableDictionary(dictionary: parameterStr)
        let messageDic = NSMutableDictionary(dictionary: parameterStr)
        //: messageDic["uid"] = PunctuateThen.share.loginUserMode.userID
        messageDic[(app_applicationMsg.replacingOccurrences(of: "bottom", with: "id"))] = PunctuateThen.share.loginUserMode.userID
        //: dict["c"] = messageDic /// 事件详细内容
        dict["c"] = messageDic /// 事件详细内容
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.thanForOverdo(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordRequest(model: TalkingRequestModel, completion: @escaping FinishBlock) {
    public func thanForOverdo(model: SubRequestModel, completion _: @escaping FinishBlock) {
        //: let serverUrl = GJ.buildServerUrl(model: model)
        let serverUrl = showTopStr.appModel(model: model)

        //: let token = NSDate.getCurrentTimeStamp()
        let token = NSDate.contentTitleCell()

        //: let request = NSMutableURLRequest()
        let request = NSMutableURLRequest()
        //: request.httpMethod = "POST"
        request.httpMethod = (String(main_backgroundData))
        //: request.url = NSURL(string: serverUrl) as URL?
        request.url = NSURL(string: serverUrl) as URL?
        //: request.timeoutInterval = 30
        request.timeoutInterval = 30
//        request.setValue("keep-alive", forHTTPHeaderField: "Connection")
//        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        //: request.setValue(token, forHTTPHeaderField: "Token")
        request.setValue(token, forHTTPHeaderField: (String(notiBarName)))

        //: let key = token.appendingFormat("%@", TokenSaltStr)
        let key = token.appendingFormat("%@", const_micIconStr)
        //: let bodyString = self.getJSONStringFromDictionary(model.params as NSDictionary)
        let bodyString = self.contentView(model.params as NSDictionary)
        //: let encryStr = bodyString.encrypt(withKey: key)
        let encryStr = bodyString.keyView(key)
        //: request.httpBody = encryStr?.data(using: .utf8)
        request.httpBody = encryStr?.data(using: .utf8)
        //: let session = URLSession.shared
        let session = URLSession.shared
        //: let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
        let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
            //: if error != nil {
            if error != nil {
                //: print(error ?? "")
                //: } else {
            } else {
                //: let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                //: if let responseModel = JSONDeserializer<TalkingBaseResponse>.deserializeFrom(json: jsonStr as String?) {
                if let responseModel = JSONDeserializer<SessionModelType>.deserializeFrom(json: jsonStr as String?) {
                    //: print(responseModel)
                }
            }
        }
        //: datatask.resume()
        datatask.resume()
    }

    //: func getJSONStringFromDictionary(_ dictionary: NSDictionary) -> String {
    func contentView(_ dictionary: NSDictionary) -> String {
        //: if !JSONSerialization.isValidJSONObject(dictionary) {
        if !JSONSerialization.isValidJSONObject(dictionary) {
            //: printLog(message: "无法解析出JSON字符串")
            printLog(message: (main_lengthMsg.capitalized + String(k_actionData.suffix(6)) + "ON字符串"))
            //: return String()
            return String()
        }
        //: let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        //: let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        //: return JSONString! as String
        return JSONString! as String
    }
}

//: extension UploadRecordManage {
extension UploadSingleCarryOnThen {
    /// 获取上报字典信息
    //: private func getUploadInfoDict() -> [String: Any] {
    private func editPosition() -> [String: Any] {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["plat"] = "ios" /// 客户端平台
        dict[(String(appInputSizePlayUrl))] = (const_instanceUrl.replacingOccurrences(of: "icon", with: "os")) /// 客户端平台
        //: dict["packageId"] = PackageID /// 分包号
        dict[(user_voiceUrl.replacingOccurrences(of: "send", with: "k") + "ageI" + String(mainToData))] = show_systemValue /// 分包号
        //: dict["v"] = AppNetVersion /// 客户端版本
        dict["v"] = constKeyFormat /// 客户端版本
        //: dict["t"] = NSDate.getCurrentTimeStamp() /// 事件发生的时间
        dict["t"] = NSDate.contentTitleCell() /// 事件发生的时间
        //: dict["channel"] = PackageID /// 渠道代号,ios默认和packageId 相同
        dict[(String(main_labelData) + noti_rowRequestName.lowercased())] = show_systemValue /// 渠道代号,ios默认和packageId 相同
        //: dict["type"] = "stat" /// 上报类型(stat埋点上报、pfm性能指标)
        dict[(mainUserPath.replacingOccurrences(of: "hidden", with: "t"))] = (main_imageValue.replacingOccurrences(of: "content", with: "ta")) /// 上报类型(stat埋点上报、pfm性能指标)
        //: return dict
        return dict
    }
}
