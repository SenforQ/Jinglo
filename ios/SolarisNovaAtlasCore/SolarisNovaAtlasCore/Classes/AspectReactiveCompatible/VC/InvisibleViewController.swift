
//: Declare String Begin

/*: "^([a-zA-Z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$" :*/
fileprivate let dataToUrl:[UInt8] = [0x24,0x29,0x7d,0x36,0x2c,0x32,0x7b,0x5d,0x2e,0x5c,0x7a,0x2d,0x61,0x5b,0x28,0x2e,0x5c,0x29,0x2b,0x5d,0x2d,0x2e,0x5c,0x7a,0x2d,0x61,0x64,0x5c,0x5b,0x28,0x40,0x29,0x2b,0x5d,0x2d,0x2e,0x5c,0x5f,0x39,0x2d,0x30,0x5a,0x2d,0x41,0x7a,0x2d,0x61,0x5b,0x28,0x5e]

/*: "^((1[34578][0-9]{9})|((0\\d{2}-\\d{8})|(0\\d{3}-\\d{7,8})|(0\\d{10,11}))$" :*/
fileprivate let kRecordMessage:[UInt8] = [0xe,0xd8,0xd8,0xe1,0xb,0xe3,0xe4,0xe5,0xe7,0xe8,0xd,0xb,0xe0,0xdd,0xe9,0xd,0x2b,0xe9,0x2d,0xd9,0x2c,0xd8,0xd8,0xe0,0xc,0x14,0x2b,0xe2,0x2d,0xdd,0xc,0x14,0x2b,0xe8,0x2d,0xd9,0x2c,0xd8,0xe0,0xc,0x14,0x2b,0xe3,0x2d,0xdd,0xc,0x14,0x2b,0xe7,0xdc,0xe8,0x2d,0xd9,0x2c,0xd8,0xe0,0xc,0x14,0x2b,0xe1,0xe0,0xdc,0xe1,0xe1,0x2d,0xd9,0xd9,0xd4]

fileprivate func buttonMake(party num: UInt8) -> UInt8 {
    let value = Int(num) + 80
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)" :*/
fileprivate let showImageColorKey:[UInt8] = [0x69,0x33,0x66,0x67,0x80,0x3f,0x50,0x3b,0x3b,0x38,0x67,0x80,0x44,0x51,0x4c,0x40,0x4c,0x38,0x65,0x6c,0x38,0x85,0x3b,0x38,0x44,0x6a,0x68,0x86,0x3d,0x37,0x3c,0x3b,0x88,0x2f,0x34]

fileprivate func frameRefresh(tool num: UInt8) -> UInt8 {
    let value = Int(num) + 245
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "^[0-8]\\d{5}(?!\\d)$" :*/
fileprivate let data_labelLabTitle:String = "^[0-8]\\"
fileprivate let user_succeedMsg:[Character] = ["d","{","5"]
fileprivate let k_imageStyleTitle:String = "}(?!\\d)$"

/*: "^[a-zA-Z0-9]{6,20}+$" :*/
fileprivate let dataToEventFormat:String = "result screen self^[a-zA"
fileprivate let appIndexName:String = "-Z0user image name"
fileprivate let userEndFromTitle:[Character] = ["-","9","]","{","6",",","2","0","}","+","$"]

/*: "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$" :*/
fileprivate let app_managerExecuteId:[UInt8] = [0x72,0x3c,0x7c,0x88,0x88,0x84,0x87,0x53,0x4e,0x70,0x43,0x70,0x43,0x3d,0x53,0x3c,0x6f,0x70,0x78,0x75,0x41,0x8e,0x70,0x42,0x41,0x71,0x3f,0x3d,0x70,0x42,0x3c,0x6f,0x75,0x41,0x8e,0x70,0x42,0x71,0x8f,0x46,0x40,0x4a,0x91,0x3d,0x3c,0x6f,0x70,0x43,0x70,0x8b,0x34,0x70,0x42,0x41,0x71,0x3e,0x3d,0x3e,0x70,0x43,0x53,0x38]

fileprivate func frontRefresh(layer num: UInt8) -> UInt8 {
    let value = Int(num) - 20
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.) {3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$" :*/
fileprivate let notiRawInputFormat:[UInt8] = [0x8d,0xfb,0xec,0xe9,0xfb,0xec,0xe9,0xe1,0xe6,0x88,0xe3,0xfe,0xe6,0x8e,0xaf,0xe1,0x88,0xe3,0xfe,0xe7,0x8e,0x88,0xe3,0xfe,0xea,0x8e,0xaf,0x88,0xe3,0xe2,0x8e,0xec,0x88,0xe3,0xfe,0xea,0x8e,0x88,0xe3,0xfe,0xea,0x8e,0xec,0xfa,0x8f,0xfd,0xfa,0xf3,0xa8,0xe0,0xae,0xfb,0xec,0xe9,0xe1,0xe6,0x88,0xe3,0xfe,0xe6,0x8e,0xaf,0xe1,0x88,0xe3,0xfe,0xe7,0x8e,0x88,0xe3,0xfe,0xea,0x8e,0xaf,0x88,0xe3,0xe2,0x8e,0xec,0x88,0xe3,0xfe,0xea,0x8e,0x88,0xe3,0xfe,0xea,0x8e,0xec,0xfa,0xf7]

private func upColor(put num: UInt8) -> UInt8 {
    return num ^ 211
}

/*: "(^[0-9]{15}$)|([0-9]{17}([0-9]|[xX])$)" :*/
fileprivate let mainAppearId:[UInt8] = [0x35,0x43,0x46,0x2d,0x30,0x24,0x40,0x66,0x2c,0x28,0x60,0x39,0x34,0x61,0x35,0x46,0x2d,0x30,0x24,0x40,0x66,0x2c,0x2a,0x60,0x35,0x46,0x2d,0x30,0x24,0x40,0x61,0x46,0x65,0x45,0x40,0x34,0x39,0x34]

private func numericalCountMake(stack num: UInt8) -> UInt8 {
    return num ^ 29
}

/*: "SELF MATCHES %@" :*/
fileprivate let app_viewMsg:[Character] = ["S","E","L","F"," ","M","A","T","C","H","E","S"," ","%","@"]

/*: "Feedback" :*/
fileprivate let userColorMessage:[Character] = ["F","e","e","d","b","a","c"]
fileprivate let dataButtonFormat:String = "K"

/*: "Enter your feedback…" :*/
fileprivate let const_addressId:String = "cell message automatic cellEnter"
fileprivate let show_itemManagerKey:String = "modeleed"

/*: "#999999" :*/
fileprivate let kLevelFormat:[Character] = ["#","9","9","9","9","9","9"]

/*: "0/ :*/
fileprivate let showToMsg:String = "kit/"

/*: "Your email (Required) " :*/
fileprivate let app_makeStr:String = "Yourtime self view as"
fileprivate let noti_turnValue:String = "l (Reif target"
fileprivate let k_hiddenTitle:String = "data "

/*: "icon_me_feelback_star" :*/
fileprivate let const_toValue:[Character] = ["i","c","o","n","_","m","e","_","f","e","e","l","b","a"]
fileprivate let data_streamStr:[Character] = ["c","k","_","s","t","a","r"]

/*: "#CCCCCC" :*/
fileprivate let const_tableName:String = "#CCCCCframe false message"
fileprivate let mainReplyId:String = "c"

/*: "Send" :*/
fileprivate let constInfoMessage:[Character] = ["S","e","n","d"]

/*: "#D0D0D0" :*/
fileprivate let noti_userPathKey:[Character] = ["#","D","0","D","0","D","0"]

/*: "Please fill in the content" :*/
fileprivate let user_rowSendKey:[Character] = ["P","l","e","a","s","e"," ","f","i","l","l"," ","i","n"," "]
fileprivate let constPushValue:[Character] = ["t","h","e"," ","c","o","n","t","e","n","t"]

/*: "Please enter the correct email address" :*/
fileprivate let user_viewCornerElsePath:[UInt8] = [0x73,0x73,0x65,0x72,0x64,0x64,0x61,0x20,0x6c,0x69,0x61,0x6d,0x65,0x20,0x74,0x63,0x65,0x72,0x72,0x6f,0x63,0x20,0x65,0x68,0x74,0x20,0x72,0x65,0x74,0x6e,0x65,0x20,0x65,0x73,0x61,0x65,0x6c,0x50]

/*: "content" :*/
fileprivate let user_leadingData:[Character] = ["c","o","n","t","e","n","t"]

/*: "contactWay" :*/
fileprivate let k_centerMessage:String = "ctime"
fileprivate let user_valueData:String = "ntactWaybutton index"

/*: "platform" :*/
fileprivate let dataStopUrl:String = "PLATFO"
fileprivate let main_playerTotalModelTitle:String = "ofm"

/*: "iphone" :*/
fileprivate let app_pathData:String = "touchphone"

/*: "version" :*/
fileprivate let kShareMessage:String = "vewindowion"

/*: "type" :*/
fileprivate let const_awakeMessage:String = "namepe"

/*: "Operation succeeded" :*/
fileprivate let constLikeStr:String = "view type rank color backgroundOpe"
fileprivate let data_buttonRequestId:[Character] = ["r","a","t","i","o","n"," ","s","u","c","c","e","e","d","e","d"]

/*: / :*/
fileprivate let showBottomFormatKey:String = "/"

/*: "\n" :*/
fileprivate let notiImageUrl:String = "\n"

/*: "Problem statements" :*/
fileprivate let data_frameId:[Character] = ["P","r","o","b","l","e","m"," ","s","t","a","t","e","m","e","n"]
fileprivate let dataAgeValue:[Character] = ["t","s"]

/*: "Feature advice" :*/
fileprivate let app_bagKeyValue:[Character] = ["F","e","a","t","u","r","e"," ","a"]
fileprivate let constActualValue:String = "equalice"

/*: "Operation questions" :*/
fileprivate let notiPointPicIfMessage:String = "Operatto less label"
fileprivate let user_showTitle:String = "QUESTIONS"

/*: "Others" :*/
fileprivate let noti_toFormat:[Character] = ["O","t","h","e","r","s"]

/*: "#EFEDFF" :*/
fileprivate let main_addSucceedMessage:[Character] = ["#","E","F","E","D","F","F"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InvisibleViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/15.
//

//: import UIKit
import UIKit

//: enum Validate {
enum PublisherVoiceValidate {
    //: case email(_: String)
    case email(_: String) //  邮箱
    //: case phoneNumber(_: String)
    case phoneNumber(_: String) //  手机号
    //: case userName(_: String)
    case userName(_: String) //  用户名
    //: case password(_: String)
    case password(_: String) //  密码
    //: case nickName(_: String)
    case nickName(_: String) //  昵称
    //: case postalCode(_: String)
    case postalCode(_: String) //  邮编
    //: case URL(_: String)
    case URL(_: String) //  URL
    //: case IP(_: String)
    case IP(_: String) //  IP
    //: case isChinese(_: String)
    case isChinese(_: String) //  是否全是中文字符
    //: case idNumber(_: String)
    case idNumber(_: String) //  身份证号

    //: var isRight: Bool {
    var isRight: Bool {
        //: var predicateStr: String!
        var predicateStr: String!
        //: var currentObject: String!
        var currentObject: String!
        //: switch self {
        switch self {
        //: case let .email(str):
        case let .email(str):
            //: predicateStr = "^([a-zA-Z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
            predicateStr = String(bytes: dataToUrl.reversed(), encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .phoneNumber(str):
        case let .phoneNumber(str):
            //: predicateStr = "^((1[34578][0-9]{9})|((0\\d{2}-\\d{8})|(0\\d{3}-\\d{7,8})|(0\\d{10,11}))$"
            predicateStr = String(bytes: kRecordMessage.map{buttonMake(party: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .userName(str):
        case let .userName(str):
            //: predicateStr = "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)"
            predicateStr = String(bytes: showImageColorKey.map{frameRefresh(tool: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .postalCode(str):
        case let .postalCode(str):
            //: predicateStr = "^[0-8]\\d{5}(?!\\d)$"
            predicateStr = (data_labelLabTitle + String(user_succeedMsg) + k_imageStyleTitle)
            //: currentObject = str
            currentObject = str
        //: case let .password(str):
        case let .password(str):
            //: predicateStr = "^[a-zA-Z0-9]{6,20}+$"
            predicateStr = (String(dataToEventFormat.suffix(6)) + String(appIndexName.prefix(3)) + String(userEndFromTitle))
            //: currentObject = str
            currentObject = str
        //: case let .nickName(str):
        case let .nickName(str):
            //: predicateStr = "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)"
            predicateStr = String(bytes: showImageColorKey.map{frameRefresh(tool: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .URL(str):
        case let .URL(str):
            //: predicateStr = "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$"
            predicateStr = String(bytes: app_managerExecuteId.map{frontRefresh(layer: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .IP(str):
        case let .IP(str):
            //: predicateStr = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.) {3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"
            predicateStr = String(bytes: notiRawInputFormat.map{upColor(put: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let . isChinese(str):
        case let .isChinese(str):
            //: predicateStr = "(^[\u{4e00}-\u{9fa5}]$)"
            predicateStr = "(^[\u{4e00}-\u{9fa5}]$)"
            //: currentObject = str
            currentObject = str
        //: case let . idNumber(str):
        case let .idNumber(str):
            //: predicateStr = "(^[0-9]{15}$)|([0-9]{17}([0-9]|[xX])$)"
            predicateStr = String(bytes: mainAppearId.map{numericalCountMake(stack: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        }
        //: let predicate =  NSPredicate(format: "SELF MATCHES %@", predicateStr)
        let predicate = NSPredicate(format: (String(app_viewMsg)), predicateStr)
        //: return predicate.evaluate(with: currentObject)
        return predicate.evaluate(with: currentObject)
    }
}

//: class TalkingFeedbackVC: TalkingBaseViewController {
class InvisibleViewController: SizeViewController {
    //: let limitCount = 300
    let limitCount = 300
    //: let EmialCount = 50
    let EmialCount = 50
    //: var seleteBtn: UIButton?
    var seleteBtn: UIButton?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.title = "Feedback".localized
        self.title = (String(userColorMessage) + dataButtonFormat.lowercased()).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: designView()
        managerDelete()
        //: addTapGestureRecognizer()
        acceptAdd()
        //: addKeyboardNotification()
        attribute()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIScrollView = {
    lazy var backView: UIScrollView = {
        //: let view = UIScrollView.init()
        let view = UIScrollView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.showsHorizontalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        //: view.showsVerticalScrollIndicator = false
        view.showsVerticalScrollIndicator = false
        //: return view
        return view
        //: }()
    }()

    //: lazy var contView: UIView = {
    lazy var contView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var inputTView: UIView = {
    lazy var inputTView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = .appBgColor()
        view.backgroundColor = .sizeColor()
        //: return view
        return view
        //: }()
    }()

    //: lazy var textView: TalkingTextView = {
    lazy var textView: EqualHasDelegate = {
        //: let textView = TalkingTextView.init()
        let textView = EqualHasDelegate()
        //: textView.placeholder = "Enter your feedback…".localized
        textView.placeholder = (String(const_addressId.suffix(5)) + " your " + show_itemManagerKey.replacingOccurrences(of: "model", with: "f") + "back…").localized
        //: textView.placeholderColor = UIColor.init(hex: "#999999")!
        textView.placeholderColor = UIColor(hex: (String(kLevelFormat)))!
        //: textView.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        textView.font = UIFont.clickLarge(type: .Regular, fontSize: 15)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.toEvent()
        //: textView.PlaceholderInsets = UIEdgeInsets(top: 16, left: 16, bottom: 10, right: 16)
        textView.PlaceholderInsets = UIEdgeInsets(top: 16, left: 16, bottom: 10, right: 16)

        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textContainer.lineBreakMode = .byTruncatingTail
        textView.textContainer.lineBreakMode = .byTruncatingTail
        //: textView.delegate = self
        textView.delegate = self
        //: textView.returnKeyType = UIReturnKeyType.done
        textView.returnKeyType = UIReturnKeyType.done
        //: textView.bounces = false
        textView.bounces = false
        //: textView.backgroundColor = .appBgColor()
        textView.backgroundColor = .sizeColor()
        //: numberLB.text =  "0/\(limitCount)"
        numberLB.text = "0/\(limitCount)"
        //: return textView
        return textView
        //: }()
    }()

    //: lazy var numberLB: UILabel = {
    lazy var numberLB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.init(hex: "#999999")
        LB.textColor = UIColor(hex: (String(kLevelFormat)))
        //: LB.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        LB.font = UIFont.clickLarge(type: .Regular, fontSize: 14)
        //: LB.text = "0/\(limitCount)"
        LB.text = "0/\(limitCount)"
        //: LB.textAlignment = .right
        LB.textAlignment = .right
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var emailTF: UITextField = {
    lazy var emailTF: UITextField = {
        //: let tf = UITextField.init()
        let tf = UITextField()
        //: tf.backgroundColor = .appBgColor()
        tf.backgroundColor = .sizeColor()
        //: tf.textColor = UIColor.appTitleColor()
        tf.textColor = UIColor.toEvent()
        //: tf.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        tf.font = UIFont.clickLarge(type: .Regular, fontSize: 16)
        //: tf.delegate = self
        tf.delegate = self
        //: tf.returnKeyType = UIReturnKeyType.done
        tf.returnKeyType = UIReturnKeyType.done
        //: tf.attributedPlaceholder = NSAttributedString.init(string: "Your email (Required) ".localized, attributes: [
        tf.attributedPlaceholder = NSAttributedString(string: (String(app_makeStr.prefix(4)) + " emai" + String(noti_turnValue.prefix(5)) + "quired" + k_hiddenTitle.replacingOccurrences(of: "data", with: ")")).localized, attributes: [
            //: NSAttributedString.Key.foregroundColor: UIColor.init(hex: "#999999")!])
            NSAttributedString.Key.foregroundColor: UIColor(hex: (String(kLevelFormat)))!])
        //: tf.clipsToBounds = true
        tf.clipsToBounds = true
        //: tf.layer.cornerRadius = 8
        tf.layer.cornerRadius = 8
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: tf.textAlignment = .right
            tf.textAlignment = .right
        }
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 49))
        leftView.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 49))

        //: let leftImgView = UIImageView.init()
        let leftImgView = UIImageView()
        //: leftImgView.frame = CGRect(x: 16, y: 20, width: 9, height: 9)
        leftImgView.frame = CGRect(x: 16, y: 20, width: 9, height: 9)
        //: leftImgView.image = UIImage.BundleImageNamed(name: "icon_me_feelback_star")
        leftImgView.image = UIImage.thoughtImageBundleSizeText(name: (String(const_toValue) + String(data_streamStr)))
        //: leftView.addSubview(leftImgView)
        leftView.addSubview(leftImgView)
        //: tf.leftView = leftView
        tf.leftView = leftView
        //: tf.leftViewMode = .always
        tf.leftViewMode = .always
        //: return tf
        return tf
        //: }()
    }()

    //: lazy var doneBtn: UIButton = {
    lazy var doneBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#CCCCCC")!, forState: .disabled)
        btn.lineClick(color: UIColor(hex: (String(const_tableName.prefix(6)) + mainReplyId.uppercased()))!, forState: .disabled)
        //: btn.setBackgroundColor(color: UIColor.appThemeColor(), forState: .normal)
        btn.lineClick(color: UIColor.readRemove(), forState: .normal)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(constInfoMessage)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Medium, fontSize: 17)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(accumulation), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFeedbackVC {
extension InvisibleViewController {
    //: @objc func TagBtnClick(sender: UIButton) {
    @objc func miniRequest(sender: UIButton) {
        //: seleteBtn?.isSelected = false
        seleteBtn?.isSelected = false
        //: seleteBtn?.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
        seleteBtn?.layer.borderColor = UIColor(hex: (String(noti_userPathKey)))?.cgColor
        //: sender.isSelected = !sender.isSelected
        sender.isSelected = !sender.isSelected
        //: seleteBtn = sender
        seleteBtn = sender
        //: seleteBtn!.layer.borderColor = UIColor.clear.cgColor
        seleteBtn!.layer.borderColor = UIColor.clear.cgColor
    }

    //: @objc func doneBtnClick() {
    @objc func accumulation() {
        //: if seleteBtn == nil || textView.text.count<=0 || emailTF.text!.count<=0 {
        if seleteBtn == nil || textView.text.count <= 0 || emailTF.text!.count <= 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "Please fill in the content".localized)
            self.drawObserver(showMsg: (String(user_rowSendKey) + String(constPushValue)).localized)
            //: return
            return
        }

        //: if LanguageManager.shared.direction == .leftToRight {
        if MakeThen.shared.direction == .leftToRight {
            //: if !Validate.email(emailTF.text!).isRight {
            if !PublisherVoiceValidate.email(emailTF.text!).isRight {
                //: self.func__showStatusBarErrorMsg(showMsg: "Please enter the correct email address".localized)
                self.drawObserver(showMsg: String(bytes: user_viewCornerElsePath.reversed(), encoding: .utf8)!.localized)
                //: return
                return
            }
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["content"] = textView.text
        dict[(String(user_leadingData))] = textView.text
        //: dict["contactWay"] = emailTF.text
        dict[(k_centerMessage.replacingOccurrences(of: "time", with: "o") + String(user_valueData.prefix(8)))] = emailTF.text
        //: dict["platform"] = "iphone"
        dict[(dataStopUrl.lowercased() + main_playerTotalModelTitle.replacingOccurrences(of: "of", with: "r"))] = (app_pathData.replacingOccurrences(of: "touch", with: "i"))
        //: dict["version"] = AppVersion
        dict[(kShareMessage.replacingOccurrences(of: "window", with: "rs"))] = userToUrl
        //: dict["type"] = String((seleteBtn?.tag ?? 100)-100)
        dict[(const_awakeMessage.replacingOccurrences(of: "name", with: "ty"))] = String((seleteBtn?.tag ?? 100) - 100)

        //: ProgressHUD.show()
        DirectThen.levelHandle()

        //: TalkingMeRequestTool.req_Feedback(params: dict) { succeed, result, errorModel in
        TampReactiveCompatible.examine(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Operation succeeded".localized)
                self.occupant(showMsg: (String(constLikeStr.suffix(3)) + String(data_buttonRequestId)).localized)
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }

    //: func addKeyboardNotification() {
    func attribute() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(keyboardWillShow(notification:)),
                                               selector: #selector(exhibit(notification:)),
                                               //: name: UIResponder.keyboardWillShowNotification,
                                               name: UIResponder.keyboardWillShowNotification,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(keyboardWillHide(notification:)),
                                               selector: #selector(colorEnable(notification:)),
                                               //: name: UIResponder.keyboardWillHideNotification,
                                               name: UIResponder.keyboardWillHideNotification,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func keyboardWillShow(notification: Notification) {
    @objc func exhibit(notification: Notification) {
        //: guard emailTF.isFirstResponder else { return }
        guard emailTF.isFirstResponder else { return }
        //: guard let info = notification.userInfo else { return }
        guard let info = notification.userInfo else { return }
        //: let value = info[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue
        let value = info[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue
        //: let frame = value?.cgRectValue ?? .zero
        let frame = value?.cgRectValue ?? .zero
        //: let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        //: guard (emailTF.bottom + StatusBarNavigationBarHeight) > frame.minY else { return }
        guard (emailTF.bottom + mainKeyValue) > frame.minY else { return }

        //: let y = (emailTF.bottom + StatusBarNavigationBarHeight) - frame.minY
        let y = (emailTF.bottom + mainKeyValue) - frame.minY
        //: UIView.animate(withDuration: duration) {
        UIView.animate(withDuration: duration) {
            //: self.backView.transform = CGAffineTransform(translationX: 0, y: -y)
            self.backView.transform = CGAffineTransform(translationX: 0, y: -y)
        }
    }

    //: @objc func keyboardWillHide(notification: Notification) {
    @objc func colorEnable(notification: Notification) {
        //: guard let info = notification.userInfo else { return }
        guard let info = notification.userInfo else { return }
        //: let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25

        //: UIView.animate(withDuration: duration) {
        UIView.animate(withDuration: duration) {
            //: self.backView.transform = .identity
            self.backView.transform = .identity
        }
    }
}

// MARK: - UITextViewDelegate, UITextFieldDelegate

//: extension TalkingFeedbackVC: UITextViewDelegate, UITextFieldDelegate {
extension InvisibleViewController: UITextViewDelegate, UITextFieldDelegate {
    //: public func textViewDidChange(_ textView: UITextView) {
    public func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count > limitCount {
        if textView.text.count > limitCount {
            // 获得已输出字数与正输入字母数
            //: let selectRange = textView.markedTextRange
            let selectRange = textView.markedTextRange

            // 获取高亮部分 － 如果有联想词则解包成功
            //: if let selectRange = selectRange {
            if let selectRange = selectRange {
                //: let position =  textView.position(from: (selectRange.start), offset: 0)
                let position = textView.position(from: selectRange.start, offset: 0)
                //: if (position != nil) {
                if position != nil {
                    //: return
                    return
                }
            }

            //: let textContent = textView.text ?? ""
            let textContent = textView.text ?? ""
            //: let textNum = textContent.count
            let textNum = textContent.count

            // 截取
            //: if textNum > limitCount && limitCount > 0 {
            if textNum > limitCount && limitCount > 0 {
                //: textView.text = string_prefix(index: limitCount, text: textContent)
                textView.text = member(index: limitCount, text: textContent)
            }
        }
        //: numberLB.text =  "\(textView.text.count)/\(limitCount)"
        numberLB.text = "\(textView.text.count)/\(limitCount)"
    }

    //: public func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
    public func textViewShouldBeginEditing(_: UITextView) -> Bool {
        //: numberLB.isHidden = false
        numberLB.isHidden = false
        //: return true
        return true
    }

    //: public func textViewDidEndEditing(_ textView: UITextView) {
    public func textViewDidEndEditing(_ textView: UITextView) {
        //: if textView.text.isEmpty {
        if textView.text.isEmpty {
            //: numberLB.isHidden = false
            numberLB.isHidden = false
            //: } else {
        } else {
            //: numberLB.isHidden = true
            numberLB.isHidden = true
        }
    }

    //: public func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    public func textView(_ textView: UITextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: if textView.returnKeyType == .done {
        if textView.returnKeyType == .done {
            //: if text == "\n" {
            if text == "\n" {
                //: textView.resignFirstResponder()
                textView.resignFirstResponder()
            }
            //: return true
            return true
        }
        //: return true
        return true
    }

    // 字符串的截取 从头截取到指定index
    //: private func string_prefix(index: Int,text:String) -> String {
    private func member(index: Int, text: String) -> String {
        //: if text.count <= index {
        if text.count <= index {
            //: return text
            return text
            //: } else {
        } else {
            //: let index = text.index(text.startIndex, offsetBy: index)
            let index = text.index(text.startIndex, offsetBy: index)
            //: let str = text.prefix(upTo: index)
            let str = text.prefix(upTo: index)
            //: return String(str)
            return String(str)
        }
    }

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()

        //: return true
        return true
    }

    //: func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    func textField(_ textField: UITextField, shouldChangeCharactersIn _: NSRange, replacementString string: String) -> Bool {
        //: if textField.text!.count+string.count>EmialCount || textField.text!.count+string.count <= 0 {
        if textField.text!.count + string.count > EmialCount || textField.text!.count + string.count <= 0 {
            //: return false
            return false
        }
        //: return true
        return true
    }
}

// MARK: - UI

//: extension TalkingFeedbackVC {
extension InvisibleViewController {
    //: func designView() {
    func managerDelete() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: backView.addSubview(contView)
        backView.addSubview(contView)
        //: contView.snp.makeConstraints { make in
        contView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(backView)
            make.leading.trailing.top.bottom.equalTo(backView)
        }

        //: contView.addSubview(inputTView)
        contView.addSubview(inputTView)
        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(15)
            make.leading.equalTo(contView).offset(15)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-15)
            make.trailing.equalTo(contView.snp.trailing).offset(-15)
            //: make.top.equalTo(contView).offset(128)
            make.top.equalTo(contView).offset(128)
            //: make.height.equalTo(210)
            make.height.equalTo(210)
        }

        //: inputTView.addSubview(textView)
        inputTView.addSubview(textView)
        //: inputTView.addSubview(numberLB)
        inputTView.addSubview(numberLB)
        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalTo(inputTView)
            make.leading.trailing.top.equalTo(inputTView)
            //: make.bottom.equalTo(inputTView.snp.bottom).offset(-40)
            make.bottom.equalTo(inputTView.snp.bottom).offset(-40)
        }
        //: numberLB.snp.makeConstraints { make in
        numberLB.snp.makeConstraints { make in
            //: make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            //: make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
            make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: contView.addSubview(emailTF)
        contView.addSubview(emailTF)
        //: emailTF.snp.makeConstraints { make in
        emailTF.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(15)
            make.leading.equalTo(contView).offset(15)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-15)
            make.trailing.equalTo(contView.snp.trailing).offset(-15)
            //: make.top.equalTo(inputTView.snp.bottom).offset(16)
            make.top.equalTo(inputTView.snp.bottom).offset(16)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
        }

        //: contView.addSubview(doneBtn)
        contView.addSubview(doneBtn)
        //: doneBtn.snp.makeConstraints { make in
        doneBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(54)
            make.leading.equalTo(contView).offset(54)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-54)
            make.trailing.equalTo(contView.snp.trailing).offset(-54)
            //: make.top.equalTo(emailTF.snp.bottom).offset(111)
            make.top.equalTo(emailTF.snp.bottom).offset(111)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: let arr = ["Problem statements".localized,
        let arr = [(String(data_frameId) + String(dataAgeValue)).localized,
                   //: "Feature advice".localized,
                   (String(app_bagKeyValue) + constActualValue.replacingOccurrences(of: "equal", with: "dv")).localized,
                   //: "Operation questions".localized,
                   (String(notiPointPicIfMessage.prefix(6)) + "ion " + user_showTitle.lowercased()).localized,
                   //: "Others".localized]
                   (String(noti_toFormat)).localized]

        //: for i in 0..<arr.count {
        for i in 0 ..< arr.count {
            //: let xz = 15
            let xz = 15
            //: let yz = 16
            let yz = 16
            //: let Width = (Int(ScreenWidth)-xz*3)/2
            let Width = (Int(kQueryValue) - xz * 3) / 2
            //: let height = 38
            let height = 38
            //: let X = xz+(xz + Width)*(i%2)
            let X = xz + (xz + Width) * (i % 2)
            //: let Y = yz+(yz+height)*(i/2)
            let Y = yz + (yz + height) * (i / 2)

            //: let btn = UIButton.init()
            let btn = UIButton()
            //: btn.frame =  CGRect.init(x: X, y: Y , width: Width, height: height)
            btn.frame = CGRect(x: X, y: Y, width: Width, height: height)
            //: btn.setTitle(arr[i], for: .normal)
            btn.setTitle(arr[i], for: .normal)
            //: btn.setTitleColor(.black, for: .normal)
            btn.setTitleColor(.black, for: .normal)
            //: btn.setTitleColor(.appThemeColor(), for: .selected)
            btn.setTitleColor(.readRemove(), for: .selected)

            //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
            btn.titleLabel?.font = UIFont.clickLarge(type: .Regular, fontSize: 15)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue || TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            if LayerAddrTool.share.interfaceLang == TrademarkVoiceMixedBagTextConvertible.es.rawValue || LayerAddrTool.share.interfaceLang == TrademarkVoiceMixedBagTextConvertible.pt.rawValue {
                //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 13)
                btn.titleLabel?.font = UIFont.clickLarge(type: .Regular, fontSize: 13)
            }
            //: btn.layer.cornerRadius = 19
            btn.layer.cornerRadius = 19
            //: btn.layer.borderWidth = 1
            btn.layer.borderWidth = 1
            //: btn.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
            btn.layer.borderColor = UIColor(hex: (String(noti_userPathKey)))?.cgColor
            //: btn.setBackgroundColor(color: UIColor.init(hex: "#EFEDFF")!, forState: .selected)
            btn.lineClick(color: UIColor(hex: (String(main_addSucceedMessage)))!, forState: .selected)
            //: btn.setBackgroundColor(color: .white, forState: .normal)
            btn.lineClick(color: .white, forState: .normal)
            //: btn.tag = 100+i
            btn.tag = 100 + i
            //: btn.addTarget( self, action: #selector(TagBtnClick(sender:)), for: .touchUpInside)
            btn.addTarget(self, action: #selector(miniRequest(sender:)), for: .touchUpInside)
            //: contView.addSubview(btn)
            contView.addSubview(btn)
        }

        //: contView.snp.remakeConstraints { make in
        contView.snp.remakeConstraints { make in
            //: make.bottom.equalTo(doneBtn.snp.bottom).offset(50)
            make.bottom.equalTo(doneBtn.snp.bottom).offset(50)
            //: make.width.equalTo(backView)
            make.width.equalTo(backView)
        }
    }
}
