
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let user_arrayValueId:String = "Persosize height player"
fileprivate let notiInputKey:String = "MATION"

/*: "authPic" :*/
fileprivate let const_frameFormat:String = "result message stringauthPic"

/*: "Face verification" :*/
fileprivate let noti_videoId:String = "self return true count messageFace "
fileprivate let kAddressMessage:[Character] = ["a","t","i","o","n"]

/*: "icon_zc_userconver" :*/
fileprivate let user_bottomTitle:[Character] = ["i","c","o","n","_","z","c","_","u","s","e","r","c"]
fileprivate let data_toFormat:String = "onvaluer"

/*: "Verify now" :*/
fileprivate let show_voiceMessage:String = "Verify to to log type"
fileprivate let noti_visibleMessage:String = "noview"

/*: "#4A89F3" :*/
fileprivate let k_labTitle:String = "attach"
fileprivate let userGiftScaleId:[Character] = ["4","A","8","9","F","3"]

/*: "Finish" :*/
fileprivate let userSizePath:String = "self normal cell view keyFinish"

/*: "#8C7AFF" :*/
fileprivate let user_titleValue:String = "#8C7AFFengine add conversation top line"

/*: "Skip" :*/
fileprivate let userDataFormat:[Character] = ["S","k","i","p"]

/*: "icon_successfylly" :*/
fileprivate let show_sizeShareTitle:String = "icon_if transaction shared extra"
fileprivate let show_formatAppearanceId:String = "ssfexecute"
fileprivate let app_topMessage:String = "LLY"

/*: "Submitted successfully" :*/
fileprivate let userListKey:String = "moment scale as maleSubmi"
fileprivate let k_phoneFormat:String = " succmodel frame if title"
fileprivate let const_bottomNameFormat:String = "ustylestyley"

/*: "#2ED180" :*/
fileprivate let dataTotaleractionStr:String = "#2ED180let user corner let"

/*: _ :*/
fileprivate let showParentUrl:[Character] = ["_"]

/*: "male" :*/
fileprivate let user_toTitle:[UInt8] = [0xd0,0xdc,0xd1,0xd8]

private func numberimateData(view num: UInt8) -> UInt8 {
    return num ^ 189
}

/*: "female" :*/
fileprivate let userListStr:[Character] = ["f","e","m","a","l","e"]

/*: "RegisterSuccess" :*/
fileprivate let kPushValue:String = "Registrue make manager star case"
fileprivate let user_contentData:String = "umakeess"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DrunkReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/9/8.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditAuthAndVideoVC: TalkingBaseViewController {
class DrunkReactiveCompatible: SizeViewController {
    //: private var VideoIconPath = ""
    private var VideoIconPath = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: var params = [String: Any]()
    var params = [String: Any]()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        outContainer(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(user_arrayValueId.prefix(5)) + "nal infor" + notiInputKey.lowercased()).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.report()
        //: self.setupSubViewsConstraint()
        self.modify()

        //: if !PunctuateThen.share.appConfigMode.skipInputInviteCode {
        if !PunctuateThen.share.appConfigMode.skipInputInviteCode {
            //: skipButton.isHidden = true
            skipButton.isHidden = true
//            skipTipLabel.isHidden = skipButton.isHidden
        }
        //: if PunctuateThen.share.userFillInfoMode.authImage != nil {
        if PunctuateThen.share.userFillInfoMode.authImage != nil {
            //: self.params["authPic"] = PunctuateThen.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            self.params[(String(const_frameFormat.suffix(7)))] = PunctuateThen.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.paradigm()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    // MARK: - Lazy Load

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var converLB: UILabel = {
    lazy var converLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .toEvent()
        //: lb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 17)
        lb.font = UIFont.clickLarge(type: .Semibold, fontSize: 17)
        //: lb.text = "Face verification".localized
        lb.text = (String(noti_videoId.suffix(5)) + "verific" + String(kAddressMessage)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var converImag: UIImageView = {
    lazy var converImag: UIImageView = {
        //: let imagv = UIImageView.init()
        let imagv = UIImageView()
        //: imagv.image = UIImage.BundleImageNamed(name: "icon_zc_userconver")
        imagv.image = UIImage.thoughtImageBundleSizeText(name: (String(user_bottomTitle) + data_toFormat.replacingOccurrences(of: "value", with: "ve")))
        //: return imagv
        return imagv
        //: }()
    }()

    //: lazy var converBtn: UIButton = {
    lazy var converBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(converBtnClick), for: UIControl.Event.touchUpInside)
        btn.addTarget(self, action: #selector(inheritanceNext), for: UIControl.Event.touchUpInside)
        //: var attributedString = NSMutableAttributedString(string: "Verify now".localized)
        var attributedString = NSMutableAttributedString(string: (String(show_voiceMessage.prefix(7)) + noti_visibleMessage.replacingOccurrences(of: "view", with: "w")).localized)
        //: attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor.init(hex: "#4A89F3")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor(hex: (k_labTitle.replacingOccurrences(of: "attach", with: "#") + String(userGiftScaleId)))!, .font: UIFont.clickLarge(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Medium, fontSize: 17)
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(userSizePath.suffix(6))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.sinceNext(colors: UIColor.analogDigitalConverterColor(), size: CGSize(width: kQueryValue - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick(isSkip:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(passOver(isSkip:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.init(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(user_titleValue.prefix(7)))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: (String(userDataFormat)).localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(skipButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fail), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
//    lazy var skipTipLabel: UILabel = {
//        let label = UILabel()
//        label.font = .pingfangFont(type: .Regular, fontSize: 12)
//        label.textColor = .appValueDetailColor()
//        label.textAlignment = .center
//        label.numberOfLines = 0
//        label.text = "You can feel free to skip this step.".localized
//        return label
//    }()
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension DrunkReactiveCompatible {
    //: func setConverView() {
    func paradigm() {
        //: self.converImag.image = UIImage.BundleImageNamed(name: "icon_successfylly")
        self.converImag.image = UIImage.thoughtImageBundleSizeText(name: (String(show_sizeShareTitle.prefix(5)) + "succe" + show_formatAppearanceId.replacingOccurrences(of: "execute", with: "y") + app_topMessage.lowercased()))
        //: let attributedString = NSMutableAttributedString(string: "Submitted successfully".localized)
        let attributedString = NSMutableAttributedString(string: (String(userListKey.suffix(5)) + "tted" + String(k_phoneFormat.prefix(5)) + "essf" + const_bottomNameFormat.replacingOccurrences(of: "style", with: "l")).localized)
        //: attributedString.addAttributes([.foregroundColor: UIColor.init(hex: "#2ED180")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.foregroundColor: UIColor(hex: (String(dataTotaleractionStr.prefix(7))))!, .font: UIFont.clickLarge(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
    }
}

/// event
//: extension TalkingLoginEditAuthAndVideoVC {
extension DrunkReactiveCompatible {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func untilNavi() {
        //: super.naviPopback()
        super.untilNavi()
        // 埋点
        //: let eventID = "\(click_registration_information3_backBTN)_\(PunctuateThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(mainBeginMessage)_\(PunctuateThen.share.userFillInfoMode.sex == TopComparable.male.rawValue ? String(bytes: user_toTitle.map{numberimateData(view: $0)}, encoding: .utf8)! : (String(userListStr)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        const_screenFormat.occurrenceIn(eventID: eventID)
    }

    //: @objc func converBtnClick() {
    @objc func inheritanceNext() {
        // 埋点
        //: let eventID = "\(click_registration_information3_verifyBTN)_\(PunctuateThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kScaleText)_\(PunctuateThen.share.userFillInfoMode.sex == TopComparable.male.rawValue ? String(bytes: user_toTitle.map{numberimateData(view: $0)}, encoding: .utf8)! : (String(userListStr)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        const_screenFormat.occurrenceIn(eventID: eventID)

        //: let vc = TalkingVerificationExampleVC()
        let vc = ModelViewController()
        //: vc.isRegisterPush = true
        vc.isRegisterPush = true
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
        //: vc.iconActionBlock = { [weak self] image in
        vc.iconActionBlock = { [weak self] image in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: PunctuateThen.share.userFillInfoMode.authImage = image
            PunctuateThen.share.userFillInfoMode.authImage = image
            //: self.params["authPic"] = image.jpegData(compressionQuality: 1)
            self.params[(String(const_frameFormat.suffix(7)))] = image.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.paradigm()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    //: @objc private func skipButtonClick() {
    @objc private func fail() {
        // 埋点
        //: let eventID = "\(click_registration_information3_skipBTN)_\(PunctuateThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(userScreenName)_\(PunctuateThen.share.userFillInfoMode.sex == TopComparable.male.rawValue ? String(bytes: user_toTitle.map{numberimateData(view: $0)}, encoding: .utf8)! : (String(userListStr)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        const_screenFormat.occurrenceIn(eventID: eventID)

        //: params.removeValue(forKey: "authPic")
        params.removeValue(forKey: (String(const_frameFormat.suffix(7))))
        //: finishBtnClick(isSkip: true)
        passOver(isSkip: true)
    }

    //: @objc private func finishBtnClick(isSkip: Bool = false) {
    @objc private func passOver(isSkip: Bool = false) {
        // 埋点
        //: if isSkip == false {
        if isSkip == false {
            //: let eventID = "\(click_registration_information3_finishBTN)_\(PunctuateThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
            let eventID = "\(main_bottomText)_\(PunctuateThen.share.userFillInfoMode.sex == TopComparable.male.rawValue ? String(bytes: user_toTitle.map{numberimateData(view: $0)}, encoding: .utf8)! : (String(userListStr)))"
            //: uploadRecord.uploadRecordEvent(eventID: eventID)
            const_screenFormat.occurrenceIn(eventID: eventID)
        }

        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
        ComponentRequestTool.view(params: params) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: if succeed {
            if succeed {
                // 发送通知
                //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                NotificationCenter.default.post(name: notiEnvironmentPath, object: nil, userInfo: result as! [String: Any])
                // 注册成功埋点
                //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                ExamineThen.share.sendData(key: (String(kPushValue.prefix(5)) + "terS" + user_contentData.replacingOccurrences(of: "make", with: "cc")))
                //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                PanStartAnalyticsManager.share.windowContent(name: (String(kPushValue.prefix(5)) + "terS" + user_contentData.replacingOccurrences(of: "make", with: "cc")))

                //: if PunctuateThen.share.loginUserMode.remindBindEmail == true {
                if PunctuateThen.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: RangePushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                        RangePushManager.share.magnitudeSharedDorsalVertebra(isShowBack: false)
                    }
                }
            }
        }
    }
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension DrunkReactiveCompatible {
    //: func setupSubviews() {
    func report() {
        //: self.view.addSubview(converLB)
        self.view.addSubview(converLB)
        //: self.view.addSubview(converImag)
        self.view.addSubview(converImag)
        //: self.view.addSubview(converBtn)
        self.view.addSubview(converBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
        //: self.view.addSubview(skipButton)
        self.view.addSubview(skipButton)
//        self.view.addSubview(skipTipLabel)
    }

    //: func setupSubViewsConstraint() {
    func modify() {
        //: converLB.snp.makeConstraints { make in
        converLB.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: converImag.snp.makeConstraints { make in
        converImag.snp.makeConstraints { make in
            //: make.top.equalTo(converLB.snp.bottom).offset(20)
            make.top.equalTo(converLB.snp.bottom).offset(20)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
            //: make.size.equalTo(125)
            make.size.equalTo(125)
        }
        //: converBtn.snp.makeConstraints { make in
        converBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converImag.snp.bottom).offset(9)
            make.top.equalTo(converImag.snp.bottom).offset(9)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converBtn.snp.bottom).offset(40)
            make.top.equalTo(converBtn.snp.bottom).offset(40)
            //: make.height.equalTo(51)
            make.height.equalTo(51)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(finishBtn.snp.bottom).offset(20)
            make.top.equalTo(finishBtn.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 50, height: 18))
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
//        skipTipLabel.snp.makeConstraints { make in
//            make.bottom.equalTo(skipButton.snp.top).offset(-15)
//            make.centerX.equalToSuperview()
//            make.width.equalTo(ScreenWidth-60)
//        }
    }
}
