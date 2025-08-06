
//: Declare String Begin

/*: "Free" :*/
fileprivate let appMakeMessage:String = "Freeaction item auto log view"

/*: " Free 1min" :*/
fileprivate let k_equalUrl:[Character] = [" ","F","r","e","e"," ","1","m","i"]
fileprivate let userSelectedName:String = "play"

/*: "Video Call" :*/
fileprivate let app_requestFormat:String = "add stage any effectVideo "
fileprivate let show_remoteId:String = "Callinfo color"

/*: "icon_video_bd" :*/
fileprivate let user_centerStr:String = "if largeicon_vi"
fileprivate let kKindShareKey:String = "extension self case selfdeo_bd"

/*: "\n %@/min" :*/
fileprivate let dataBothUrl:String = "\n %@/mi"
fileprivate let noti_pathText:String = "level"

/*: "icon_coin_pre" :*/
fileprivate let appAfterText:String = "icon_color in"
fileprivate let appPositionUrl:[Character] = ["c","o","i","n","_","p","r","e"]

/*: "\n %@ %@/min" :*/
fileprivate let constViewTablePath:String = "\n %@"
fileprivate let user_modeData:String = "mtaskn"

/*: "%@/min" :*/
fileprivate let dataPicErrorValue:[Character] = ["%","@","/","m","i","n"]

/*: "#D8D8D8" :*/
fileprivate let show_firstKey:String = "#D8D8D8touch equal case self constraint"

/*: "Free 1 min" :*/
fileprivate let kCropWithViewData:[Character] = ["F","r","e","e"," ","1"," ","m","i","n"]

/*: "%@ Coins/min" :*/
fileprivate let mainSucceedKey:String = "icon true var%@ Coi"
fileprivate let main_frameTitle:[Character] = ["n","s","/","m","i","n"]

/*: "%@ Gold coins / Min" :*/
fileprivate let app_okName:[Character] = ["%","@"," ","G","o","l","d"," ","c","o","i","n","s"," ","/"," ","M"]
fileprivate let dataStatusId:[Character] = ["i","n"]

/*: "Video Call (%@ Coins/min)" :*/
fileprivate let kMakeBottomMsg:[Character] = ["V","i","d","e","o"," ","C","a","l","l"," ","(","%","@"," ","C","o","i","n","s","/","m","i","n"]
fileprivate let noti_managerStr:String = ")"

/*: "Voice Call" :*/
fileprivate let notiSoundMessage:String = "Voice Csource true"
fileprivate let noti_feeCellKey:String = "areadread"

/*: "Voice Call (%@ Coins/min)" :*/
fileprivate let showMakeStr:String = "gift string mode min showVoic"
fileprivate let dataWhiteLastAddName:String = " (%@ "
fileprivate let const_cellIndexId:[Character] = ["C","o","i","n","s"]
fileprivate let notiGroupId:String = "/min)down let since size"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PriceStrExtension.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/15.
//

//: import Foundation
import Foundation

//: extension String {
extension String {
    //: static func setPriceStr(fee: Int, originalFee: Int, freeCallTimes: Int = 0, callBtnStyle: Int = 0)-> NSMutableAttributedString {
    static func noneChange(fee: Int, originalFee: Int, freeCallTimes: Int = 0, callBtnStyle: Int = 0) -> NSMutableAttributedString {
        //: if PunctuateThen.share.appStatus == AppSkinStatus.special.rawValue {
        if PunctuateThen.share.appStatus == HiddenHashableRepresentation.special.rawValue {
            //: return NSMutableAttributedString.init(string: "Free".localized)
            return NSMutableAttributedString(string: (String(appMakeMessage.prefix(4))).localized)
            //: } else if freeCallTimes > 0 || fee == 0 {
        } else if freeCallTimes > 0 || fee == 0 {
            //: var text = ""
            var text = ""
            //: if fee == 0 {
            if fee == 0 {
                //: text = "Free".localized
                text = (String(appMakeMessage.prefix(4))).localized
                //: } else {
            } else {
                //: if callBtnStyle == 1 {
                if callBtnStyle == 1 {
                    //: text = " Free 1min".localized
                    text = (String(k_equalUrl) + userSelectedName.replacingOccurrences(of: "play", with: "n")).localized
                    //: } else {
                } else {
                    //: text = "Video Call".localized
                    text = (String(app_requestFormat.suffix(6)) + String(show_remoteId.prefix(4))).localized
                }
            }
            //: let attrS = NSMutableAttributedString(string: text)
            let attrS = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.clickLarge(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            //: attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))
            attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))

            //: let attach = NSTextAttachment()
            let attach = NSTextAttachment()
            //: attach.image = UIImage.BundleImageNamed(name: "icon_video_bd")
            attach.image = UIImage.thoughtImageBundleSizeText(name: (String(user_centerStr.suffix(7)) + String(kKindShareKey.suffix(6))))
            //: attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            //: let attachImage = NSMutableAttributedString(attachment: attach)
            let attachImage = NSMutableAttributedString(attachment: attach)
            //: attrS.insert(attachImage, at: 0)
            attrS.insert(attachImage, at: 0)
            //: return attrS
            return attrS

            //: } else if fee != 0 || originalFee != 0 {
        } else if fee != 0 || originalFee != 0 {
            //: let text = "Video Call".localized
            let text = (String(app_requestFormat.suffix(6)) + String(show_remoteId.prefix(4))).localized
            //: let attrS = NSMutableAttributedString(string: text)
            let attrS = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.clickLarge(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            //: attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))
            attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))

            //: let attach = NSTextAttachment()
            let attach = NSTextAttachment()
            //: attach.image = UIImage.BundleImageNamed(name: "icon_video_bd")
            attach.image = UIImage.thoughtImageBundleSizeText(name: (String(user_centerStr.suffix(7)) + String(kKindShareKey.suffix(6))))
            //: attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            //: let attachImage = NSMutableAttributedString(attachment: attach)
            let attachImage = NSMutableAttributedString(attachment: attach)
            //: attrS.insert(attachImage, at: 0)
            attrS.insert(attachImage, at: 0)

            //: if fee == originalFee {
            if fee == originalFee {
                //: let feetext = "\n %@/min".localizedArguments(fee)
                let feetext = (dataBothUrl + noti_pathText.replacingOccurrences(of: "level", with: "n")).viewfinder(fee)
                //: let feetattrS = NSMutableAttributedString(string: feetext)
                let feetattrS = NSMutableAttributedString(string: feetext)
                //: let attach2 = NSTextAttachment()
                let attach2 = NSTextAttachment()
                //: attach2.image = UIImage.BundleImageNamed(name: "icon_coin_pre")
                attach2.image = UIImage.thoughtImageBundleSizeText(name: (String(appAfterText.prefix(5)) + String(appPositionUrl)))
                //: attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                //: let attachImage2 = NSMutableAttributedString(attachment: attach2)
                let attachImage2 = NSMutableAttributedString(attachment: attach2)
                //: feetattrS.insert(attachImage2, at: 1)
                feetattrS.insert(attachImage2, at: 1)

                //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes = [.foregroundColor: UIColor.white, .font: UIFont.clickLarge(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: feetattrS.addAttributes(attributes, range: NSRange(location: 2, length: feetext.count-1))
                feetattrS.addAttributes(attributes, range: NSRange(location: 2, length: feetext.count - 1))
                //: attrS.insert(feetattrS, at: text.count+1)
                attrS.insert(feetattrS, at: text.count + 1)

                //: let paragraphStyle = NSMutableParagraphStyle.init()
                let paragraphStyle = NSMutableParagraphStyle()
                //: paragraphStyle.lineSpacing = 0
                paragraphStyle.lineSpacing = 0
                //: paragraphStyle.alignment = .center
                paragraphStyle.alignment = .center
                //: attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + feetext.count))
                attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + feetext.count))
                //: return attrS
                return attrS
                //: } else {
            } else {
                //: let ptext = "\n %@ %@/min".localizedArguments(fee, originalFee)
                let ptext = (constViewTablePath + " %@/" + user_modeData.replacingOccurrences(of: "task", with: "i")).viewfinder(fee, originalFee)
                //: let newAttrS = NSMutableAttributedString(string: ptext)
                let newAttrS = NSMutableAttributedString(string: ptext)

                //: let attach2 = NSTextAttachment()
                let attach2 = NSTextAttachment()
                //: attach2.image = UIImage.BundleImageNamed(name: "icon_coin_pre")
                attach2.image = UIImage.thoughtImageBundleSizeText(name: (String(appAfterText.prefix(5)) + String(appPositionUrl)))
                //: attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                //: let attachImage2 = NSMutableAttributedString(attachment: attach2)
                let attachImage2 = NSMutableAttributedString(attachment: attach2)
                //: newAttrS.insert(attachImage2, at: 1)
                newAttrS.insert(attachImage2, at: 1)

                //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes = [.foregroundColor: UIColor.white, .font: UIFont.clickLarge(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: newAttrS.addAttributes(attributes, range: NSRange(location: 2, length: ptext.count-1))
                newAttrS.addAttributes(attributes, range: NSRange(location: 2, length: ptext.count - 1))
                //: let originalFeemin = "%@/min".localizedArguments(originalFee)
                let originalFeemin = (String(dataPicErrorValue)).viewfinder(originalFee)
                //: let range: Range = ptext.range(of: originalFeemin)!
                let range: Range = ptext.range(of: originalFeemin)!
                //: let location = ptext.distance(from: ptext.startIndex, to: range.lowerBound )
                let location = ptext.distance(from: ptext.startIndex, to: range.lowerBound)
                //: let attributes2 = [.foregroundColor: UIColor.init(hex: "#D8D8D8")!, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes2 = [.foregroundColor: UIColor(hex: (String(show_firstKey.prefix(7))))!, .font: UIFont.clickLarge(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: newAttrS.addAttributes(attributes2, range: NSRange(location: location+1, length: originalFeemin.count))
                newAttrS.addAttributes(attributes2, range: NSRange(location: location + 1, length: originalFeemin.count))

                //: newAttrS.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location+1, length: originalFeemin.count))
                newAttrS.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location + 1, length: originalFeemin.count))

                //: attrS.insert(newAttrS, at: text.count+1)
                attrS.insert(newAttrS, at: text.count + 1)

                //: let paragraphStyle = NSMutableParagraphStyle.init()
                let paragraphStyle = NSMutableParagraphStyle()
                //: paragraphStyle.lineSpacing = 0
                paragraphStyle.lineSpacing = 0
                //: paragraphStyle.alignment = .center
                paragraphStyle.alignment = .center
                //: attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + ptext.count))
                attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + ptext.count))
                //: return attrS
                return attrS
            }
        }
        //: return NSMutableAttributedString.init()
        return NSMutableAttributedString()
    }

    /// 免费1分钟通话结束弹窗
    /// - Parameters:
    ///   - originalFee: 原价
    ///   - vipFee: VIP价格（0：执行原价逻辑）
    /// - Returns: string
    //: static func setFreeStopPriceStr(originalFee: Int, vipFee: Int = 0) -> String {
    static func sitDownCommitPoundage(originalFee: Int, vipFee: Int = 0) -> String {
        //: guard PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue else {
            //: return "Video Call".localized
            return (String(app_requestFormat.suffix(6)) + String(show_remoteId.prefix(4))).localized
        }
        //: if PunctuateThen.share.loginUserMode.freeCallTimes > 0 {
        if PunctuateThen.share.loginUserMode.freeCallTimes > 0 {
            //: if PunctuateThen.share.appUserConfigMode.callBtnStyle == 1 {
            if PunctuateThen.share.appUserConfigMode.callBtnStyle == 1 {
                //: return "Free 1 min".localized
                return (String(kCropWithViewData)).localized
                //: } else {
            } else {
                //: return "Video Call".localized
                return (String(app_requestFormat.suffix(6)) + String(show_remoteId.prefix(4))).localized
            }
            //: } else {
        } else {
            //: if vipFee > 0 {
            if vipFee > 0 {
                //: return "%@ Coins/min".localizedArguments(vipFee)
                return (String(mainSucceedKey.suffix(6)) + String(main_frameTitle)).viewfinder(vipFee)
                //: } else {
            } else {
                //: return  "%@ Gold coins / Min".localizedArguments(originalFee)
                return (String(app_okName) + String(dataStatusId)).viewfinder(originalFee)
            }
        }
    }

    /// 视频通话价格
    //: static func setVideoPriceStr(VideoPrice: Int) -> NSMutableAttributedString {
    static func inclose(VideoPrice: Int) -> NSMutableAttributedString {
        //: let index = EnableFreeCallType.nor
        let index = ColorHashableRepresentation.nor
        //: if PunctuateThen.share.loginUserMode.freeCallTimes > 0 && PunctuateThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if PunctuateThen.share.loginUserMode.freeCallTimes > 0 && PunctuateThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: var text = ""
            var text = ""
            //: if PunctuateThen.share.appUserConfigMode.callBtnStyle == 1 {
            if PunctuateThen.share.appUserConfigMode.callBtnStyle == 1 {
                //: text = "Free 1 min".localized
                text = (String(kCropWithViewData)).localized
                //: } else {
            } else {
                //: text = "Video Call".localized
                text = (String(app_requestFormat.suffix(6)) + String(show_remoteId.prefix(4))).localized
            }

            //: let attrString = NSMutableAttributedString(string: text)
            let attrString = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.toEvent(), .font: UIFont.clickLarge(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: return attrString
            return attrString

            //: } else {
        } else {
            //: let VideoCall = "Video Call".localized
            let VideoCall = (String(app_requestFormat.suffix(6)) + String(show_remoteId.prefix(4))).localized
            //: let videoStr = "Video Call (%@ Coins/min)".localizedArguments(VideoPrice)
            let videoStr = (String(kMakeBottomMsg) + noti_managerStr.capitalized).viewfinder(VideoPrice)
            //: let attrString = NSMutableAttributedString(string: videoStr)
            let attrString = NSMutableAttributedString(string: videoStr)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.toEvent(), .font: UIFont.clickLarge(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: let attributes2 = [.foregroundColor: UIColor.appThemeColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            let attributes2 = [.foregroundColor: UIColor.readRemove(), .font: UIFont.clickLarge(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes2, range: NSRange(location: VideoCall.count, length: attrString.length-VideoCall.count))
            attrString.addAttributes(attributes2, range: NSRange(location: VideoCall.count, length: attrString.length - VideoCall.count))
            //: return attrString
            return attrString
        }
    }

    /// 音频通话价格
    //: static func setVoicePriceStr(VoicePrice: Int)-> NSMutableAttributedString {
    static func fromEqual(VoicePrice: Int) -> NSMutableAttributedString {
        //: let index = EnableFreeCallType.nor
        let index = ColorHashableRepresentation.nor
        //: if PunctuateThen.share.loginUserMode.freeCallTimes > 0 && PunctuateThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if PunctuateThen.share.loginUserMode.freeCallTimes > 0 && PunctuateThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: var text = ""
            var text = ""
            //: if PunctuateThen.share.appUserConfigMode.callBtnStyle == 1 {
            if PunctuateThen.share.appUserConfigMode.callBtnStyle == 1 {
                //: text = "Free 1 min".localized
                text = (String(kCropWithViewData)).localized
                //: } else {
            } else {
                //: text = "Voice Call".localized
                text = (String(notiSoundMessage.prefix(7)) + noti_feeCellKey.replacingOccurrences(of: "read", with: "l")).localized
            }

            //: let attrString = NSMutableAttributedString(string: text)
            let attrString = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.toEvent(), .font: UIFont.clickLarge(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: return attrString
            return attrString

            //: } else {
        } else {
            //: let VoiceCall = "Voice Call".localized
            let VoiceCall = (String(notiSoundMessage.prefix(7)) + noti_feeCellKey.replacingOccurrences(of: "read", with: "l")).localized
            //: let videoStr = "Voice Call (%@ Coins/min)".localizedArguments(VoicePrice)
            let videoStr = (String(showMakeStr.suffix(4)) + "e Call" + dataWhiteLastAddName.capitalized + String(const_cellIndexId) + String(notiGroupId.prefix(5))).viewfinder(VoicePrice)
            //: let attrString = NSMutableAttributedString(string: videoStr)
            let attrString = NSMutableAttributedString(string: videoStr)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.toEvent(), .font: UIFont.clickLarge(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: let attributes2 = [.foregroundColor: UIColor.appThemeColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            let attributes2 = [.foregroundColor: UIColor.readRemove(), .font: UIFont.clickLarge(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes2, range: NSRange(location: VoiceCall.count, length: attrString.length-VoiceCall.count))
            attrString.addAttributes(attributes2, range: NSRange(location: VoiceCall.count, length: attrString.length - VoiceCall.count))
            //: return attrString
            return attrString
        }
    }
}

// MARK: - 男性VIP价格

//: extension String {
extension String {
    /// 获取男性侧视频通话VIP展示字符串
    /// - Parameters: videoPrice: 视频通话价格
    /// - Returns: 字符串
    //: static func getMaleVIPVideoPriceString(videoPrice: String) -> String {
    static func transparency(videoPrice: String) -> String {
        //: guard PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue else {
            //: return "Video Call".localized
            return (String(app_requestFormat.suffix(6)) + String(show_remoteId.prefix(4))).localized
        }
        //: let index = EnableFreeCallType.nor
        let index = ColorHashableRepresentation.nor
        //: if PunctuateThen.share.loginUserMode.freeCallTimes > 0 && PunctuateThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if PunctuateThen.share.loginUserMode.freeCallTimes > 0 && PunctuateThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: if PunctuateThen.share.appUserConfigMode.callBtnStyle == 1 {
            if PunctuateThen.share.appUserConfigMode.callBtnStyle == 1 {
                //: return "Free 1 min".localized
                return (String(kCropWithViewData)).localized
                //: } else {
            } else {
                //: return "Video Call".localized
                return (String(app_requestFormat.suffix(6)) + String(show_remoteId.prefix(4))).localized
            }
            //: } else {
        } else {
            //: return "%@ Coins/min".localizedArguments(videoPrice)
            return (String(mainSucceedKey.suffix(6)) + String(main_frameTitle)).viewfinder(videoPrice)
        }
    }
}
