
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_itemName:[UInt8] = [0x88,0x8f,0x88,0x95,0xc9,0x82,0x8e,0x85,0x84,0x93,0xdb,0xc8,0xc1,0x89,0x80,0x92,0xc1,0x8f,0x8e,0x95,0xc1,0x83,0x84,0x84,0x8f,0xc1,0x88,0x8c,0x91,0x8d,0x84,0x8c,0x84,0x8f,0x95,0x84,0x85]

/*: "icon_cover_toast" :*/
fileprivate let main_succeedThoughtName:[Character] = ["i","c","o","n","_","c"]
fileprivate let dataExceptName:[Character] = ["o","v","e","r"]
fileprivate let k_dismissId:String = "cover container_toast"

/*: "OK" :*/
fileprivate let showViewTitle:[Character] = ["O","K"]

/*: "Not for now" :*/
fileprivate let data_cookieTitle:String = "Not fif model var self"
fileprivate let kImageButtonText:String = "deadline"

/*: "Turn on" :*/
fileprivate let userReasonMsg:String = "kind"
fileprivate let user_timeId:String = "open success varurn on"

/*: "Live Certification off" :*/
fileprivate let user_scaleStr:[Character] = ["L"]
fileprivate let userShowMsg:String = "ive lab deal"
fileprivate let data_giftValue:String = "ICATI"

/*: "Please make sure your face is always in the video screen" :*/
fileprivate let app_collectName:[UInt8] = [0x6e,0x65,0x65,0x72,0x63,0x73,0x20,0x6f,0x65,0x64,0x69,0x76,0x20,0x65,0x68,0x74,0x20,0x6e,0x69,0x20,0x73,0x79,0x61,0x77,0x6c,0x61,0x20,0x73,0x69,0x20,0x65,0x63,0x61,0x66,0x20,0x72,0x75,0x6f,0x79,0x20,0x65,0x72,0x75,0x73,0x20,0x65,0x6b,0x61,0x6d,0x20,0x65,0x73,0x61,0x65,0x6c,0x50]

/*: "Current network unavailable" :*/
fileprivate let dataCenterId:[Character] = ["C","u","r","r","e","n","t"," ","n","e","t"]
fileprivate let app_sizeToCellValue:String = "work let to send event return"
fileprivate let kMakePath:[Character] = ["u","n","a","v","a","i","l","a","b","l","e"]

/*: "Live Reminder" :*/
fileprivate let showFrameId:String = "image equal model statusLive"
fileprivate let data_automaticContent:String = "echeck"

/*: "You haven't used your free video opportunity yet, talk to someone first!" :*/
fileprivate let userViewTitleFormat:[UInt8] = [0x21,0x74,0x73,0x72,0x69,0x66,0x20,0x65,0x6e,0x6f,0x65,0x6d,0x6f,0x73,0x20,0x6f,0x74,0x20,0x6b,0x6c,0x61,0x74,0x20,0x2c,0x74,0x65,0x79,0x20,0x79,0x74,0x69,0x6e,0x75,0x74,0x72,0x6f,0x70,0x70,0x6f,0x20,0x6f,0x65,0x64,0x69,0x76,0x20,0x65,0x65,0x72,0x66,0x20,0x72,0x75,0x6f,0x79,0x20,0x64,0x65,0x73,0x75,0x20,0x74,0x27,0x6e,0x65,0x76,0x61,0x68,0x20,0x75,0x6f,0x59]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LayerSomebodyView.swift
//  AbroadTalking
//
//  Created by young on 2023/6/20.
//

//: import UIKit
import UIKit

//: enum LiveAlertViewType {
enum FileCommonViewType {
    //: case noFace
    case noFace // 无人脸
    //: case noNetwork
    case noNetwork // 无网络
    //: case turnOnLive
    case turnOnLive // 开播提醒
    //: case freeVideo
    case freeVideo // 免费视频挽留
}

//: class TalkingLiveAlertView: UIView {
class LayerSomebodyView: UIView {
    // 右边按钮点击事件
    //: var rightBlcok: (() -> Void)?
    var rightBlcok: (() -> Void)?

    //: private var popView: TalkingPopView?
    private var popView: UserModelReactiveCompatible?
    //: private var type = LiveAlertViewType.noFace
    private var type = FileCommonViewType.noFace

    //: init(frame: CGRect, type: LiveAlertViewType) {
    init(frame: CGRect, type: FileCommonViewType) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: self.type = type
        self.type = type
        //: setupSubviews()
        separate()
        //: setupSubViewsConstraint()
        countimateConversation()
        //: refreshUI()
        changeUi()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_itemName.map{$0^225}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.BundleImageNamed(name: "icon_cover_toast")
        iamg.image = UIImage.thoughtImageBundleSizeText(name: (String(main_succeedThoughtName) + String(dataExceptName) + String(k_dismissId.suffix(6))))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .toEvent()
        //: lab.font = UIFont.atomic(fontSize: 18)
        lab.font = UIFont.atomic(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .toEvent()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 16)
        lab.font = UIFont.recoverOf(fontSize: 16)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: size), for: .normal)
        btn.setBackgroundImage(UIImage.sinceNext(colors: UIColor.analogDigitalConverterColor(), size: size), for: .normal)
        //: btn.titleLabel?.font = UIFont.atomic(fontSize: 18)
        btn.titleLabel?.font = UIFont.atomic(fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("OK".localized, for: .normal)
        btn.setTitle("OK".localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(timeComponent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var leftBtn: UIButton = {
    private lazy var leftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.titleLabel?.font = UIFont.atomic(fontSize: 16)
        btn.titleLabel?.font = UIFont.atomic(fontSize: 16)
        //: btn.setTitleColor(.appThemeColor(), for: .normal)
        btn.setTitleColor(.readRemove(), for: .normal)
        //: btn.setTitle("Not for now".localized, for: .normal)
        btn.setTitle((String(data_cookieTitle.prefix(5)) + "or no" + kImageButtonText.replacingOccurrences(of: "deadline", with: "w")).localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.readRemove().cgColor
        //: btn.addTarget(self, action: #selector(leftButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(numberClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .appThemeColor()
        btn.backgroundColor = .readRemove()
        //: btn.titleLabel?.font = UIFont.atomic(fontSize: 16)
        btn.titleLabel?.font = UIFont.atomic(fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Turn on".localized, for: .normal)
        btn.setTitle((userReasonMsg.replacingOccurrences(of: "kind", with: "T") + String(user_timeId.suffix(6))).localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(timeComponent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveAlertView {
extension LayerSomebodyView {
    //: func show() {
    func shadowTheme() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = UserModelReactiveCompatible(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.style(view: self)
        //: popView?.showInView(view: PublisherReactiveCompatible.getWindow())
        popView?.hadith(view: PublisherReactiveCompatible.exceptAction())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func atModel() {
        //: popView?.dismissView()
        popView?.conversation()
        //: popView = nil
        popView = nil
    }

    //: @objc private func leftButtonClick() {
    @objc private func numberClick() {
        //: dismiss()
        atModel()
    }

    //: @objc private func rightButtonClick() {
    @objc private func timeComponent() {
        //: dismiss()
        atModel()
        //: rightBlcok?()
        rightBlcok?()
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_: Set<UITouch>, with _: UIEvent?) {
        //: if type != .freeVideo {
        if type != .freeVideo {
            //: dismiss()
            atModel()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveAlertView {
extension LayerSomebodyView {
    // 刷新视图
    //: private func refreshUI() {
    private func changeUi() {
        //: switch (type) {
        switch type {
        //: case .noFace:
        case .noFace:
            //: titleLab.text = "Live Certification off".localized
            titleLab.text = (String(user_scaleStr) + String(userShowMsg.prefix(4)) + "Certif" + data_giftValue.lowercased() + "on off").localized
            //: contentLab.text = "Please make sure your face is always in the video screen".localized
            contentLab.text = String(bytes: app_collectName.reversed(), encoding: .utf8)!.localized

        //: case .noNetwork:
        case .noNetwork:
            //: titleLab.text = "Live Certification off".localized
            titleLab.text = (String(user_scaleStr) + String(userShowMsg.prefix(4)) + "Certif" + data_giftValue.lowercased() + "on off").localized
            //: contentLab.text = "Current network unavailable".localized
            contentLab.text = (String(dataCenterId) + String(app_sizeToCellValue.prefix(5)) + String(kMakePath)).localized

        //: case .turnOnLive:
        case .turnOnLive:
            //: titleLab.text = "Live Reminder".localized
            titleLab.text = (String(showFrameId.suffix(4)) + " Remind" + data_automaticContent.replacingOccurrences(of: "check", with: "r")).localized
            //: contentLab.text = ""
            contentLab.text = ""

        //: case .freeVideo:
        case .freeVideo:
            //: titleLab.text = ""
            titleLab.text = ""
            //: contentLab.text = "You haven't used your free video opportunity yet, talk to someone first!".localized
            contentLab.text = String(bytes: userViewTitleFormat.reversed(), encoding: .utf8)!.localized
        }
    }

    // 添加视图
    //: private func setupSubviews() {
    private func separate() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(contentLab)
        contentView.addSubview(contentLab)
        //: if self.type == .turnOnLive {
        if self.type == .turnOnLive {
            //: contentView.addSubview(leftBtn)
            contentView.addSubview(leftBtn)
            //: contentView.addSubview(rightBtn)
            contentView.addSubview(rightBtn)
            //: } else {
        } else {
            //: contentView.addSubview(closeBtn)
            contentView.addSubview(closeBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func countimateConversation() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(self.snp.centerY).offset(-114)
            make.top.equalTo(self.snp.centerY).offset(-114)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(-39)
            make.top.equalTo(-39)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 101), height: actualWidth(w: 101)))
            make.size.equalTo(CGSize(width: actualWidth(w: 101), height: actualWidth(w: 101)))
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(8)
            make.top.equalTo(topIcon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(10)
            make.top.equalTo(titleLab.snp.bottom).offset(10)
            //: make.centerX.leading.trailing.equalTo(titleLab)
            make.centerX.leading.trailing.equalTo(titleLab)
        }

        //: if self.type == .turnOnLive {
        if self.type == .turnOnLive {
            //: leftBtn.snp.makeConstraints { make in
            leftBtn.snp.makeConstraints { make in
                //: make.top.equalTo(titleLab.snp.bottom).offset(20)
                make.top.equalTo(titleLab.snp.bottom).offset(20)
                //: make.leading.equalTo(13)
                make.leading.equalTo(13)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 130), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: actualWidth(w: 130), height: actualWidth(w: 50)))
            }
            //: rightBtn.snp.makeConstraints { make in
            rightBtn.snp.makeConstraints { make in
                //: make.top.size.equalTo(leftBtn)
                make.top.size.equalTo(leftBtn)
                //: make.trailing.equalTo(-13)
                make.trailing.equalTo(-13)
                //: make.bottom.equalToSuperview().offset(-20)
                make.bottom.equalToSuperview().offset(-20)
            }

            //: } else {
        } else {
            //: closeBtn.snp.makeConstraints { make in
            closeBtn.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.top.equalTo(contentLab.snp.bottom).offset(20)
                make.top.equalTo(contentLab.snp.bottom).offset(20)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
                //: make.bottom.equalToSuperview().offset(-20)
                make.bottom.equalToSuperview().offset(-20)
            }
        }
    }
}
