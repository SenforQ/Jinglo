
//: Declare String Begin

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let main_hiddenValue:[UInt8] = [0xff,0xf0,0xf5,0xff,0xf7,0xcf,0xe8,0xfd,0xee,0xcc,0xee,0xf3,0xf6,0xf9,0xff,0xe8,0xec,0xf3,0xec,0xb1,0xe9,0xec,0xef,0xdf,0xfd,0xf2,0xff,0xf9,0xf0]

private func importPair(video num: UInt8) -> UInt8 {
    return num ^ 156
}

/*: "d703t7" :*/
fileprivate let main_contentFormat:String = "D703T7"

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let user_textValue:[UInt8] = [0xcc,0xc3,0xc6,0xcc,0xc4,0xfc,0xdb,0xce,0xdd,0xff,0xdd,0xc0,0xc5,0xca,0xcc,0xdb,0xdf,0xc0,0xdf,0x82,0xda,0xdf,0xdc,0xe9,0xc6,0xc1,0xcb,0xc0,0xda,0xdb,0xc2,0xc0,0xdd,0xca]

private func materializationReply(mode num: UInt8) -> UInt8 {
    return num ^ 175
}

/*: "112l2n" :*/
fileprivate let noti_removeInfoResultUrl:String = "112l2nadd global for color as"

/*: "In app purchase" :*/
fileprivate let notiSucceedId:String = "voice type followIn app"
fileprivate let userFullTitle:String = "chuser"
fileprivate let appOrientationMessage:[Character] = ["e"]

/*: "3exny9" :*/
fileprivate let showMenuData:String = "3exny9error target self task observer"

/*: "Install" :*/
fileprivate let main_expressPath:[UInt8] = [0xf8,0xdf,0xc2,0xc5,0xd0,0xdd,0xdd]

private func equalPic(write num: UInt8) -> UInt8 {
    return num ^ 177
}

/*: "3lek1z" :*/
fileprivate let k_onMsg:String = "3lek1zshared var to size count"

/*: "RegisterSuccess" :*/
fileprivate let const_succeedModelMessage:[UInt8] = [0x92,0xa5,0xa7,0xa9,0xb3,0xb4,0xa5,0xb2,0x93,0xb5,0xa3,0xa3,0xa5,0xb3,0xb3]

/*: "lrhbux" :*/
fileprivate let notiChangeUrl:String = "LRHBUX"

/*: "subscribe_sus" :*/
fileprivate let noti_textName:[Character] = ["s","u","b","s","c","r","i","b","e","_"]
fileprivate let mainGiftValue:String = "redured"

/*: "q2ktta" :*/
fileprivate let noti_eventTitle:[Character] = ["q","2","k","t","t","a"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExamineThen.swift
//  AbroadTalking
//
//  Created by young on 2022/10/17.
//

//: import Adjust
import Adjust
//: import UIKit
import UIKit

//: class TalkingAdjustManager: NSObject {
class ExamineThen: NSObject {
    //: static let share = TalkingAdjustManager()
    static let share = ExamineThen()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    // MARK: - Lazy load

    //: private lazy var adjustDict: [String: String] = {
    private lazy var adjustDict: [String: String] = //: return ["clickStarProjectpop-upsCancel":"d703t7",
        [String(bytes: main_hiddenValue.map{importPair(video: $0)}, encoding: .utf8)!: "6liu3g",
         //: "clickStarProjectpop-upsFindoutmore":"112l2n",
         String(bytes: user_textValue.map{materializationReply(mode: $0)}, encoding: .utf8)!: "j14j68",
         //: "In app purchase": "3exny9",
         (String(notiSucceedId.suffix(6)) + " pur" + userFullTitle.replacingOccurrences(of: "user", with: "as") + String(appOrientationMessage)): "2e5p42",
         //: "Install": "3lek1z",
         String(bytes: main_expressPath.map{equalPic(write: $0)}, encoding: .utf8)!: "yup3pb",
         //: "RegisterSuccess": "lrhbux",
         String(bytes: const_succeedModelMessage.map{$0^192}, encoding: .utf8)!: "3fttwl",
         //: "subscribe_sus": "q2ktta"]
         (String(noti_textName) + mainGiftValue.replacingOccurrences(of: "red", with: "s")): "cyj2oc"]
    //: }()
}

//: extension TalkingAdjustManager {
extension ExamineThen {
    /// 添加内购埋点事件
    /// - Parameters:
    ///   - price: 价格
    ///   - currency: 货币单位
    //: func addPurchasedEvent(price: Double, currency: String) {
    func viewCurrency(price: Double, currency: String) {
        //: guard let token = adjustDict["In app purchase"] else {
        guard let token = adjustDict[(String(notiSucceedId.suffix(6)) + " pur" + userFullTitle.replacingOccurrences(of: "user", with: "as") + String(appOrientationMessage))] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setRevenue(price, currency: currency)
        event?.setRevenue(price, currency: currency)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加订阅埋点事件
    /// - Parameters:
    ///   - price: 价格
    ///   - currency: 货币单位
    //: func addSubscribeEvent(price: Double, currency: String) {
    func priceInfo(price: Double, currency: String) {
        //: guard let token = adjustDict["subscribe_sus"] else {
        guard let token = adjustDict[(String(noti_textName) + mainGiftValue.replacingOccurrences(of: "red", with: "s"))] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setRevenue(price, currency: currency)
        event?.setRevenue(price, currency: currency)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加埋点事件
    /// - Parameter key: 事件名
    //: func addEvent(key: String) {
    func sendData(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加去重事件【只记录一次】
    /// - Parameter key: 事件名
    //: func addOnceEvent(key: String) {
    func bagOnce(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setTransactionId(token)
        event?.setTransactionId(token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }
}
