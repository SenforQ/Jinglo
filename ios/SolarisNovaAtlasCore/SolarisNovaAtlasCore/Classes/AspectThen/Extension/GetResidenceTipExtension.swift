
//: Declare String Begin

/*: "JDStatusBarStyleDefault" :*/
fileprivate let const_fileMessage:String = "if with view forJDSta"
fileprivate let dataLabEffectPath:String = "rStyllevel center"
fileprivate let app_targetFormat:String = "acurrentt"

/*: "JDStatusBarStyleError" :*/
fileprivate let user_ofUrl:[Character] = ["J","D"]
fileprivate let const_showTitle:String = "array lack in selected sizeStatu"
fileprivate let k_labelName:String = "tyleEuser let guard message"

/*: "JDStatusBarStyleSuccess" :*/
fileprivate let constViewValue:[Character] = ["J","D","S","t","a","t","u","s","B","a","r","S","t","y","l"]
fileprivate let noti_controlStr:String = "push by number view makeeSuc"

/*: "2AB572" :*/
fileprivate let constBehindMakeContent:String = "title card bottom range user2AB572"

/*: "F05E5E" :*/
fileprivate let notiRangeRawValue:String = "Fhidden5E5"
fileprivate let k_largeMessage:String = "hung"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GetResidenceTipExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import JDStatusBarNotification
import JDStatusBarNotification
//: import UIKit
import UIKit

//: extension NSObject {
extension NSObject {
    //: @objc public func func__showStatusBarNormrlMsg(showMsg: String) {
    @objc public func getResidence(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleDefault")
        self.exhibitName(showMsg: showMsg, dismissTime: 1.5, styleName: (String(const_fileMessage.suffix(5)) + "tusBa" + String(dataLabEffectPath.prefix(5)) + "eDef" + app_targetFormat.replacingOccurrences(of: "current", with: "ul")))
    }

    //: @objc public func func__showStatusBarErrorMsg(showMsg: String) {
    @objc public func drawObserver(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleError")
        self.exhibitName(showMsg: showMsg, dismissTime: 1.5, styleName: (String(user_ofUrl) + String(const_showTitle.suffix(5)) + "sBarS" + String(k_labelName.prefix(5)) + "rror"))
    }

    //: func func__showStatusBarSuccessMsg(showMsg: String) {
    func occupant(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleSuccess")
        self.exhibitName(showMsg: showMsg, dismissTime: 1.5, styleName: (String(constViewValue) + String(noti_controlStr.suffix(4)) + "cess"))
    }

    //: func func__showStatusBarMsg(showMsg: String, dismissTime: TimeInterval, styleName: String) {
    func exhibitName(showMsg: String, dismissTime: TimeInterval, styleName: String) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: DispatchQueue.once(token: DispatchQueueToken_StatusBarInit, block: {
            DispatchQueue.dishonour(token: dataAvailableStr, block: {
                //: NotificationPresenter.shared().updateDefaultStyle { style in
                NotificationPresenter.shared().updateDefaultStyle { style in
                    //: style.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                    style.backgroundStyle.backgroundColor = UIColor(hex: (String(constBehindMakeContent.suffix(6))))!
                    //: style.textStyle.textColor = .white
                    style.textStyle.textColor = .white
                    //: style.textStyle.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
                    style.textStyle.font = UIFont.clickLarge(type: .Regular, fontSize: 14)
                    //: return style
                    return style
                }
                //: NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                    //: if styleName == "JDStatusBarStyleError" {
                    if styleName == (String(user_ofUrl) + String(const_showTitle.suffix(5)) + "sBarS" + String(k_labelName.prefix(5)) + "rror") {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "F05E5E")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (notiRangeRawValue.replacingOccurrences(of: "hidden", with: "0") + k_largeMessage.replacingOccurrences(of: "hung", with: "E")))!
                        //: }else {
                    } else {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (String(constBehindMakeContent.suffix(6))))!
                    }
                    //: return stype
                    return stype
                }
                //: })
            })

            //: if NotificationPresenter.shared().isVisible() {
            if NotificationPresenter.shared().isVisible() {
                //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                    NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                }
                //: }else {
            } else {
                //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
            }
        }
    }
}
