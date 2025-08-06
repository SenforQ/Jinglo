
//: Declare String Begin

/*: "#8A79F9" :*/
fileprivate let mainStateFormat:String = "#8A79F9not else"

/*: "#E6BD8B" :*/
fileprivate let notiCardToName:String = "app then#E6BD8"
fileprivate let k_errorUrl:String = "index"

/*: "#F5F5F8" :*/
fileprivate let noti_gardenCurrentMessage:[Character] = ["#","F","5","F","5","F"]
fileprivate let main_addContent:String = "up"

/*: "333333" :*/
fileprivate let user_stopText:[Character] = ["3","3","3","3","3","3"]

/*: "FF2348" :*/
fileprivate let show_backgroundPath:String = "mode2348"

/*: "666666" :*/
fileprivate let main_noData:[Character] = ["6","6","6","6","6","6"]

/*: "999999" :*/
fileprivate let showMaxReadId:String = "collectioncollectioncollection"

/*: "7C74F4" :*/
fileprivate let data_containerId:String = "7C74F4return data let half element"

/*: "B97AF8" :*/
fileprivate let showAppPath:String = "b97af8"

/*: "#FF5C9D" :*/
fileprivate let k_loadData:String = "self item#FF5C9D"

/*: "#EEEEEE" :*/
fileprivate let mainSizeAtGuardPath:String = "log gesture text m self#EEEEEE"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIColor {
extension UIColor {
    //: @objc convenience init?(hex: String) {
    @objc convenience init?(hex: String) {
        //: var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        //: hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        //: var rgb: UInt64 = 0
        var rgb: UInt64 = 0
        //: var r: CGFloat = 0.0
        var r: CGFloat = 0.0
        //: var g: CGFloat = 0.0
        var g: CGFloat = 0.0
        //: var b: CGFloat = 0.0
        var b: CGFloat = 0.0
        //: var a: CGFloat = 1.0
        var a: CGFloat = 1.0

        //: let length = hexSanitized.count
        let length = hexSanitized.count
        //: guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }
        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        //: if length == 6 {
        if length == 6 {
            //: r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            //: g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            //: b = CGFloat(rgb & 0x0000FF) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
            //: } else if length == 8 {
        } else if length == 8 {
            //: r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            r = CGFloat((rgb & 0xFF00_0000) >> 24) / 255.0
            //: g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF_0000) >> 16) / 255.0
            //: b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            b = CGFloat((rgb & 0x0000_FF00) >> 8) / 255.0
            //: a = CGFloat(rgb & 0x000000FF) / 255.0
            a = CGFloat(rgb & 0x0000_00FF) / 255.0
            //: } else {
        } else {
            //: return nil
            return nil
        }
        //: self.init(red: r, green: g, blue: b, alpha: a)
        self.init(red: r, green: g, blue: b, alpha: a)
    }

    //: class func RGBA(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
    class func loadRgba(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
        //: return UIColor.init(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: a)
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }

    //: @objc static func appThemeColor() -> UIColor {
    @objc static func readRemove() -> UIColor {
        //: return UIColor.init(hex: "#8A79F9")!
        return UIColor(hex: (String(mainStateFormat.prefix(7))))!
    }

    //: @objc static func userVipColor() -> UIColor {
    @objc static func utiliserColor() -> UIColor {
        //: return UIColor(hex: "#E6BD8B")!
        return UIColor(hex: (String(notiCardToName.suffix(6)) + k_errorUrl.replacingOccurrences(of: "index", with: "B")))!
    }

    //: @objc static func appBgColor() -> UIColor {
    @objc static func sizeColor() -> UIColor {
        //: return UIColor.init(hex: "#F5F5F8")!
        return UIColor(hex: (String(noti_gardenCurrentMessage) + main_addContent.replacingOccurrences(of: "up", with: "8")))!
    }

    //: @objc static func appTitleColor() ->UIColor {
    @objc static func toEvent() -> UIColor {
        //: return UIColor.init(hex: "333333")!
        return UIColor(hex: (String(user_stopText)))!
    }

    //: @objc static func msgTipsColor() ->UIColor {
    @objc static func satisfy() -> UIColor {
        //: return UIColor.init(hex: "FF2348")!
        return UIColor(hex: (show_backgroundPath.replacingOccurrences(of: "mode", with: "FF")))!
    }

    //: @objc static func appValueColor() ->UIColor {
    @objc static func imageColor() -> UIColor {
        //: return UIColor.init(hex: "666666")!
        return UIColor(hex: (String(main_noData)))!
    }

    //: @objc static func appValueDetailColor() ->UIColor {
    @objc static func hockeyPlayer() -> UIColor {
        //: return UIColor.init(hex: "999999")!
        return UIColor(hex: (showMaxReadId.replacingOccurrences(of: "collection", with: "99")))!
    }

    //: class func appGradientColor() ->[CGColor] {
    class func analogDigitalConverterColor() -> [CGColor] {
        //: return [UIColor.init(hex: "7C74F4")!.cgColor, UIColor.init(hex: "B97AF8")!.cgColor]
        return [UIColor(hex: (String(data_containerId.prefix(6))))!.cgColor, UIColor(hex: (showAppPath.uppercased()))!.cgColor]
    }

    //: class func appGradientDisableColor() ->[CGColor] {
    class func alongGesture() -> [CGColor] {
        //: return [UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor, UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor]
        return [UIColor(hex: (String(k_loadData.suffix(7))))!.withAlphaComponent(0.4).cgColor, UIColor(hex: (String(k_loadData.suffix(7))))!.withAlphaComponent(0.4).cgColor]
    }

    //: class func separatorLineColor() -> UIColor {
    class func loadstarColor() -> UIColor {
        //: return UIColor.init(hex: "#EEEEEE")!
        return UIColor(hex: (String(mainSizeAtGuardPath.suffix(7))))!
    }

    //: class func getRandomColor() -> UIColor {
    class func momentColor() -> UIColor {
        //: let red = CGFloat(arc4random_uniform(256)) / 255.0
        let red = CGFloat(arc4random_uniform(256)) / 255.0
        //: let green = CGFloat(arc4random_uniform(256)) / 255.0
        let green = CGFloat(arc4random_uniform(256)) / 255.0
        //: let blue = CGFloat(arc4random_uniform(256)) / 255.0
        let blue = CGFloat(arc4random_uniform(256)) / 255.0
        //: return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
