
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kMakeText:[UInt8] = [0xbc,0xc1,0xbc,0xc7,0x7b,0xb6,0xc2,0xb7,0xb8,0xc5,0x8d,0x7c,0x73,0xbb,0xb4,0xc6,0x73,0xc1,0xc2,0xc7,0x73,0xb5,0xb8,0xb8,0xc1,0x73,0xbc,0xc0,0xc3,0xbf,0xb8,0xc0,0xb8,0xc1,0xc7,0xb8,0xb7]

fileprivate func modelPath(record num: UInt8) -> UInt8 {
    let value = Int(num) + 173
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_cover_toast" :*/
fileprivate let userItemValue:[Character] = ["i","c","o","n","_","c","o","v","e"]
fileprivate let mainWhiteShareMessage:String = "stop"
fileprivate let main_bottomName:String = "app make equal_toast"

/*: "Free video time is over, you can continue to call her if you are interested" :*/
fileprivate let noti_centerName:[UInt8] = [0xed,0xd9,0xce,0xce,0x8b,0xdd,0xc2,0xcf,0xce,0xc4,0x8b,0xdf,0xc2,0xc6,0xce,0x8b,0xc2,0xd8,0x8b,0xc4,0xdd,0xce,0xd9,0x87,0x8b,0xd2,0xc4,0xde,0x8b,0xc8,0xca,0xc5,0x8b,0xc8,0xc4,0xc5,0xdf,0xc2,0xc5,0xde,0xce,0x8b,0xdf,0xc4,0x8b,0xc8,0xca,0xc7,0xc7,0x8b,0xc3,0xce,0xd9,0x8b,0xc2,0xcd,0x8b,0xd2,0xc4,0xde,0x8b,0xca,0xd9,0xce,0x8b,0xc2,0xc5,0xdf,0xce,0xd9,0xce,0xd8,0xdf,0xce,0xcf]

private func videoMain(lab num: UInt8) -> UInt8 {
    return num ^ 171
}

/*: "#34C759" :*/
fileprivate let main_bottomKey:[Character] = ["#","3","4","C","7","5","9"]

/*: "icon_match_stopcall_pop" :*/
fileprivate let appPartyDirectionMsg:String = "modelon"
fileprivate let userCornerContent:String = "any leadingh_stop"
fileprivate let noti_ageViewName:String = "CALL"

/*: "icon_lounge_big" :*/
fileprivate let constSendRefreshFormatName:[Character] = ["i","c","o","n","_","l","o","u","n","g","e","_","b","i","g"]

/*: "#AB57F6" :*/
fileprivate let showHeadKey:String = "#AB57F6cur title layer equal invite"

/*: "#FC57B7" :*/
fileprivate let app_cellMessage:String = "builder instance appear#FC57B"
fileprivate let kBurnFactorFromMessage:String = "7"

/*: "#FE9074" :*/
fileprivate let notiGenerateTextName:[Character] = ["#","F","E","9","0","7","4"]

/*: "Maybe next time" :*/
fileprivate let userAtPushKey:[Character] = ["M","a","y","b","e"," ","n","e","x","t"," ","t","i","m"]
fileprivate let kMiniStr:[Character] = ["e"]

/*: "type" :*/
fileprivate let showAppId:[UInt8] = [0xb7,0xba,0xb3,0xa6]

private func makeManager(tap num: UInt8) -> UInt8 {
    return num ^ 195
}

/*: "toUid" :*/
fileprivate let app_labelData:[Character] = ["t","o","U","i","d"]

/*: "uid" :*/
fileprivate let dataBackgroundName:[UInt8] = [0x6d,0x71,0x7c]

private func sizeSelf(to num: UInt8) -> UInt8 {
    return num ^ 24
}

/*: "fromFreeCall" :*/
fileprivate let data_listButtonMessage:String = "in photo self gift makefromF"

/*: "cmd" :*/
fileprivate let notiIconName:[UInt8] = [0x27,0x29,0x20]

/*: "requestCall" :*/
fileprivate let constHeadDitMsg:String = "REQUEST"
fileprivate let noti_dismissTitle:[Character] = ["C","a","l","l"]

/*: "data" :*/
fileprivate let main_messageData:[UInt8] = [0x61,0x74,0x61,0x64]

/*: "originalFee" :*/
fileprivate let app_labColorFormat:String = "orindexgindexn"
fileprivate let const_kitCameraStr:[Character] = ["a","l","F","e","e"]

/*: "VIPFee" :*/
fileprivate let const_miniStr:String = "VIPFemake leading"
fileprivate let dataViewUrl:String = "E"

/*: "freeCallTimes" :*/
fileprivate let user_frontTitleKey:[Character] = ["f","r","e","e","C","a","l","l","T","i","m","e"]
fileprivate let dataLeadingTitle:String = "manager"

/*: "onRequestCall" :*/
fileprivate let main_reKey:String = "bottom elseonReq"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewObjectProtocol.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingFreeStopCallPopUpView: UIView {
class ViewObjectProtocol: UIView {
    //: var popView: TalkingPopView?
    var popView: UserModelReactiveCompatible?
    //: var data = [String: Any]()
    var data = [String: Any]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        observerObject()
        //: setupSubViewsConstraint()
        resumeConstraint()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kMakeText.map{modelPath(record: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.errorDelegate = nil
        WrittenRecordSocketDelegate.shared.errorDelegate = nil
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: lazy var topIcon: UIImageView = {
    lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.BundleImageNamed(name: "icon_cover_toast")
        iamg.image = UIImage.thoughtImageBundleSizeText(name: (String(userItemValue) + mainWhiteShareMessage.replacingOccurrences(of: "stop", with: "r") + String(main_bottomName.suffix(6))))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var inputTView: UITextView = {
    lazy var inputTView: UITextView = {
        //: let textView = UITextView()
        let textView = UITextView()
        //: textView.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        textView.font = UIFont.clickLarge(type: .Regular, fontSize: 16)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.toEvent()
        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textAlignment = .center
        textView.textAlignment = .center
        //: textView.backgroundColor = .clear
        textView.backgroundColor = .clear
        //: textView.isEditable = false
        textView.isEditable = false
        //: textView.text = "Free video time is over, you can continue to call her if you are interested".localized
        textView.text = String(bytes: noti_centerName.map{videoMain(lab: $0)}, encoding: .utf8)!.localized
        //: return textView
        return textView
        //: }()
    }()

    // 原价按钮
    //: private lazy var originalFeeBtn: TalkingButton = {
    private lazy var originalFeeBtn: StartImageButton = {
        //: let btn = TalkingButton()
        let btn = StartImageButton()
        //: btn.setBackgroundColor(color: UIColor(hex: "#34C759")!, forState: .normal)
        btn.lineClick(color: UIColor(hex: (String(main_bottomKey)))!, forState: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_match_stopcall_pop"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (appPartyDirectionMsg.replacingOccurrences(of: "model", with: "ic") + "_matc" + String(userCornerContent.suffix(6)) + noti_ageViewName.lowercased() + "_pop")), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Regular, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(originalFeeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(recapitulation), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // VIP价格
    //: private lazy var vipFeeBtn: TalkingButton = {
    private lazy var vipFeeBtn: StartImageButton = {
        //: let btn = TalkingButton()
        let btn = StartImageButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_lounge_big"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(constSendRefreshFormatName))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.verticalAlignImageAndTitleWith(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        btn.digitiserActive(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: let colors = [UIColor(hex: "#AB57F6")!.cgColor, UIColor(hex: "#FC57B7")!.cgColor, UIColor(hex: "#FE9074")!.cgColor]
        let colors = [UIColor(hex: (String(showHeadKey.prefix(7))))!.cgColor, UIColor(hex: (String(app_cellMessage.suffix(6)) + kBurnFactorFromMessage.capitalized))!.cgColor, UIColor(hex: (String(notiGenerateTextName)))!.cgColor]
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        btn.setBackgroundImage(UIImage.sinceNext(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(maleVipPriceButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(littler), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let attributes = [.foregroundColor: UIColor.appValueDetailColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.hockeyPlayer(), .font: UIFont.clickLarge(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Maybe next time".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(userAtPushKey) + String(kMiniStr)).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(groupSnap), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFreeStopCallPopUpView {
extension ViewObjectProtocol {
    /// 原价按钮拨打事件
    //: @objc func originalFeeButtonClick() {
    @objc func recapitulation() {
        //: let type = self.data["type"] as? Int ?? -1
        let type = self.data[String(bytes: showAppId.map{makeManager(tap: $0)}, encoding: .utf8)!] as? Int ?? -1
        //: let toUid = self.data["toUid"] as? String ?? ""
        let toUid = self.data[(String(app_labelData))] as? String ?? ""

        //: var data: [String: Any] = ["type": type,
        var data: [String: Any] = [String(bytes: showAppId.map{makeManager(tap: $0)}, encoding: .utf8)!: type,
                                   //: "uid": toUid]
                                   String(bytes: dataBackgroundName.map{sizeSelf(to: $0)}, encoding: .utf8)!: toUid]
        //: if PunctuateThen.share.loginUserMode.freeCallTimes > 0, PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue {
        if PunctuateThen.share.loginUserMode.freeCallTimes > 0, PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(data_listButtonMessage.suffix(5)) + "reeCall"))
            //: TalkingSocketManager.shared.isFreeCall = true
            WrittenRecordSocketDelegate.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: notiIconName.map{$0^68}, encoding: .utf8)!: (constHeadDitMsg.lowercased() + String(noti_dismissTitle)), String(bytes: main_messageData.reversed(), encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        WrittenRecordSocketDelegate.shared.belowAdd(info: info)
        //: TalkingSocketManager.shared.errorDelegate = self
        WrittenRecordSocketDelegate.shared.errorDelegate = self
        //: dismiss()
        textDismiss()
    }

    /// 关闭按钮点击事件
    //: @objc func closeBtnClick() {
    @objc func groupSnap() {
        //: dismiss()
        textDismiss()
    }

    /// 展示
    //: func show() {
    func toBlock() {
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = UserModelReactiveCompatible(frame: UIScreen.main.bounds)
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle)
        //: popView?.initWithView(view: self)
        popView?.style(view: self)
        //: popView?.showInView(view: PublisherReactiveCompatible.getWindow())
        popView?.hadith(view: PublisherReactiveCompatible.exceptAction())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func textDismiss() {
        //: popView?.dismissView()
        popView?.conversation()
        //: popView = nil
        popView = nil
    }

    /// 更新数据
    //: func setShowData(data: [String: Any]) {
    func selectCell(data: [String: Any]) {
        //: self.data = data
        self.data = data
        //: let originalFee = data["originalFee"] as? Int ?? 0
        let originalFee = data[(app_labColorFormat.replacingOccurrences(of: "index", with: "i") + String(const_kitCameraStr))] as? Int ?? 0
        //: let vipFee = data["VIPFee"] as? Int ?? 0
        let vipFee = data[(String(const_miniStr.prefix(5)) + dataViewUrl.lowercased())] as? Int ?? 0
        //: let freeCallTimes = data["freeCallTimes"] as? Int
        let freeCallTimes = data[(String(user_frontTitleKey) + dataLeadingTitle.replacingOccurrences(of: "manager", with: "s"))] as? Int
        //: PunctuateThen.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        PunctuateThen.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        //: originalFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee), for: .normal)
        originalFeeBtn.setTitle(String.sitDownCommitPoundage(originalFee: originalFee), for: .normal)
        //: vipFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee, vipFee: vipFee), for: .normal)
        vipFeeBtn.setTitle(String.sitDownCommitPoundage(originalFee: originalFee, vipFee: vipFee), for: .normal)
        //: updateSubViewsConstraint()
        deleteDismiss()
    }

    /// 男性侧vip价格按钮点击事件
    //: @objc private func maleVipPriceButtonClick() {
    @objc private func littler() {
        //: guard PunctuateThen.share.loginUserMode.loungePlus else {
        guard PunctuateThen.share.loginUserMode.loungePlus else {
            // 非会员 && 默认模式
            //: if PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue {
            if PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue {
                //: RangePushManager.share.func__pushToSubscribeAlert()
                RangePushManager.share.quantityernalRepresentation()
            }
            //: dismiss()
            textDismiss()
            //: return
            return
        }

        //: originalFeeButtonClick()
        recapitulation()
    }
}

// MARK: - SendToErrorDelegate

//: extension TalkingFreeStopCallPopUpView: TalkingSocketManagerErrorDelegate {
extension ViewObjectProtocol: SendToErrorDelegate {
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func nameUseData(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(main_reKey.suffix(5)) + "uestCall") {
            //: func__showStatusBarErrorMsg(showMsg: msg)
            drawObserver(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == ColorMirrorPath.MoneyLack.rawValue {
                //: guard PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue else { return }
                //: RangePushManager.share.func__jumpToWebRecharge(clickEvent: clickFreepopupButton, sufficient: false)
                RangePushManager.share.picParams(clickEvent: show_lessMessage, sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingFreeStopCallPopUpView {
extension ViewObjectProtocol {
    /// 更新约束
    //: private func updateSubViewsConstraint() {
    private func deleteDismiss() {
        //: if PunctuateThen.share.loginUserMode.loungePlus {
        if PunctuateThen.share.loginUserMode.loungePlus {
            //: originalFeeBtn.isHidden = true
            originalFeeBtn.isHidden = true
            //: contentView.snp.updateConstraints { make in
            contentView.snp.updateConstraints { make in
                //: make.height.equalTo(actualWidth(w: 255))
                make.height.equalTo(actualWidth(w: 255))
            }
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func observerObject() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(inputTView)
        contentView.addSubview(inputTView)
        //: contentView.addSubview(originalFeeBtn)
        contentView.addSubview(originalFeeBtn)
        //: contentView.addSubview(vipFeeBtn)
        contentView.addSubview(vipFeeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func resumeConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(actualWidth(w: 297))
            make.width.equalTo(actualWidth(w: 297))
            //: make.height.equalTo(actualWidth(w: 329))
            make.height.equalTo(actualWidth(w: 329))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(actualWidth(w: -43))
            make.top.equalTo(actualWidth(w: -43))
            //: make.width.height.equalTo(actualWidth(w: 101))
            make.width.height.equalTo(actualWidth(w: 101))
        }

        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom)
            make.top.equalTo(topIcon.snp.bottom)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.height.equalTo(actualWidth(w: 103))
            make.height.equalTo(actualWidth(w: 103))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(actualWidth(w: -20))
            make.bottom.equalTo(actualWidth(w: -20))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: vipFeeBtn.snp.makeConstraints { make in
        vipFeeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            //: make.width.equalTo(actualWidth(w: 257))
            make.width.equalTo(actualWidth(w: 257))
            //: make.height.equalTo(actualWidth(w: 54))
            make.height.equalTo(actualWidth(w: 54))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: originalFeeBtn.snp.makeConstraints { make in
        originalFeeBtn.snp.makeConstraints { make in
            //: make.centerX.width.height.equalTo(vipFeeBtn)
            make.centerX.width.height.equalTo(vipFeeBtn)
            //: make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
            make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
        }
    }
}
