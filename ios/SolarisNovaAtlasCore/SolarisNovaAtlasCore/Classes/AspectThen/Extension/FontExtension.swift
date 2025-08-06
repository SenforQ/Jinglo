
//: Declare String Begin

/*: "PingFangSC-Regular" :*/
fileprivate let k_appViewImportTitle:String = "self gesturePingF"
fileprivate let constProgressStr:String = "make forC-Reg"
fileprivate let app_giftUrl:String = "ulawith"

/*: "PingFangSC-Medium" :*/
fileprivate let app_soundStr:[Character] = ["P","i","n","g","F","a","n","g","S","C","-","M","e","d","i","u","m"]

/*: "PingFangSC-Semibold" :*/
fileprivate let user_succeedTouchFormat:[Character] = ["P","i","n","g","F","a","n","g"]
fileprivate let main_viewName:String = "let string label largeSC-S"

/*: "PingFangSC-Thin" :*/
fileprivate let userModelData:String = "PingFbefore name"
fileprivate let notiWithStr:[Character] = ["-","T","h","i","n"]

/*: "PingFangSC-Light" :*/
fileprivate let mainErrorName:String = "manager selfPingF"
fileprivate let k_labLabelStr:String = "title today case if topLight"

/*: "PingFangSC-Ultralight" :*/
fileprivate let notiHiddenStr:[Character] = ["P","i","n","g","F","a","n","g","S","C","-","U","l","t","r","a","l","i","g","h","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FontExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIFont {
public extension UIFont {
    //: static func pingfangFont(type: PingFangFontType, fontSize: CGFloat) -> UIFont {
    internal static func clickLarge(type: ImageFailFontType, fontSize: CGFloat) -> UIFont {
        //: var font: UIFont?
        var font: UIFont?
        //: switch type {
        switch type {
        //: case .Regular:
        case .Regular:
            //: font = UIFont(name: "PingFangSC-Regular", size: fontSize)
            font = UIFont(name: (String(k_appViewImportTitle.suffix(5)) + "angS" + String(constProgressStr.suffix(5)) + app_giftUrl.replacingOccurrences(of: "with", with: "r")), size: fontSize)
        //: break
        //: case .Medium:
        case .Medium:
            //: font = UIFont(name: "PingFangSC-Medium", size: fontSize)
            font = UIFont(name: (String(app_soundStr)), size: fontSize)
        //: break
        //: case .Semibold:
        case .Semibold:
            //: font = UIFont(name: "PingFangSC-Semibold", size: fontSize)
            font = UIFont(name: (String(user_succeedTouchFormat) + String(main_viewName.suffix(4)) + "emibold"), size: fontSize)
        //: break
        //: case .Thin:
        case .Thin:
            //: font = UIFont(name: "PingFangSC-Thin", size: fontSize)
            font = UIFont(name: (String(userModelData.prefix(5)) + "angSC" + String(notiWithStr)), size: fontSize)
        //: break
        //: case .Light:
        case .Light:
            //: font = UIFont(name: "PingFangSC-Light", size: fontSize)
            font = UIFont(name: (String(mainErrorName.suffix(5)) + "angSC-" + String(k_labLabelStr.suffix(5))), size: fontSize)
        //: break
        //: case .Ultralight:
        case .Ultralight:
            //: font = UIFont(name: "PingFangSC-Ultralight", size: fontSize)
            font = UIFont(name: (String(notiHiddenStr)), size: fontSize)
            //: break
        }
        //: return font ?? UIFont.systemFont(ofSize: fontSize)
        return font ?? UIFont.systemFont(ofSize: fontSize)
    }

    //: @objc static public func pingfangRugularFont(fontSize: CGFloat) -> UIFont {
    @objc static func recoverOf(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Regular, fontSize: fontSize)
        return UIFont.clickLarge(type: .Regular, fontSize: fontSize)
    }

    //: @objc static public func pingfangMediumFont(fontSize: CGFloat) -> UIFont {
    @objc static func atomic(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Medium, fontSize: fontSize)
        return UIFont.clickLarge(type: .Medium, fontSize: fontSize)
    }
}
