
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiMakeValue:[UInt8] = [0x8e,0x89,0x8e,0x93,0xcf,0x84,0x88,0x83,0x82,0x95,0xdd,0xce,0xc7,0x8f,0x86,0x94,0xc7,0x89,0x88,0x93,0xc7,0x85,0x82,0x82,0x89,0xc7,0x8e,0x8a,0x97,0x8b,0x82,0x8a,0x82,0x89,0x93,0x82,0x83]

private func equalLarge(array num: UInt8) -> UInt8 {
    return num ^ 231
}

/*: "#45003A" :*/
fileprivate let noti_playerMessage:String = "#4voice003"
fileprivate let show_blockMessage:[Character] = ["A"]

/*: "#2D0059" :*/
fileprivate let show_imageCellValue:[Character] = ["#","2","D","0","0"]
fileprivate let k_selectedPath:[Character] = ["5","9"]

/*: "party_close_btn" :*/
fileprivate let show_myMsg:[Character] = ["p","a","r","t","y","_","c","l","o","s","e","_","b"]
fileprivate let app_managerStr:String = "tfirst"

/*: "btn_party_minimal_nor" :*/
fileprivate let noti_toId:String = "hidden view actualbtn_p"
fileprivate let data_showPath:[Character] = ["a","r","t","y","_","m","i","n","i","m"]
fileprivate let k_videoPath:String = "i if topal_nor"

/*: "Minimal" :*/
fileprivate let show_userMessage:[Character] = ["M","i","n","i","m","a","l"]

/*: "btn_party_quit_nor" :*/
fileprivate let app_layerUrl:String = "btn_data load else indicator progress"
fileprivate let k_tableMemberPath:String = "interaction background user viewuit_nor"

/*: "Quit" :*/
fileprivate let data_modelFormat:String = "var filter statusQuit"

/*: "btn_party_close_nor" :*/
fileprivate let app_makeImageValue:[Character] = ["b"]
fileprivate let userTitlePath:String = "tn_paplay image data lab bottom"
fileprivate let user_windowTitle:String = "ose_norframe intimate indicator path"

/*: "Close" :*/
fileprivate let kRequestName:[Character] = ["C","l","o","s","e"]

/*: "Do you want to close the room? After closing the room, all users will be removed from the room." :*/
fileprivate let data_zoneId:[UInt8] = [0xe6,0xcd,0x82,0xdb,0xcd,0xd7,0x82,0xd5,0xc3,0xcc,0xd6,0x82,0xd6,0xcd,0x82,0xc1,0xce,0xcd,0xd1,0xc7,0x82,0xd6,0xca,0xc7,0x82,0xd0,0xcd,0xcd,0xcf,0x9d,0x82,0xe3,0xc4,0xd6,0xc7,0xd0,0x82,0xc1,0xce,0xcd,0xd1,0xcb,0xcc,0xc5,0x82,0xd6,0xca,0xc7,0x82,0xd0,0xcd,0xcd,0xcf,0x8e,0x82,0xc3,0xce,0xce,0x82,0xd7,0xd1,0xc7,0xd0,0xd1,0x82,0xd5,0xcb,0xce,0xce,0x82,0xc0,0xc7,0x82,0xd0,0xc7,0xcf,0xcd,0xd4,0xc7,0xc6,0x82,0xc4,0xd0,0xcd,0xcf,0x82,0xd6,0xca,0xc7,0x82,0xd0,0xcd,0xcd,0xcf,0x8c]

private func insideQuote(key num: UInt8) -> UInt8 {
    return num ^ 162
}

/*: "Cancel" :*/
fileprivate let main_contentNameMessage:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let showKitThanModelUrl:String = "gift"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GestureView.swift
//  SolarisNovaAtlasCore
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomCloseView: UIView {
class GestureView: UIView {
    /// 是否是主播
    //: private let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == PunctuateThen.share.loginUid)
    private let isAnchor = (String(RangeManager.universalShared().partyModel.streamerInfo.uid) == PunctuateThen.share.loginUid)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        inviteSubviews()
        //: setupSubViewsConstraint()
        picture()
        //: addNotifications()
        tillImage()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiMakeValue.map{equalLarge(array: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var gradientLayer: CAGradientLayer = {
    private lazy var gradientLayer: CAGradientLayer = {
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        layer.frame = CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [
        layer.colors = [
            //: UIColor(hex: "#45003A")!.withAlphaComponent(0.9).cgColor,
            UIColor(hex: (noti_playerMessage.replacingOccurrences(of: "voice", with: "5") + String(show_blockMessage)))!.withAlphaComponent(0.9).cgColor,
            //: UIColor(hex: "#2D0059")!.withAlphaComponent(0.9).cgColor
            UIColor(hex: (String(show_imageCellValue) + String(k_selectedPath)))!.withAlphaComponent(0.9).cgColor,
        ]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "party_close_btn"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(show_myMsg) + app_managerStr.replacingOccurrences(of: "first", with: "n"))), for: .normal)
        //: btn.addTarget(self, action: #selector(dismiss), for: .touchUpInside)
        btn.addTarget(self, action: #selector(controlBuild), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniBtn: UIButton = {
    private lazy var miniBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_party_minimal_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(noti_toId.suffix(5)) + String(data_showPath) + String(k_videoPath.suffix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(miniButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(generateIcon), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniLab: UILabel = {
    private lazy var miniLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.atomic(fontSize: 17)
        lab.font = UIFont.atomic(fontSize: 17)
        //: lab.text = "Minimal".localized
        lab.text = (String(show_userMessage)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var quitBtn: UIButton = {
    private lazy var quitBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_party_quit_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(app_layerUrl.prefix(4)) + "party_q" + String(k_tableMemberPath.suffix(7)))), for: .normal)
        //: btn.addTarget(self, action: #selector(quitButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(asTap), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var quitLab: UILabel = {
    private lazy var quitLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.atomic(fontSize: 17)
        lab.font = UIFont.atomic(fontSize: 17)
        //: lab.text = "Quit".localized
        lab.text = (String(data_modelFormat.suffix(4))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_party_close_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(app_makeImageValue) + String(userTitlePath.prefix(5)) + "rty_cl" + String(user_windowTitle.prefix(7)))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fixingUser), for: .touchUpInside)
        //: btn.isHidden = !self.isAnchor
        btn.isHidden = !self.isAnchor
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeLab: UILabel = {
    private lazy var closeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.atomic(fontSize: 17)
        lab.font = UIFont.atomic(fontSize: 17)
        //: lab.text = "Close".localized
        lab.text = (String(kRequestName)).localized
        //: lab.isHidden = !self.isAnchor
        lab.isHidden = !self.isAnchor
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomCloseView {
extension GestureView {
    /// 展示视图
    //: func show() {
    func finishView() {
        //: guard self.superview == nil else { return }
        guard self.superview == nil else { return }
        //: PublisherReactiveCompatible.getWindow().addSubview(self)
        PublisherReactiveCompatible.exceptAction().addSubview(self)
    }

    /// 移除视图
    //: @objc func dismiss() {
    @objc func controlBuild() {
        //: guard self.superview != nil else { return }
        guard self.superview != nil else { return }
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    /// 最小化窗口点击事件
    //: @objc private func miniButtonClick() {
    @objc private func generateIcon() {
        //: self.dismiss()
        self.controlBuild()
        //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
        RangeManager.universalShared().finding()
    }

    /// 退出语聊房按钮点击事件
    //: @objc private func quitButtonClick() {
    @objc private func asTap() {
        //: self.dismiss()
        self.controlBuild()
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        RangeManager.universalShared().proposal()
    }

    /// 关闭语聊房按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func fixingUser() {
        //: let config = ShowAlertConfig()
        let config = CurtilageAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: TalkingAlertShow.customAlert(message: "Do you want to close the room? After closing the room, all users will be removed from the room.".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
        SizeReactiveCompatible.buttonEnter(message: String(bytes: data_zoneId.map{insideQuote(key: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(main_contentNameMessage)).localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
            //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
            RangeManager.universalShared().proposal()
            //: TalkingVoiceRoomReqTool.req_voiceRoomClose(roomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
            ResurveyReqTool.proximate(roomId: RangeManager.universalShared().partyModel.roomId)
            //: self.dismiss()
            self.controlBuild()

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomCloseView {
extension GestureView {
    /// 添加视图
    //: private func setupSubviews() {
    private func inviteSubviews() {
        //: self.layer.addSublayer(self.gradientLayer)
        self.layer.addSublayer(self.gradientLayer)
        //: self.addSubview(self.rightBtn)
        self.addSubview(self.rightBtn)
        //: self.addSubview(self.quitBtn)
        self.addSubview(self.quitBtn)
        //: self.addSubview(self.quitLab)
        self.addSubview(self.quitLab)
        //: self.addSubview(self.miniBtn)
        self.addSubview(self.miniBtn)
        //: self.addSubview(self.miniLab)
        self.addSubview(self.miniLab)
        //: self.addSubview(self.closeBtn)
        self.addSubview(self.closeBtn)
        //: self.addSubview(self.closeLab)
        self.addSubview(self.closeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func picture() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle)

        //: self.rightBtn.snp.makeConstraints { make in
        self.rightBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + actualWidth(w: 4))
            make.top.equalTo(constLiveErrorMessage + actualWidth(w: 4))
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }

        //: self.quitBtn.snp.makeConstraints { make in
        self.quitBtn.snp.makeConstraints { make in
            //: if self.isAnchor {
            if self.isAnchor {
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: } else {
            } else {
                //: make.top.equalTo((ScreenHeight + actualWidth(w: 116)) / 2)
                make.top.equalTo((notiKeyTitle + actualWidth(w: 116)) / 2)
            }
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 75))
            make.width.height.equalTo(actualWidth(w: 75))
        }
        //: self.quitLab.snp.makeConstraints { make in
        self.quitLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.miniBtn.snp.makeConstraints { make in
        self.miniBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
            make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
        }
        //: self.miniLab.snp.makeConstraints { make in
        self.miniLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.closeBtn.snp.makeConstraints { make in
        self.closeBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
        }
        //: self.closeLab.snp.makeConstraints { make in
        self.closeLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func tillImage() {
        // 语聊房状态变更
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(dismiss),
                                               selector: #selector(controlBuild),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: const_userFormat,
                                               //: object: nil)
                                               object: nil)
    }
}
