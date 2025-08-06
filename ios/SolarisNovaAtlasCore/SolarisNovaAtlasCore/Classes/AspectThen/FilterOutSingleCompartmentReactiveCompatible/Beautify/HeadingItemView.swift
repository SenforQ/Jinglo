
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_effectStr:[UInt8] = [0x88,0x8f,0x88,0x95,0xc9,0x82,0x8e,0x85,0x84,0x93,0xdb,0xc8,0xc1,0x89,0x80,0x92,0xc1,0x8f,0x8e,0x95,0xc1,0x83,0x84,0x84,0x8f,0xc1,0x88,0x8c,0x91,0x8d,0x84,0x8c,0x84,0x8f,0x95,0x84,0x85]

private func fragmentVoice(index num: UInt8) -> UInt8 {
    return num ^ 225
}

/*: "icon_cz_nor" :*/
fileprivate let k_contentTabMessage:String = "icdevice"
fileprivate let constFormatName:String = "app data normal sibling countn_cz_nor"

/*: "Face" :*/
fileprivate let k_textContent:String = "class index mFace"

/*: "Eyes" :*/
fileprivate let main_whiteId:String = "Eyesimport length tag"

/*: "Nose" :*/
fileprivate let noti_labModelLetPath:[Character] = ["N","o","s","e"]

/*: "Lip" :*/
fileprivate let mainValueName:[Character] = ["L","i","p"]

/*: "Filter" :*/
fileprivate let app_giftTitle:String = "Filtercenter to video"

/*: "#C3BDB9" :*/
fileprivate let app_messageId:String = "normal"
fileprivate let userValueMessage:[Character] = ["C","3","B","D","B","9"]

/*: "Restore to default Beautify Settings" :*/
fileprivate let constAtKey:[UInt8] = [0x73,0x67,0x6e,0x69,0x74,0x74,0x65,0x53,0x20,0x79,0x66,0x69,0x74,0x75,0x61,0x65,0x42,0x20,0x74,0x6c,0x75,0x61,0x66,0x65,0x64,0x20,0x6f,0x74,0x20,0x65,0x72,0x6f,0x74,0x73,0x65,0x52]

/*: "Cancel" :*/
fileprivate let app_currentName:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let showHiddenStr:String = "ok"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HeadingItemView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

//: import UIKit
import UIKit

//: @objc public enum BeautyItemType: Int {
@objc public enum ViewKeyRepresentable: Int {
    //: case Face = 100
    case Face = 100 /// 脸部
    //: case Eyes = 101
    case Eyes = 101 /// 眼部
    //: case Nose = 102
    case Nose = 102 /// 鼻部
    //: case Lip = 103
    case Lip = 103 /// 嘴部

    //: case Filter = 104
    case Filter = 104 /// 滤镜
}

//: @objc protocol STBeautyTopItemViewDelegate: NSObjectProtocol {
@objc protocol TopForefrontPortionBeautyObjectProtocol: NSObjectProtocol {
    ///
    //: @objc func changeTopItem(senderTag: Int)
    @objc func ticket(senderTag: Int)
    //: @objc func ResetBeauty()
    @objc func cannulate()
}

//: class STBeautyTopItemView: UIView {
class HeadingItemView: UIView {
    //: var selectButton = UIButton.init()
    var selectButton = UIButton()

    //: var delegate: STBeautyTopItemViewDelegate?
    var delegate: TopForefrontPortionBeautyObjectProtocol?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_effectStr.map{fragmentVoice(index: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        roseWindow()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var sliderView: UIView = {
    private lazy var sliderView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var resetBtn: UIButton = {
    private lazy var resetBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_cz_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (k_contentTabMessage.replacingOccurrences(of: "device", with: "o") + String(constFormatName.suffix(8)))), for: .normal)
        //: btn.addTarget(self, action: #selector(resetBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(isDismiss), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension STBeautyTopItemView {
extension HeadingItemView {
    //: func setupSubviews() {
    func roseWindow() {
        //: self.addSubview(sliderView)
        self.addSubview(sliderView)
        //: sliderView.bounds = CGRect(x: 0, y: 0, width: 10, height: 2)
        sliderView.bounds = CGRect(x: 0, y: 0, width: 10, height: 2)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: let items = ["Face", "Eyes", "Nose", "Lip", "Filter"]
        let items = [(String(k_textContent.suffix(4))), (String(main_whiteId.prefix(4))), (String(noti_labModelLetPath)), (String(mainValueName)), (String(app_giftTitle.prefix(6)))]
        //: var tag = BeautyItemType.Face.rawValue
        var tag = ViewKeyRepresentable.Face.rawValue
        //: let buttonW = 56
        let buttonW = 56
        //: var buttonX = 6
        var buttonX = 6
        //: for (i, item) in items.enumerated() {
        for (i, item) in items.enumerated() {
            //: let itemButton = creatButton(item: item.localized, type: tag)
            let itemButton = listCell(item: item.localized, type: tag)
            //: self.addSubview(itemButton)
            self.addSubview(itemButton)
            //: itemButton.snp.makeConstraints { make in
            itemButton.snp.makeConstraints { make in
                //: make.leading.equalTo(buttonX)
                make.leading.equalTo(buttonX)
                //: make.top.equalToSuperview()
                make.top.equalToSuperview()
                //: make.width.equalTo(buttonW)
                make.width.equalTo(buttonW)
                //: make.height.equalTo(50)
                make.height.equalTo(50)
            }
            //: itemButton.layoutIfNeeded()
            itemButton.layoutIfNeeded()
            //: buttonX = buttonW + buttonX
            buttonX = buttonW + buttonX
            //: tag += 1
            tag += 1
            //: if i == 0 {
            if i == 0 {
                //: buttonItemChange(sender: itemButton)
                barBy(sender: itemButton)
                //: let startX = LanguageManager.shared.direction == .rightToLeft ? (Int(ScreenWidth)-6-buttonW/2):6+buttonW/2
                let startX = MakeThen.shared.direction == .rightToLeft ? (Int(kQueryValue) - 6 - buttonW / 2) : 6 + buttonW / 2
                //: sliderView.center = CGPoint(x: startX, y: 40)
                sliderView.center = CGPoint(x: startX, y: 40)
            }
        }

        //: self.addSubview(resetBtn)
        self.addSubview(resetBtn)
        //: resetBtn.snp.makeConstraints { make in
        resetBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(ScreenWidth-10-30)
            make.leading.equalTo(kQueryValue - 10 - 30)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
    }

    //: func creatButton(item: String, type: Int) -> UIButton {
    func listCell(item: String, type: Int) -> UIButton {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle(item, for: .normal)
        btn.setTitle(item, for: .normal)
        //: btn.setTitleColor(UIColor.init(hex: "#C3BDB9"), for: .normal)
        btn.setTitleColor(UIColor(hex: (app_messageId.replacingOccurrences(of: "normal", with: "#") + String(userValueMessage))), for: .normal)
        //: btn.setTitleColor(UIColor.white, for: .selected)
        btn.setTitleColor(UIColor.white, for: .selected)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Regular, fontSize: 14)
        //: btn.tag = type
        btn.tag = type
        //: btn.addTarget(self, action: #selector(buttonItemChange(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(barBy(sender:)), for: .touchUpInside)
        //: return btn
        return btn
    }

    //: @objc func buttonItemChange(sender: UIButton) {
    @objc func barBy(sender: UIButton) {
        //: setButtonStatus(sender: sender)
        addSender(sender: sender)
        //: self.delegate?.changeTopItem(senderTag: sender.tag)
        self.delegate?.ticket(senderTag: sender.tag)
    }

    //: func setButtonStatus(sender: UIButton) {
    func addSender(sender: UIButton) {
        //: if sender.isSelected {
        if sender.isSelected {
            //: return
            return
        }
        //: self.selectButton.titleLabel?.font = UIFont.pingfangFont(type: .Semibold, fontSize: 14)
        self.selectButton.titleLabel?.font = UIFont.clickLarge(type: .Semibold, fontSize: 14)
        //: self.selectButton.isSelected = false
        self.selectButton.isSelected = false
        //: sender.isSelected = true
        sender.isSelected = true
        //: self.selectButton = sender
        self.selectButton = sender
        //: if (self.sliderView.superview != nil) {
        if self.sliderView.superview != nil {
            //: UIView.animate(withDuration: 0.25) {
            UIView.animate(withDuration: 0.25) {
                //: self.sliderView.center = CGPoint(x: sender.centerX, y: 40)
                self.sliderView.center = CGPoint(x: sender.centerX, y: 40)
            }
        }
    }

    //: @objc func resetBtnClick() {
    @objc func isDismiss() {
        //: let config = ShowAlertConfig()
        let config = CurtilageAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: config.textFont = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        config.textFont = UIFont.clickLarge(type: .Medium, fontSize: 18)
        //: TalkingAlertShow.customAlert(message: "Restore to default Beautify Settings".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        SizeReactiveCompatible.buttonEnter(message: String(bytes: constAtKey.reversed(), encoding: .utf8)!.localized, leftBtnTitle: (String(app_currentName)).localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            SizeReactiveCompatible.obstruct()
            //: }, rightBlock: { [weak self] in
        }, rightBlock: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: TalkingAlertShow.hideAlert()
            SizeReactiveCompatible.obstruct()
            //: let btn: UIButton =  self.viewWithTag(BeautyItemType.Face.rawValue) as! UIButton
            let btn: UIButton = self.viewWithTag(ViewKeyRepresentable.Face.rawValue) as! UIButton
            //: self.buttonItemChange(sender: btn)
            self.barBy(sender: btn)
            //: self.delegate?.ResetBeauty()
            self.delegate?.cannulate()
            //: }, config: config)
        }, config: config)
    }
}
