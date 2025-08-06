
//: Declare String Begin

/*: "action" :*/
fileprivate let constGiftShareUrl:[UInt8] = [0xd2,0xd0,0xc7,0xda,0xdc,0xdd]

private func topIndex(take num: UInt8) -> UInt8 {
    return num ^ 179
}

/*: "category" :*/
fileprivate let data_textUrl:[UInt8] = [0x23,0x21,0x34,0x25,0x27,0x2f,0x32,0x39]

fileprivate func panoramicView(layer num: UInt8) -> UInt8 {
    let value = Int(num) + 64
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "label" :*/
fileprivate let dataMediumSignMessage:String = "LABEL"

/*: "user_action" :*/
fileprivate let show_dateValue:String = "user_acmake self file voice"
fileprivate let userLayerMsg:String = "TION"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PanStartAnalyticsManager.swift
//  SolarisNovaAtlasCore
//
//  Created by DouXiu on 2025/4/1.
//

//: import FirebaseAnalytics
import FirebaseAnalytics
//: import UIKit
import UIKit

//: class FirebaseAnalyticsManager: NSObject {
class PanStartAnalyticsManager: NSObject {
    //: static let share = FirebaseAnalyticsManager()
    static let share = PanStartAnalyticsManager()
    //: private override init() {}
    override private init() {}

    // MARK: - 用户属性

    //: func setUserProperty(name: String, value: String) {
    func biologyLaboratory(name: String, value: String) {
        //: Analytics.setUserProperty(value, forName: name)
        Analytics.setUserProperty(value, forName: name)
    }

    // MARK: - 用户行为追踪

    //: func trackUserAction(action: String, category: String, label: String? = nil) {
    func untilAdd(action: String, category: String, label: String? = nil) {
        //: var parameters: [String: Any] = [
        var parameters: [String: Any] = [
            //: "action": action,
            String(bytes: constGiftShareUrl.map{topIndex(take: $0)}, encoding: .utf8)!: action,
            //: "category": category,
            String(bytes: data_textUrl.map{panoramicView(layer: $0)}, encoding: .utf8)!: category,
        ]

        //: if let label = label {
        if let label = label {
            //: parameters["label"] = label
            parameters[(dataMediumSignMessage.lowercased())] = label
        }

        //: logEvent(name: "user_action", parameters: parameters)
        windowContent(name: (String(show_dateValue.prefix(7)) + userLayerMsg.lowercased()), parameters: parameters)
    }

    // MARK: - 页面访问追踪

    //: func trackScreenView(screenName: String, screenClass: String) {
    func atEqual(screenName: String, screenClass: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventScreenView,
            AnalyticsEventScreenView,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterScreenName: screenName,
                AnalyticsParameterScreenName: screenName,
                //: AnalyticsParameterScreenClass: screenClass,
                AnalyticsParameterScreenClass: screenClass,
                //: ])
            ]
        )
    }

    // MARK: - 事件追踪

    //: func logEvent(name: String, parameters: [String: Any]? = nil) {
    func windowContent(name: String, parameters: [String: Any]? = nil) {
        //: Analytics.logEvent(name, parameters: parameters)
        Analytics.logEvent(name, parameters: parameters)
    }

    // MARK: - 内购事件追踪

    //: func trackPurchase(payType: String, price: Double, currency: String) {
    func currency(payType: String, price: Double, currency: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventPurchase,
            AnalyticsEventPurchase,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterPaymentType: payType,
                AnalyticsParameterPaymentType: payType,
                //: AnalyticsParameterPrice: price,
                AnalyticsParameterPrice: price,
                //: AnalyticsParameterCurrency: currency,
                AnalyticsParameterCurrency: currency,
                //: ])
            ]
        )
    }
}
