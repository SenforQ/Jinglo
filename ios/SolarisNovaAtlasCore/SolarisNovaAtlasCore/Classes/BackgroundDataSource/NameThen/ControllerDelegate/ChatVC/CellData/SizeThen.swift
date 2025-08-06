
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiInfoMsg:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "View read receipts?" :*/
fileprivate let constSuiteUrl:String = "push labView r"
fileprivate let const_filterFormat:[Character] = ["c","e","i","p","t","s","?"]

/*: "text" :*/
fileprivate let const_textFormat:String = "statusxt"

/*: "color" :*/
fileprivate let user_dropBlockIfKey:[UInt8] = [0x51,0x5d,0x5e,0x5d,0x40]

private func accumulationClose(shadow num: UInt8) -> UInt8 {
    return num ^ 50
}

/*: "<br/>" :*/
fileprivate let constKeyMessage:String = "icon with type title quick<br/>"

/*: "\n" :*/
fileprivate let const_tableFormat:String = "\n"

/*: "<br />" :*/
fileprivate let userScaleStr:[Character] = ["<","b","r"," ","/",">"]

/*: "<xml>%@</xml>" :*/
fileprivate let kSumryData:String = "show command with for<xml>%@<"
fileprivate let showFileUrl:String = "/xml>in true info return"

/*: "href" :*/
fileprivate let data_pathTitle:[Character] = ["h","r","e","f"]

/*: "type" :*/
fileprivate let notiManagerCellStr:[UInt8] = [0x0,0xd,0x4,0x11]

private func textTitle(request num: UInt8) -> UInt8 {
    return num ^ 116
}

/*: "txt" :*/
fileprivate let app_coverId:String = "thanxthan"

/*: "padding" :*/
fileprivate let notiBackText:String = "phiddendi"
fileprivate let user_detailText:[Character] = ["n","g"]

/*: "size" :*/
fileprivate let main_addStr:String = "sizaction"

/*: "maxFont" :*/
fileprivate let data_nameRowMsg:String = "self input tablemaxFont"

/*: "link" :*/
fileprivate let mainMiniName:[Character] = ["l","i","n","k"]

/*: "PingFangSC-Regular" :*/
fileprivate let main_exitName:[Character] = ["P","i","n","g","F","a","n","g","S","C","-","R","e"]
fileprivate let notiGiftBarValue:String = "gulerror"

/*: "content" :*/
fileprivate let appViewId:[UInt8] = [0x74,0x6e,0x65,0x74,0x6e,0x6f,0x63]

/*: "%@" :*/
fileprivate let noti_titleMessage:String = "user@"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/1.
//

//: import UIKit
import UIKit

//: @objcMembers public class TalkingChatTipsMsgCellData: TalkingChatMsgBaseCellData {
@objcMembers public class SizeThen: CompartmentCellData {
    //: var yyLayout = YYTextLayout.init(containerSize: CGSize.init(), text: NSAttributedString.init())
    var yyLayout = YYTextLayout(containerSize: CGSize(), text: NSAttributedString())

    //: override public var msgModel: AbTalkingChatMsgBaseModel {
    override public var msgModel: SharedModel {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set { super.msgModel = newValue }
        set { super.msgModel = newValue }
    }

    //: override public init(direction: TMsgDirection) {
    override public init(direction: AspectSendTotal) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: self.cellLayout =  MessageCellLayout.systemMessageLayout()
        self.cellLayout = PictureCellLayout.addAcross()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiInfoMsg.reversed(), encoding: .utf8)!)
    }

    //: public override func heightOfWidth(_ width: CGFloat) ->CGFloat {
    override public func transaction(_: CGFloat) -> CGFloat {
        //: return accumulationOn().height+20
        return accumulationOn().height + 20
    }

    //: public override func accumulationOn() ->CGSize {
    override public func accumulationOn() -> CGSize {
        // 是否是已读回执引导充值VIP
        //: if self.msgModel.tips.content == "View read receipts?".localized {
        if self.msgModel.tips.content == (String(constSuiteUrl.suffix(6)) + "ead re" + String(const_filterFormat)).localized {
            //: return CGSize(width: ScreenWidth, height: 30)
            return CGSize(width: kQueryValue, height: 30)
        }

        //: if self.attributedString.string.count == 0 {
        if self.attributedString.string.count == 0 {
            //: return CGSize.zero
            return CGSize.zero
        }

        //: let rect = self.attributedString.boundingRect(with: CGSize.init(width: PublisherReactiveCompatible.getScreenWidth()-50, height: CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin, .usesFontLeading], context: nil )
        let rect = self.attributedString.boundingRect(with: CGSize(width: PublisherReactiveCompatible.widthState() - 50, height: CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin, .usesFontLeading], context: nil)
        //: var size = CGSize.init(width: rect.size.width, height: rect.size.height)
        var size = CGSize(width: rect.size.width, height: rect.size.height)

        //: size.height += 10
        size.height += 10
        //: size.width += 18
        size.width += 18
        //: return size
        return size
    }

    //: public lazy var attributedString: NSMutableAttributedString = {
    public lazy var attributedString: NSMutableAttributedString = {
        //: var attr = formatMessageToStringM(info: self.msgModel.tips)
        var attr = toBecome(info: self.msgModel.tips)
        //: return attr
        return attr
        //: }()
    }()
}

//: extension TalkingChatTipsMsgCellData {
extension SizeThen {
    //: func formatMessageToStringM(info: AbTalkingChatMsgTipsModel) -> NSMutableAttributedString {
    func toBecome(info: TalkingMakeModel) -> NSMutableAttributedString {
//        let extra = String.init(data: self.innerMessage.customElem.data, encoding: .utf8)
//        let dic = NSDictionary(jsonString: extra ?? "")
        //: let content = info.content
        let content = info.content

        //: return designTextFream(tips: content)
        return proposition(tips: content)
    }

    //: func designTextFream(tips: String) -> NSMutableAttributedString {
    func proposition(tips: String) -> NSMutableAttributedString {
        //: let attrbutedArray = NSMutableArray.init()
        let attrbutedArray = NSMutableArray()
        //: let para = NSMutableParagraphStyle.init()
        let para = NSMutableParagraphStyle()
        //: para.lineBreakMode = .byWordWrapping
        para.lineBreakMode = .byWordWrapping
        //: para.alignment = .left
        para.alignment = .left
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: para.baseWritingDirection = .rightToLeft
            para.baseWritingDirection = .rightToLeft
            //: para.alignment = .right
            para.alignment = .right
        }
        //: _ = desginPureMsgFromXml(msg: tips, info: attrbutedArray)
        _ = executeLine(msg: tips, info: attrbutedArray)
        //: self.yyLayout = designYYTextLayout(array: attrbutedArray, displayMaxWidth: PublisherReactiveCompatible.getScreenWidth()-50, para: para)
        self.yyLayout = equivalentPara(array: attrbutedArray, displayMaxWidth: PublisherReactiveCompatible.widthState() - 50, para: para)

        //: let text = NSMutableAttributedString.init(attributedString: self.yyLayout?.text ?? NSAttributedString.init())
        let text = NSMutableAttributedString(attributedString: self.yyLayout?.text ?? NSAttributedString())

        //: return text
        return text
    }

    //: func desginPureMsgFromXml(msg: String, info: NSMutableArray) -> String {
    func executeLine(msg: String, info: NSMutableArray) -> String {
        //: let contentAttrArray = NSMutableArray.init()
        let contentAttrArray = NSMutableArray()
        //: let pure_msg = parseXML(source: msg, attrbAM: contentAttrArray)
        let pure_msg = magnitudeimate(source: msg, attrbAM: contentAttrArray)
        //: for  textInfo in contentAttrArray {
        for textInfo in contentAttrArray {
            //: let textDic = textInfo as![String: Any]
            let textDic = textInfo as! [String: Any]
            //: let text: String = textDic["text"] as! String
            let text: String = textDic[(const_textFormat.replacingOccurrences(of: "status", with: "te"))] as! String

            //: var textColor: UIColor?
            var textColor: UIColor?

            //: var obj = textDic["color"]
            var obj = textDic[String(bytes: user_dropBlockIfKey.map{accumulationClose(shadow: $0)}, encoding: .utf8)!]
            //: if obj is UIColor {
            if obj is UIColor {
                //: obj = obj as? UIColor
                obj = obj as? UIColor

                //: } else if obj is String {
            } else if obj is String {
                //: textColor = UIColor.init(hex: obj as! String) ?? .black
                textColor = UIColor(hex: obj as! String) ?? .black
            }
            //: let contentDict = NSMutableDictionary.init(dictionary: textDic)
            let contentDict = NSMutableDictionary(dictionary: textDic)
            //: contentDict.removeObjects(forKeys: ["color", "text"])
            contentDict.removeObjects(forKeys: [String(bytes: user_dropBlockIfKey.map{accumulationClose(shadow: $0)}, encoding: .utf8)!, (const_textFormat.replacingOccurrences(of: "status", with: "te"))])

            //: let attrDict = ctDictionaryForText(content: text, color: textColor)
            let attrDict = pathBy(content: text, color: textColor)
            //: contentDict.addEntries(from: attrDict as! [AnyHashable: Any])
            contentDict.addEntries(from: attrDict as! [AnyHashable: Any])
            //: info.add(contentDict)
            info.add(contentDict)
        }
        //: return pure_msg
        return pure_msg
    }

    //: func parseXML(source: String, attrbAM: NSMutableArray) -> String {
    func magnitudeimate(source: String, attrbAM: NSMutableArray) -> String {
        //: var newSource = source.replacingOccurrences(of: "<br/>", with: "\n")
        var newSource = source.replacingOccurrences(of: "<br/>", with: "\n")
        //: newSource = source.replacingOccurrences(of: "<br />", with: "\n")
        newSource = source.replacingOccurrences(of: "<br />", with: "\n")
        //: do {
        do {
            //: let document = try ONOXMLDocument(string: String.init(format: "<xml>%@</xml>", newSource), encoding: CFStringConvertEncodingToNSStringEncoding(CFStringBuiltInEncodings.UTF8.rawValue))
            let document = try ONOXMLDocument(string: String(format: (String(kSumryData.suffix(8)) + String(showFileUrl.prefix(5))), newSource), encoding: CFStringConvertEncodingToNSStringEncoding(CFStringBuiltInEncodings.UTF8.rawValue))
            //: let element = document.rootElement
            let element = document.rootElement
            //: parseXMLElement(element: element ?? ONOXMLElement(), arrM: attrbAM, attrib: ["color": UIColor.white])
            putEnable(element: element ?? ONOXMLElement(), arrM: attrbAM, attrib: [String(bytes: user_dropBlockIfKey.map{accumulationClose(shadow: $0)}, encoding: .utf8)!: UIColor.white])
            //: return element?.stringValue() ?? ""
            return element?.stringValue() ?? ""

            //: } catch {
        } catch {
            //: attrbAM.add(["text": newSource, "color": UIColor.white])
            attrbAM.add([(const_textFormat.replacingOccurrences(of: "status", with: "te")): newSource, String(bytes: user_dropBlockIfKey.map{accumulationClose(shadow: $0)}, encoding: .utf8)!: UIColor.white])
            //: return newSource
            return newSource
        }
    }

    //: func parseXMLElement(element: ONOXMLElement, arrM: NSMutableArray, attrib: NSDictionary) {
    func putEnable(element: ONOXMLElement, arrM: NSMutableArray, attrib: NSDictionary) {
        //: let children: NSArray = element.children(withTag: "")! as NSArray
        let children: NSArray = element.children(withTag: "")! as NSArray

        //: if children.count > 0 {
        if children.count > 0 {
            //: let parentInfo = NSMutableDictionary.init(dictionary: attrib)
            let parentInfo = NSMutableDictionary(dictionary: attrib)
            //: parentInfo.addEntries(from: element.attributes)
            parentInfo.addEntries(from: element.attributes)

            // html标签解析
            //: if element.tag == "u" { // 下滑线
            if element.tag == "u" { // 下滑线
                //: parentInfo["u"] = (true)
                parentInfo["u"] = true

                //: } else if element.tag == "a" { // html 链接
            } else if element.tag == "a" { // html 链接
                //: let url: String = element.attributes["href"] as! String
                let url: String = element.attributes[(String(data_pathTitle))] as! String
                //: if url.count > 0 {
                if url.count > 0 {
                    //: parentInfo["href"] = url
                    parentInfo[(String(data_pathTitle))] = url
                }
            }
            //: for  subElement in children {
            for subElement in children {
                //: parseXMLElement(element: subElement as! ONOXMLElement, arrM: arrM, attrib: parentInfo)
                putEnable(element: subElement as! ONOXMLElement, arrM: arrM, attrib: parentInfo)
            }

            //: } else {
        } else {
            //: let text: String? = element.stringValue()
            let text: String? = element.stringValue()
            //: if text != nil {
            if text != nil {
                //: let info = NSMutableDictionary.init(dictionary: attrib)
                let info = NSMutableDictionary(dictionary: attrib) // 父节点属性
                //: info.addEntries(from: element.attributes)
                info.addEntries(from: element.attributes) // 当前节点属性，覆盖父节点属性
                //: info["text"] = text
                info[(const_textFormat.replacingOccurrences(of: "status", with: "te"))] = text
                //: arrM.add(info)
                arrM.add(info)
            }
        }
    }

    //: func designYYTextLayout(array: NSArray, displayMaxWidth: CGFloat, para: NSParagraphStyle?) ->YYTextLayout {
    func equivalentPara(array: NSArray, displayMaxWidth: CGFloat, para: NSParagraphStyle?) -> YYTextLayout {
        //: let attrString = designAttribStr(array: array, paragraphStyle: para)
        let attrString = pushTarget(array: array, paragraphStyle: para)

        //: guard let yyLayout = YYTextLayout.init(containerSize: CGSize.init(width: displayMaxWidth, height: CGFloat(MAXFLOAT)), text: attrString) else {
        guard let yyLayout = YYTextLayout(containerSize: CGSize(width: displayMaxWidth, height: CGFloat(MAXFLOAT)), text: attrString) else {
            //: return YYTextLayout.init(containerSize: CGSize.init(width: 0, height: 0), text: NSMutableAttributedString.init())!
            return YYTextLayout(containerSize: CGSize(width: 0, height: 0), text: NSMutableAttributedString())!
        }
        //: return yyLayout
        return yyLayout
    }

    //: func designAttribStr(array: NSArray, paragraphStyle: NSParagraphStyle?) ->NSAttributedString {
    func pushTarget(array: NSArray, paragraphStyle: NSParagraphStyle?) -> NSAttributedString {
        //: let mAttrString = NSMutableAttributedString.init(string: "\u{202A}")
        let mAttrString = NSMutableAttributedString(string: "\u{202A}")

        //: array.enumerateObjects { obj, idx, stop in
        array.enumerateObjects { obj, _, _ in
            //: let newObj = obj as![String: Any]
            let newObj = obj as! [String: Any]
            //: let type = newObj["type"] as? String
            let type = newObj[String(bytes: notiManagerCellStr.map{textTitle(request: $0)}, encoding: .utf8)!] as? String
            //: var tmp = NSAttributedString.init()
            var tmp = NSAttributedString()
            //: if type  == "txt" {
            if type == (app_coverId.replacingOccurrences(of: "than", with: "t")) {
                //: tmp = designAttribStrByTextDic(dict: newObj as NSDictionary)
                tmp = attribView(dict: newObj as NSDictionary)
                //: } else if type == "padding" {
            } else if type == (notiBackText.replacingOccurrences(of: "hidden", with: "ad") + String(user_detailText)) {
                //: let imageView = UIImageView.init()
                let imageView = UIImageView()
                //: imageView.size = (newObj["size"] as! NSValue).cgSizeValue
                imageView.size = (newObj[(main_addStr.replacingOccurrences(of: "action", with: "e"))] as! NSValue).cgSizeValue
                //: tmp = NSMutableAttributedString.yy_attachmentString(withContent: imageView, contentMode: .center, attachmentSize: imageView.size, alignTo: newObj["maxFont"] as! UIFont, alignment: .center)
                tmp = NSMutableAttributedString.yy_attachmentString(withContent: imageView, contentMode: .center, attachmentSize: imageView.size, alignTo: newObj[(String(data_nameRowMsg.suffix(7)))] as! UIFont, alignment: .center)
            }
            //: mAttrString.append(tmp)
            mAttrString.append(tmp)

            //: var underline = false
            var underline = false
            //: if newObj.keys.contains("u") {
            if newObj.keys.contains("u") {
                //: underline = (newObj["u"] as! NSNumber).boolValue
                underline = (newObj["u"] as! NSNumber).boolValue
            }
            //: if underline {
            if underline {
                //: let len = tmp.length
                let len = tmp.length
                //: if len > 0 {
                if len > 0 {
                    //: _ = YYTextDecoration.init(style: .single, width: (1.5), color: newObj["color"] as? UIColor)
                    _ = YYTextDecoration(style: .single, width: 1.5, color: newObj[String(bytes: user_dropBlockIfKey.map{accumulationClose(shadow: $0)}, encoding: .utf8)!] as? UIColor)
                    //: mAttrString.addAttributes([NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single], range: NSMakeRange(mAttrString.length - tmp.length, tmp.length))
                    mAttrString.addAttributes([NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single], range: NSMakeRange(mAttrString.length - tmp.length, tmp.length))
                }
            }
        }
        //: mAttrString.append(NSAttributedString.init(string: "\u{202C}"))
        mAttrString.append(NSAttributedString(string: "\u{202C}"))

        //: var newParagraphStyle = paragraphStyle
        var newParagraphStyle = paragraphStyle
        //: if paragraphStyle == nil {
        if paragraphStyle == nil {
            //: let tempStyle = NSMutableParagraphStyle.init()
            let tempStyle = NSMutableParagraphStyle()
            //: tempStyle.alignment = .left
            tempStyle.alignment = .left
            //: tempStyle.lineBreakMode = .byCharWrapping
            tempStyle.lineBreakMode = .byCharWrapping
            //: newParagraphStyle = tempStyle
            newParagraphStyle = tempStyle
        }
        //: mAttrString.addAttributes([NSAttributedString.Key.paragraphStyle: newParagraphStyle!], range: NSMakeRange(0, mAttrString.length))
        mAttrString.addAttributes([NSAttributedString.Key.paragraphStyle: newParagraphStyle!], range: NSMakeRange(0, mAttrString.length))
        //: return mAttrString
        return mAttrString
    }

    //: func desginAttribStrByPaddingDic(dict: NSDictionary) ->NSAttributedString {
    func yearDict(dict: NSDictionary) -> NSAttributedString {
        //: let imageView = UIImageView.init()
        let imageView = UIImageView()
        //: imageView.size = (dict["size"]as! NSValue).cgSizeValue
        imageView.size = (dict[(main_addStr.replacingOccurrences(of: "action", with: "e"))] as! NSValue).cgSizeValue
        //: let attachText = NSMutableAttributedString.yy_attachmentString(withContent: imageView, contentMode: .center, attachmentSize: imageView.size, alignTo: dict["maxFont"] as! UIFont, alignment: .center)
        let attachText = NSMutableAttributedString.yy_attachmentString(withContent: imageView, contentMode: .center, attachmentSize: imageView.size, alignTo: dict[(String(data_nameRowMsg.suffix(7)))] as! UIFont, alignment: .center)
        //: return attachText
        return attachText
    }

    //: func designAttribStrByTextDic(dict: NSDictionary) ->NSMutableAttributedString {
    func attribView(dict: NSDictionary) -> NSMutableAttributedString {
        //: let type = dict["type"] as! String
        let type = dict[String(bytes: notiManagerCellStr.map{textTitle(request: $0)}, encoding: .utf8)!] as! String
        //: if type != "link" && type != "txt" {
        if type != (String(mainMiniName)) && type != (app_coverId.replacingOccurrences(of: "than", with: "t")) {
            //: return NSMutableAttributedString.init()
            return NSMutableAttributedString()
        }
        //: let attributes = attributesWithConfig()
        let attributes = domino()
        // set color
        //: let color = dict["color"] as? UIColor
        let color = dict[String(bytes: user_dropBlockIfKey.map{accumulationClose(shadow: $0)}, encoding: .utf8)!] as? UIColor
        //: if color != nil {
        if color != nil {
            //: attributes[kCTForegroundColorAttributeName] = color?.cgColor
            attributes[kCTForegroundColorAttributeName] = color?.cgColor
        }

        // set font size
        //: let fontSize = (dict["size"] as? NSNumber)?.floatValue
        let fontSize = (dict[(main_addStr.replacingOccurrences(of: "action", with: "e"))] as? NSNumber)?.floatValue
        //: if (fontSize ?? 0 > 0) {
        if fontSize ?? 0 > 0 {
            //: let fontRef = CTFontCreateWithName("PingFangSC-Regular" as CFString, CGFloat(fontSize!), nil)
            let fontRef = CTFontCreateWithName((String(main_exitName) + notiGiftBarValue.replacingOccurrences(of: "error", with: "ar")) as CFString, CGFloat(fontSize!), nil)
            //: attributes[kCTFontAttributeName] = fontRef
            attributes[kCTFontAttributeName] = fontRef
        }
        //: var content = (dict["content"] != nil) ? dict["content"] : ""
        var content = (dict[String(bytes: appViewId.reversed(), encoding: .utf8)!] != nil) ? dict[String(bytes: appViewId.reversed(), encoding: .utf8)!] : ""
        //: if !(content is String) {
        if !(content is String) {
            //: content = String.init(format: "%@", content as! CVarArg)
            content = String(format: "%@", content as! CVarArg)
        }
        //: let attributedString = NSMutableAttributedString.init(string: content as! String, attributes: attributes as? [NSAttributedString.Key: Any])
        let attributedString = NSMutableAttributedString(string: content as! String, attributes: attributes as? [NSAttributedString.Key: Any])
        //: return attributedString
        return attributedString
    }

    //: func attributesWithConfig() -> NSMutableDictionary {
    func domino() -> NSMutableDictionary {
        //: let font = UIFont.pingfangRugularFont(fontSize: 15)
        let font = UIFont.recoverOf(fontSize: 15)
        //: let fontRef = CTFontCreateWithName(font.fontName as CFString, font.pointSize, nil)
        let fontRef = CTFontCreateWithName(font.fontName as CFString, font.pointSize, nil)
        //: var lineSpacing = 4
        var lineSpacing = 4
        //: let kNumberOfSettings = 3
        let kNumberOfSettings = 3
        //: let theSettings: [CTParagraphStyleSetting] =
        let theSettings: [CTParagraphStyleSetting] =
            //: [CTParagraphStyleSetting(spec: CTParagraphStyleSpecifier.lineSpacingAdjustment, valueSize:       MemoryLayout<CGFloat>.size, value: &lineSpacing),
            [CTParagraphStyleSetting(spec: CTParagraphStyleSpecifier.lineSpacingAdjustment, valueSize: MemoryLayout<CGFloat>.size, value: &lineSpacing),
             //: CTParagraphStyleSetting(spec: CTParagraphStyleSpecifier.maximumLineSpacing, valueSize: MemoryLayout<CGFloat>.size, value: &lineSpacing),
             CTParagraphStyleSetting(spec: CTParagraphStyleSpecifier.maximumLineSpacing, valueSize: MemoryLayout<CGFloat>.size, value: &lineSpacing),
             //: CTParagraphStyleSetting(spec: CTParagraphStyleSpecifier.minimumLineSpacing, valueSize: MemoryLayout<CGFloat>.size, value: &lineSpacing)]
             CTParagraphStyleSetting(spec: CTParagraphStyleSpecifier.minimumLineSpacing, valueSize: MemoryLayout<CGFloat>.size, value: &lineSpacing)]

        //: let theParagraphRef = CTParagraphStyleCreate(theSettings, kNumberOfSettings)
        let theParagraphRef = CTParagraphStyleCreate(theSettings, kNumberOfSettings)
        //: let textColor = UIColor.white
        let textColor = UIColor.white
        //: let dict = NSMutableDictionary.init()
        let dict = NSMutableDictionary()
        //: dict[kCTForegroundColorAttributeName] = textColor.cgColor
        dict[kCTForegroundColorAttributeName] = textColor.cgColor
        //: dict[kCTFontAttributeName] = fontRef
        dict[kCTFontAttributeName] = fontRef
        //: dict[kCTParagraphStyleAttributeName] = theParagraphRef
        dict[kCTParagraphStyleAttributeName] = theParagraphRef

        //: return dict
        return dict
    }

    //: func ctDictionaryForText(content: String, color: UIColor?) ->NSDictionary {
    func pathBy(content: String, color: UIColor?) -> NSDictionary {
        //: if content.count <= 0 {
        if content.count <= 0 {
            //: return NSDictionary.init()
            return NSDictionary()
        }
        //: if color == nil {
        if color == nil {
            //: return ctDictionaryForText(content: content)
            return frame(content: content)
        }
        //: return ["type": "txt",
        return [String(bytes: notiManagerCellStr.map{textTitle(request: $0)}, encoding: .utf8)!: (app_coverId.replacingOccurrences(of: "than", with: "t")),
                //: "content": content,
                String(bytes: appViewId.reversed(), encoding: .utf8)!: content,
                //: "color": color ?? .black]
                String(bytes: user_dropBlockIfKey.map{accumulationClose(shadow: $0)}, encoding: .utf8)!: color ?? .black]
    }

    //: func ctDictionaryForText(content: String) ->NSDictionary {
    func frame(content: String) -> NSDictionary {
        //: if content.count <= 0 {
        if content.count <= 0 {
            //: return NSDictionary.init()
            return NSDictionary()
        }
        //: return ["type": "txt",
        return [String(bytes: notiManagerCellStr.map{textTitle(request: $0)}, encoding: .utf8)!: (app_coverId.replacingOccurrences(of: "than", with: "t")),
                //: "content": content]
                String(bytes: appViewId.reversed(), encoding: .utf8)!: content]
    }
}
