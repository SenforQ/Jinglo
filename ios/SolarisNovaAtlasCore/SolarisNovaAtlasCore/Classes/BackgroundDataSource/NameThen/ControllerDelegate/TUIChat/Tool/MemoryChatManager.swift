
//: Declare String Begin

/*: "msgType" :*/
fileprivate let mainTingPath:String = "msgTyadjustment text field filter make"
fileprivate let show_aspectValue:[Character] = ["p","e"]

/*: "audio" :*/
fileprivate let appHomeModelPath:String = "makeudio"

/*: "contentType" :*/
fileprivate let showPackageStr:String = "conshow"

/*: "AudioMsg" :*/
fileprivate let dataLevelValue:String = "add modelAudioMsg"

/*: "audioData" :*/
fileprivate let showViewPath:String = "audioDatahidden label if"

/*: "audioUri" :*/
fileprivate let user_messageValue:[Character] = ["a","u","d"]
fileprivate let k_labKey:String = "ioUriself turn"

/*: " customElem.data is error" :*/
fileprivate let k_managerPath:[Character] = [" ","c","u","s","t","o","m","E","l"]
fileprivate let show_centerAwakeWhiteStr:[Character] = ["e","m",".","d","a","t","a"," ","i","s"," ","e","r","r","o","r"]

/*: "extra" :*/
fileprivate let k_bagFormat:[Character] = ["e","x","t","r","a"]

/*: "msgInfo" :*/
fileprivate let app_collectionStr:String = "msgInfobackground location hidden inner camera"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MemoryChatManager.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

//: import Foundation
import Foundation

//: public class MemoryChatManager: NSObject {
public class MemoryChatManager: NSObject {
    //: @objc class public func parseTXMessageData(data: Data)-> Dictionary<String, Any> {
    @objc public class func parse(data: Data) -> [String: Any] {
        //: let dict = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        let dict = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        //: if dict != nil {
        if dict != nil {
            //: return (dict as! NSDictionary) as! Dictionary<String, Any>
            return (dict as! NSDictionary) as! [String: Any]
        }
        //: return NSDictionary() as! Dictionary<String, Any>
        return NSDictionary() as! [String: Any]
    }
}

//: extension MemoryChatManager {
extension MemoryChatManager {
    //: class func getMessageInsertTime() -> Double {
    class func cancelPenetrate() -> Double {
        //: var timeStamp: Double = 0
        var timeStamp: Double = 0
        //: let curDate = Date().timeIntervalSince1970
        let curDate = Date().timeIntervalSince1970
        //: let msInterval = floor(curDate * 1000)
        let msInterval = floor(curDate * 1000)
        //: var deltaTime = Double(V2TIMManager.sharedInstance().getServerTime())
        var deltaTime = Double(V2TIMManager.sharedInstance().getServerTime()) // 秒为单位
        //: if deltaTime<1 {
        if deltaTime < 1 {
            //: deltaTime = 0
            deltaTime = 0
        }
        //: timeStamp = msInterval-deltaTime
        timeStamp = msInterval - deltaTime
        //: return timeStamp
        return timeStamp
    }

    //: class func checkVoiceJsonMsg(msginfo: [String: JSON]) -> Bool {
    class func goOverJsonVoiceMsginfoPause(msginfo: [String: JSON]) -> Bool {
        //: let msgType = msginfo["msgType"]?.stringValue ?? ""
        let msgType = msginfo[(String(mainTingPath.prefix(5)) + String(show_aspectValue))]?.stringValue ?? ""
        //: if msgType == "audio" {
        if msgType == (appHomeModelPath.replacingOccurrences(of: "make", with: "a")) {
            //: return true
            return true
        }
        //: let contentType = msginfo["contentType"]?.stringValue ?? ""
        let contentType = msginfo[(showPackageStr.replacingOccurrences(of: "show", with: "t") + "entType")]?.stringValue ?? ""
        //: if contentType == "AudioMsg" {
        if contentType == (String(dataLevelValue.suffix(8))) {
            //: return true
            return true
        }
        //: let audioData = msginfo["audioData"]?.stringValue ?? ""
        let audioData = msginfo[(String(showViewPath.prefix(9)))]?.stringValue ?? ""
        //: if  audioData.isEmptyString == false {
        if audioData.isEmptyString == false {
            //: return true
            return true
        }

        //: let audioUri = msginfo["audioUri"]?.stringValue ?? ""
        let audioUri = msginfo[(String(user_messageValue) + String(k_labKey.prefix(5)))]?.stringValue ?? ""
        //: if audioUri.isEmptyString == false {
        if audioUri.isEmptyString == false {
            //: return true
            return true
        }
        //: return false
        return false
    }

    //: class func checkVoiceMessage(message: V2TIMMessage) -> Bool {
    class func draft(message: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: message.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: message.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(k_managerPath) + String(show_centerAwakeWhiteStr)))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json[(String(k_bagFormat))]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(String(app_collectionStr.prefix(7)))]
        //: return checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)
        return goOverJsonVoiceMsginfoPause(msginfo: msgInfo.dictionaryValue)
    }

    //: @objc class public func checkVoiceMsg(msginfo: [String: Any]) -> Bool {
    @objc public class func sprechgesang(msginfo: [String: Any]) -> Bool {
        //: if msginfo.keys.contains("msgType") {
        if msginfo.keys.contains((String(mainTingPath.prefix(5)) + String(show_aspectValue))) {
            //: let msgType = msginfo["msgType"] as? String
            let msgType = msginfo[(String(mainTingPath.prefix(5)) + String(show_aspectValue))] as? String
            //: if msgType == "audio" {
            if msgType == (appHomeModelPath.replacingOccurrences(of: "make", with: "a")) {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("contentType") {
        if msginfo.keys.contains((showPackageStr.replacingOccurrences(of: "show", with: "t") + "entType")) {
            //: let contentType = msginfo["contentType"] as? String
            let contentType = msginfo[(showPackageStr.replacingOccurrences(of: "show", with: "t") + "entType")] as? String
            //: if contentType == "AudioMsg" {
            if contentType == (String(dataLevelValue.suffix(8))) {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("audioData") {
        if msginfo.keys.contains((String(showViewPath.prefix(9)))) {
            //: let audioData = msginfo["audioData"] as? String
            let audioData = msginfo[(String(showViewPath.prefix(9)))] as? String
            //: if !audioData!.isEmptyString {
            if !audioData!.isEmptyString {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("audioUri") {
        if msginfo.keys.contains((String(user_messageValue) + String(k_labKey.prefix(5)))) {
            //: let audioUri = msginfo["audioUri"] as? String
            let audioUri = msginfo[(String(user_messageValue) + String(k_labKey.prefix(5)))] as? String
            //: if !audioUri!.isEmptyString {
            if !audioUri!.isEmptyString {
                //: return true
                return true
            }
        }
        //: return false
        return false
    }
}
