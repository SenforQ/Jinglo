
//: Declare String Begin

/*: "ZUhWdWQzVnNiM1ps" :*/
fileprivate let app_imageStr:String = "to model layer tabZUhWdWQzV"
fileprivate let k_showData:String = "nNiM1psaction half app you status"

/*: "OrKulDHBYyjUHZTy1sS7dw==" :*/
fileprivate let dataFirstMessage:String = "to height type heightOrKulD"
fileprivate let noti_tapData:String = "UHlastT"
fileprivate let dataFrameKey:[Character] = ["=","="]

/*: "null" :*/
fileprivate let kTargetMsg:[Character] = ["n","u","l","l"]

/*: "(null)" :*/
fileprivate let user_withColorId:String = "text else the(null"
fileprivate let kModelLabValue:[Character] = [")"]

/*: "nil" :*/
fileprivate let userFeeName:String = "niselect"

/*: "<null>" :*/
fileprivate let userBeautyText:String = "false after with<null>"

/*: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMnopQRSTUVWXYZ0123456789" :*/
fileprivate let dataViewValue:[UInt8] = [0x95,0x96,0x97,0x90,0x91,0x92,0x93,0x9c,0x9d,0x9e,0x9f,0x98,0x99,0x9a,0x9b,0x84,0x85,0x86,0x87,0x80,0x81,0x82,0x83,0x8c,0x8d,0x8e,0xb5,0xb6,0xb7,0xb0,0xb1,0xb2,0xb3,0xbc,0xbd,0xbe,0xbf,0xb8,0xb9,0x9a,0x9b,0x84,0xa5,0xa6,0xa7,0xa0,0xa1,0xa2,0xa3,0xac,0xad,0xae,0xc4,0xc5,0xc6,0xc7,0xc0,0xc1,0xc2,0xc3,0xcc,0xcd]

private func picRecover(video num: UInt8) -> UInt8 {
    return num ^ 244
}

/*: "加密参数=  :*/
fileprivate let show_socialSizeTitle:String = "加\u{5bc6}参数= "

/*: "解密结果=  :*/
fileprivate let showWhenIconUrl:[Character] = ["解","密","结","\u{679c}","="," "]

/*: "<.*?>" :*/
fileprivate let dataToStr:String = "<.actual?>"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StringExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import Foundation
import Foundation

//: let UrlKey = "ZUhWdWQzVnNiM1ps"
let data_matchName = (String(app_imageStr.suffix(9)) + String(k_showData.prefix(7)))

//: let UrlDomin = "OrKulDHBYyjUHZTy1sS7dw=="
let const_maxFormalText = (String(dataFirstMessage.suffix(6)) + "HBYyj" + noti_tapData.replacingOccurrences(of: "last", with: "Z") + "y1sS7dw" + String(dataFrameKey))

//: extension String {
extension String {
    //: var isEmptyString: Bool {
    var isEmptyString: Bool {
        //: guard !self.isEmpty else { return true }
        guard !self.isEmpty else { return true }
        //: guard self != "null" else { return true }
        guard self != (String(kTargetMsg)) else { return true }
        //: guard self != "(null)" else { return true }
        guard self != (String(user_withColorId.suffix(5)) + String(kModelLabValue)) else { return true }
        //: guard self != "nil" else { return true }
        guard self != (userFeeName.replacingOccurrences(of: "select", with: "l")) else { return true }
        //: guard self != "<null>" else { return true }
        guard self != (String(userBeautyText.suffix(6))) else { return true }
        //: guard self != "" else { return true }
        guard self != "" else { return true }

        //: let trimmedStr = self.trimmingCharacters(in: .whitespacesAndNewlines)
        let trimmedStr = self.trimmingCharacters(in: .whitespacesAndNewlines)
        //: return trimmedStr.isEmpty
        return trimmedStr.isEmpty
    }

    //: var boolValue: Bool {
    var boolValue: Bool {
        //: return NSString(string: self).boolValue
        return NSString(string: self).boolValue
    }

    //: var intValue: Int {
    var intValue: Int {
        //: Int(self) ?? 0
        Int(self) ?? 0
    }

    /// 字符串的匹配范围
    //: func exMatchStrRange(_ matchStr: String) -> [NSRange] {
    func adultMaleAfter(_ matchStr: String) -> [NSRange] {
        //: var selfStr = self as NSString
        var selfStr = self as NSString
        //: var withStr = Array(repeating: "X", count: (matchStr as NSString).length).joined(separator: "") // 辅助字符串
        var withStr = Array(repeating: "X", count: (matchStr as NSString).length).joined(separator: "") // 辅助字符串
        //: if matchStr == withStr { withStr = withStr.lowercased() }
        if matchStr == withStr { withStr = withStr.lowercased() } // 临时处理辅助字符串差错
        //: var allRange = [NSRange]()
        var allRange = [NSRange]()
        //: while selfStr.range(of: matchStr).location != NSNotFound {
        while selfStr.range(of: matchStr).location != NSNotFound {
            //: let range = selfStr.range(of: matchStr)
            let range = selfStr.range(of: matchStr)
            //: allRange.append(NSRange(location: range.location, length: range.length))
            allRange.append(NSRange(location: range.location, length: range.length))
            //: selfStr = selfStr.replacingCharacters(in: NSRange(location: range.location, length: range.length), with: withStr) as NSString
            selfStr = selfStr.replacingCharacters(in: NSRange(location: range.location, length: range.length), with: withStr) as NSString
        }

        //: return allRange
        return allRange
    }

    /// 从String中截取出参数
    //: var urlParameters: [String: AnyObject]? {
    var urlParameters: [String: AnyObject]? {
        // 截取是否有参数
        //: guard let urlComponents = NSURLComponents(string: self), let queryItems = urlComponents.queryItems else {
        guard let urlComponents = NSURLComponents(string: self), let queryItems = urlComponents.queryItems else {
            //: return nil
            return nil
        }
        // 参数字典
        //: var parameters = [String: AnyObject]()
        var parameters = [String: AnyObject]()

        // 遍历参数
        //: queryItems.forEach({ (item) in
        queryItems.forEach { item in
            // 判断参数是否是数组
            //: if let existValue = parameters[item.name], let value = item.value {
            if let existValue = parameters[item.name], let value = item.value {
                // 已存在的值，生成数组
                //: if var existValue = existValue as? [AnyObject] {
                if var existValue = existValue as? [AnyObject] {
                    //: existValue.append(value as AnyObject)
                    existValue.append(value as AnyObject)
                    //: } else {
                } else {
                    //: parameters[item.name] = [existValue, value] as AnyObject
                    parameters[item.name] = [existValue, value] as AnyObject
                }

                //: } else {
            } else {
                //: parameters[item.name] = item.value as AnyObject
                parameters[item.name] = item.value as AnyObject
            }
            //: })
        }

        //: return parameters
        return parameters
    }
}

// MARK: String Encrypt

//: extension String {
extension String {
    /// 随机字符串
    /// - Parameters:
    ///   - length: 长度
    //: static func randomString(length: Int) -> String {
    static func quantityimate(length: Int) -> String {
        //: let letters: NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMnopQRSTUVWXYZ0123456789"
        let letters: NSString = String(bytes: dataViewValue.map{picRecover(video: $0)}, encoding: .utf8)! as NSString
        //: let len = UInt32(letters.length)
        let len = UInt32(letters.length)
        //: var randomString = ""
        var randomString = ""
        //: for _ in 0 ..< length {
        for _ in 0 ..< length {
            //: let rand = arc4random_uniform(len)
            let rand = arc4random_uniform(len)
            //: var nextChar = letters.character(at: Int(rand))
            var nextChar = letters.character(at: Int(rand))
            //: randomString += NSString(characters: &nextChar,length: 1) as String
            randomString += NSString(characters: &nextChar, length: 1) as String
        }
        //: return randomString
        return randomString
    }

    //: func aes256Encrypt(key: String) -> String? {
    func componentKey(key: String) -> String? {
        //: printLog(message: "加密参数= \(self)")
        printLog(message: (show_socialSizeTitle) + "\(self)")
        //: guard let inputData: Data = data(using: .utf8) else { return nil }
        guard let inputData: Data = data(using: .utf8) else { return nil }
        //: let EncryptData = (inputData as NSData).aes256Encrypt(withKey: key)
        let EncryptData = (inputData as NSData).message(key)
        //: return NSData.base64String(from: EncryptData, length: UInt((EncryptData as NSData).length))
        return NSData.clerkingAssemblage(EncryptData, unprocessedMetadata: UInt((EncryptData as NSData).length))
    }

    //: func aes256Decrypt(key: String) -> String? {
    func topVoice(key: String) -> String? {
        //: let encryData = NSData.base64Data(from: self)
        let encryData = NSData.objectLoad(self)
        //: let decryData = (encryData as NSData).aes256Decrypt(withKey: key)
        let decryData = (encryData as NSData).rootWord(key)
        //: let decryStr = String(data: decryData, encoding: .utf8)
        let decryStr = String(data: decryData, encoding: .utf8)
        //: printLog(message: "解密结果= \(decryStr)")
        printLog(message: (String(showWhenIconUrl)) + "\(decryStr)")
        //: return decryStr
        return decryStr
    }

    //: func urlAes256Encrypt() -> String? {
    func suiteOf() -> String? {
        //: printLog(message: "加密参数= \(self)")
        printLog(message: (show_socialSizeTitle) + "\(self)")
        //: guard let inputData: Data = data(using: .utf8) else { return nil }
        guard let inputData: Data = data(using: .utf8) else { return nil }
        //: let EncryptData = (inputData as NSData).aes256Encrypt(withKey: UrlKey)
        let EncryptData = (inputData as NSData).message(data_matchName)
        //: return NSData.base64String(from: EncryptData, length: UInt((EncryptData as NSData).length))
        return NSData.clerkingAssemblage(EncryptData, unprocessedMetadata: UInt((EncryptData as NSData).length))
    }

    //: func urlAes256Decrypt() -> String {
    func recordBy() -> String {
        //: let encryData = NSData.base64Data(from: self)
        let encryData = NSData.objectLoad(self)
        //: let decryData = (encryData as NSData).aes256Decrypt(withKey: UrlKey)
        let decryData = (encryData as NSData).rootWord(data_matchName)
        //: let decryStr = String(data: decryData, encoding: .utf8)
        let decryStr = String(data: decryData, encoding: .utf8)
        //: return decryStr ?? ""
        return decryStr ?? ""
    }

    /// 字符串截取，表情乱码（表情长度不对问题）
    //: static func substringByUnicodeIndex(str: String, from: Int, to: Int) -> String {
    static func fileTo(str: String, from: Int, to: Int) -> String {
        //: let begem = from < 0 ? 0: from
        let begem = from < 0 ? 0 : from
        //: let to = to >= str.unicodeScalars.count ?  str.unicodeScalars.count : to
        let to = to >= str.unicodeScalars.count ? str.unicodeScalars.count : to
        //: guard to >= from else {
        guard to >= from else {
            //: return str
            return str
        }
        //: let startIndex = str.unicodeScalars.index(str.unicodeScalars.startIndex, offsetBy: from)
        let startIndex = str.unicodeScalars.index(str.unicodeScalars.startIndex, offsetBy: from)
        //: let endIndex = str.unicodeScalars.index(str.unicodeScalars.startIndex, offsetBy: to)
        let endIndex = str.unicodeScalars.index(str.unicodeScalars.startIndex, offsetBy: to)
        //: return String(str.unicodeScalars[startIndex..<endIndex])
        return String(str.unicodeScalars[startIndex ..< endIndex])
    }

    /// 删除html标签
    //: func deleteHtmlTips() -> String {
    func htmlTo() -> String {
        //: let htmlPattern = "<.*?>"
        let htmlPattern = "<.*?>"
        //: return self.replacingOccurrences(of: htmlPattern, with: "", options: .regularExpression, range: nil)
        return self.replacingOccurrences(of: htmlPattern, with: "", options: .regularExpression, range: nil)
    }
}

//: extension Int {
extension Int {
    //: var boolValue: Bool {
    var boolValue: Bool {
        //: self != 0
        self != 0
    }

    //: var stringValue: String {
    var stringValue: String {
        //: String(self)
        String(self)
    }
}
