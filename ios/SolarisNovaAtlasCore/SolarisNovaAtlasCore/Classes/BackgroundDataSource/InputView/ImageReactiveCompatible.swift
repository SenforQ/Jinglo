
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_perspectiveInfoTargetPath:[UInt8] = [0xdb,0xdc,0xdb,0xc6,0x9a,0xd1,0xdd,0xd6,0xd7,0xc0,0x88,0x9b,0x92,0xda,0xd3,0xc1,0x92,0xdc,0xdd,0xc6,0x92,0xd0,0xd7,0xd7,0xdc,0x92,0xdb,0xdf,0xc2,0xde,0xd7,0xdf,0xd7,0xdc,0xc6,0xd7,0xd6]

private func polePosition(white num: UInt8) -> UInt8 {
    return num ^ 178
}

/*: "Translation" :*/
fileprivate let noti_pricePath:[Character] = ["T","r","a","n"]
fileprivate let showBagId:String = "slatierror"

/*: "icon_translation_close" :*/
fileprivate let noti_userNameColorData:String = "icon_self clear self"
fileprivate let user_rawValue:String = "ATION"

/*: "Send" :*/
fileprivate let notiFrameGiftFormat:String = "actual sharedSend"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/7/4.
//

//: import UIKit
import UIKit

//: class TalkingTranslationResultView: UIView {
class ImageReactiveCompatible: UIView {
    // 翻译结果发送Block
    //: var sendBlock: ((_ text: String) -> Void)?
    var sendBlock: ((_ text: String) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: backgroundColor = .white
        backgroundColor = .white
        //: setupSubviews()
        infoCell()
        //: setupSubViewsConstraint()
        alongPush()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_perspectiveInfoTargetPath.map{polePosition(white: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .clickLarge(type: .Medium, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .toEvent()
        //: label.text = "Translation".localized
        label.text = (String(noti_pricePath) + showBagId.replacingOccurrences(of: "error", with: "on")).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.BundleImageNamed(name: "icon_translation_close")
        let img = UIImage.thoughtImageBundleSizeText(name: (String(noti_userNameColorData.prefix(5)) + "transl" + user_rawValue.lowercased() + "_close"))
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(level), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var sendBtn: UIButton = {
    private lazy var sendBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.atomic(fontSize: 16)
        btn.titleLabel?.font = UIFont.atomic(fontSize: 16)
        //: btn .setTitle("Send".localized, for: .normal)
        btn.setTitle((String(notiFrameGiftFormat.suffix(4))).localized, for: .normal)
        //: btn .setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: let size = CGSize(width: 66, height: 30)
        let size = CGSize(width: 66, height: 30)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: size), for: .normal)
        btn.setBackgroundImage(UIImage.sinceNext(colors: UIColor.analogDigitalConverterColor(), size: size), for: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(sendButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(keyClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var textView: UITextView = {
    private lazy var textView: UITextView = {
        //: let v = UITextView()
        let v = UITextView()
        //: v.font = UIFont.pingfangRugularFont(fontSize: 16)
        v.font = UIFont.recoverOf(fontSize: 16)
        //: v.textColor = .appTitleColor()
        v.textColor = .toEvent()
        //: v.isEditable = false
        v.isEditable = false
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTranslationResultView {
extension ImageReactiveCompatible {
    /// 展示翻译结果视图
    /// - Parameter text: 翻译内容
    //: func showTranslationResultView(_ text: String) {
    func format(_ text: String) {
        //: guard text.count > 0 else { return }
        guard text.count > 0 else { return }
        //: self.isHidden = false
        self.isHidden = false
        //: self.textView.text = text
        self.textView.text = text
    }

    /// 关闭按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func level() {
        //: self.isHidden = true
        self.isHidden = true
    }

    /// 发送按钮点击事件
    //: @objc private func sendButtonClick() {
    @objc private func keyClick() {
        //: closeButtonClick()
        level()
        //: self.sendBlock?(self.textView.text)
        self.sendBlock?(self.textView.text)
    }
}

// MARK: - Layout

//: extension TalkingTranslationResultView {
extension ImageReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func infoCell() {
        //: self.addSubview(titleLab)
        self.addSubview(titleLab)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
        //: self.addSubview(sendBtn)
        self.addSubview(sendBtn)
        //: self.addSubview(textView)
        self.addSubview(textView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func alongPush() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(18)
            make.top.equalTo(18)
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(5)
            make.leading.equalTo(5)
            //: make.centerY.equalTo(titleLab)
            make.centerY.equalTo(titleLab)
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }

        //: sendBtn.snp.makeConstraints { make in
        sendBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalTo(titleLab)
            make.centerY.equalTo(titleLab)
            //: make.size.equalTo(CGSize(width: 66, height: 30))
            make.size.equalTo(CGSize(width: 66, height: 30))
        }

        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.top.equalTo(sendBtn.snp.bottom).offset(20)
            make.top.equalTo(sendBtn.snp.bottom).offset(20)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
            //: make.bottom.equalToSuperview().offset(-10-kDeviceSafeBottomHeight)
            make.bottom.equalToSuperview().offset(-10 - k_netId)
        }
    }
}
