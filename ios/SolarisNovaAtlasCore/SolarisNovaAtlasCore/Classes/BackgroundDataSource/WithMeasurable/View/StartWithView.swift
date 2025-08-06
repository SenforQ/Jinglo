
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let dataCancelObjectPath:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#7166F9" :*/
fileprivate let main_listMakePath:String = "style let touch#7166F9"

/*: "party_seat_mike_close" :*/
fileprivate let dataFieldShowMessage:String = "textar"
fileprivate let appManagerUrl:[Character] = ["t","y","_","s","e","a","t","_","m","i","k","e","_","c","l","o","s","e"]

/*: "party_seat_host" :*/
fileprivate let noti_scaleKey:[Character] = ["p","a","r","t","y","_","s"]
fileprivate let userTargetModelMsg:String = "eat_hostshow not time"

/*: "#FA9D33" :*/
fileprivate let kPlayerContent:String = "row view constraint#FA9D33"

/*: "party_seat_heartvalue" :*/
fileprivate let constGestureKey:[Character] = ["p","a","r","t","y","_"]
fileprivate let noti_appFormat:String = "seat_hetable user"
fileprivate let kRemoveLabValue:[Character] = ["a","r","t","v","a","l","u","e"]

/*: "party_seat_lock" :*/
fileprivate let kLanguageFormat:[UInt8] = [0xba,0xab,0xb8,0xbe,0xb3,0x95,0xb9,0xaf,0xab,0xbe,0x95,0xa6,0xa5,0xa9,0xa1]

private func onTransform(value num: UInt8) -> UInt8 {
    return num ^ 202
}

/*: "party_seat_empty" :*/
fileprivate let show_actionContent:String = "party_selection of"
fileprivate let k_byUrl:String = "seat_leading path model"
fileprivate let k_addTitle:String = "removempty"

/*: "99999+" :*/
fileprivate let show_girlText:[UInt8] = [0x2b,0x39,0x39,0x39,0x39,0x39]

/*: "Unlock" :*/
fileprivate let dataDomainName:String = "u"
fileprivate let showObjectMessage:String = "NLOCK"

/*: "The seat is locked, click on the empty seat to play" :*/
fileprivate let notiRequestData:[UInt8] = [0x79,0x61,0x6c,0x70,0x20,0x6f,0x74,0x20,0x74,0x61,0x65,0x73,0x20,0x79,0x74,0x70,0x6d,0x65,0x20,0x65,0x68,0x74,0x20,0x6e,0x6f,0x20,0x6b,0x63,0x69,0x6c,0x63,0x20,0x2c,0x64,0x65,0x6b,0x63,0x6f,0x6c,0x20,0x73,0x69,0x20,0x74,0x61,0x65,0x73,0x20,0x65,0x68,0x54]

/*: "Under mic" :*/
fileprivate let const_errorTitle:[Character] = ["U","n","d","e"]
fileprivate let k_postFormat:String = "r miccount frame"

/*: _ :*/
fileprivate let notiOfLimitId:String = "_"

/*: "male" :*/
fileprivate let mainViewMessage:[UInt8] = [0xee,0xe2,0xef,0xe6]

private func allowMake(send num: UInt8) -> UInt8 {
    return num ^ 131
}

/*: "female" :*/
fileprivate let constDetailAgentStr:[Character] = ["f","e","m","a","l","e"]

/*: "On mic" :*/
fileprivate let userFrameKey:String = "view"
fileprivate let constRawTitle:[Character] = ["n"," ","m","i","c"]

/*: "Lock" :*/
fileprivate let showInfoUrl:String = "content title intimate requestLock"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StartWithView.swift
//  SolarisNovaAtlasCore
//
//  Created by DouXiu on 2024/9/24.
//

//: import UIKit
import UIKit

/// 当前Item宽高
//: let MikePositionItemView_Size = CGSize(width: (ScreenWidth - 35) / 4, height: actualWidth(w: 102))
let main_videoRateGiftPath = CGSize(width: (kQueryValue - 35) / 4, height: actualWidth(w: 102))

//: class TalkingMikePositionItemView: UIView {
class StartWithView: UIView {
    /// 用户资料卡block
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?
    /// 麦位
    //: private var position = 0
    private var position = 0
    /// 麦位模型
    //: private var itemModel = TalkingMikeListItemModel()
    private var itemModel = WithMeasurable()
    /// 是否正在动画
    //: private var isAnimation = false
    private var isAnimation = false
    /// 1s内最大音浪值
    //: private var maxAmplitude = 0.0
    private var maxAmplitude = 0.0

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        querySubviews()
        //: setupSubViewsConstraint()
        perimeter()
        //: bindInteraction()
        reciprocation()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dataCancelObjectPath.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var animationV1: UIView = {
    private lazy var animationV1: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.15)
        v.backgroundColor = UIColor(hex: (String(main_listMakePath.suffix(7))))?.withAlphaComponent(0.15)
        //: v.layer.cornerRadius = 29
        v.layer.cornerRadius = 29
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var animationV2: UIView = {
    private lazy var animationV2: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.55)
        v.backgroundColor = UIColor(hex: (String(main_listMakePath.suffix(7))))?.withAlphaComponent(0.55)
        //: v.layer.cornerRadius = 25
        v.layer.cornerRadius = 25
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = 25
        v.layer.cornerRadius = 25
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var mikeCloseImgV: UIImageView = {
    private lazy var mikeCloseImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.BundleImageNamed(name: "party_seat_mike_close")
        v.image = UIImage.thoughtImageBundleSizeText(name: (dataFieldShowMessage.replacingOccurrences(of: "text", with: "p") + String(appManagerUrl)))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.spacing = 2
        v.spacing = 2
        //: return v
        return v
        //: }()
    }()

    //: private lazy var houseImgV: UIImageView = {
    private lazy var houseImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.BundleImageNamed(name: "party_seat_host")
        v.image = UIImage.thoughtImageBundleSizeText(name: (String(noti_scaleKey) + String(userTargetModelMsg.prefix(8))))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var seatNumLab: UILabel = {
    private lazy var seatNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FA9D33")
        lab.backgroundColor = UIColor(hex: (String(kPlayerContent.suffix(7))))
        //: lab.font = UIFont.atomic(fontSize: 9)
        lab.font = UIFont.atomic(fontSize: 9)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.layer.cornerRadius = actualWidth(w: 12) / 2
        lab.layer.cornerRadius = actualWidth(w: 12) / 2
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var nickNameLab: UILabel = {
    private lazy var nickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 12)
        lab.font = UIFont.recoverOf(fontSize: 12)
        //: lab.textColor = .white
        lab.textColor = .white
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var heartCoinBtn: TalkingButton = {
    private lazy var heartCoinBtn: StartImageButton = {
        //: let btn = TalkingButton()
        let btn = StartImageButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "party_seat_heartvalue"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(constGestureKey) + String(noti_appFormat.prefix(7)) + String(kRemoveLabValue))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 8)
        btn.titleLabel?.font = .clickLarge(type: .Regular, fontSize: 8)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("0", for: .normal)
        btn.setTitle("0", for: .normal)
        //: btn.spaceBetweenTitleAndImage = 2
        btn.spaceBetweenTitleAndImage = 2
        //: btn.backgroundColor = UIColor.white.withAlphaComponent(0.15)
        btn.backgroundColor = UIColor.white.withAlphaComponent(0.15)
        //: btn.layer.cornerRadius = actualWidth(w: 12) / 2
        btn.layer.cornerRadius = actualWidth(w: 12) / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMikePositionItemView {
extension StartWithView {
    /// 刷新视图
    /// - Parameters:
    ///   - seatNumber: 席位
    ///   - model: 模型
    //: func refreshMikeItemView(_ seatNumber: Int, model: TalkingMikeListItemModel) {
    func establishModel(_ seatNumber: Int, model: WithMeasurable) {
        //: position = seatNumber
        position = seatNumber
        //: itemModel = model
        itemModel = model
        //: seatNumLab.text = "\(seatNumber + 1)"
        seatNumLab.text = "\(seatNumber + 1)"

        //: guard model.posStatus == 0, model.uid > 0 else {
        guard model.posStatus == 0, model.uid > 0 else {
            //: let imgStr = (itemModel.posStatus == 1) ? "party_seat_lock" : "party_seat_empty"
            let imgStr = (itemModel.posStatus == 1) ? String(bytes: kLanguageFormat.map{onTransform(value: $0)}, encoding: .utf8)! : (String(show_actionContent.prefix(6)) + String(k_byUrl.prefix(5)) + k_addTitle.replacingOccurrences(of: "remove", with: "e"))
            //: icon.image = UIImage.BundleImageNamed(name: imgStr)
            icon.image = UIImage.thoughtImageBundleSizeText(name: imgStr)
            //: mikeCloseImgV.isHidden = true
            mikeCloseImgV.isHidden = true
            //: houseImgV.isHidden = true
            houseImgV.isHidden = true
            //: nickNameLab.isHidden = true
            nickNameLab.isHidden = true
            //: heartCoinBtn.isHidden = true
            heartCoinBtn.isHidden = true
            //: return
            return
        }

        // 麦位开启，麦上有人
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 25)))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 25)))]
        //: icon.setUrlImage(urlStr: model.headPic, options: optionsInfo)
        icon.beforeRender(urlStr: model.headPic, options: optionsInfo)
        //: mikeCloseImgV.isHidden = (model.mikeStatus == 2)
        mikeCloseImgV.isHidden = (model.mikeStatus == 2)
        // 是否是主播
        //: houseImgV.isHidden = !(model.uid == TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid)
        houseImgV.isHidden = !(model.uid == RangeManager.universalShared().partyModel.streamerInfo.uid)
        //: nickNameLab.text = model.nickname
        nickNameLab.text = model.nickname
        //: nickNameLab.isHidden = false
        nickNameLab.isHidden = false
        //: let heartValue = (model.coin > 99999) ? "99999+" : String(model.coin)
        let heartValue = (model.coin > 99999) ? String(bytes: show_girlText.reversed(), encoding: .utf8)! : String(model.coin)
        //: heartCoinBtn.setTitle(heartValue, for: .normal)
        heartCoinBtn.setTitle(heartValue, for: .normal)
        //: heartCoinBtn.isHidden = false
        heartCoinBtn.isHidden = false
        //: let width = heartCoinBtn.titleLabel!.text!.size(withAttributes: [.font: heartCoinBtn.titleLabel!.font!]).width + actualWidth(w: 20)
        let width = heartCoinBtn.titleLabel!.text!.size(withAttributes: [.font: heartCoinBtn.titleLabel!.font!]).width + actualWidth(w: 20)
        //: heartCoinBtn.snp.updateConstraints { make in
        heartCoinBtn.snp.updateConstraints { make in
            //: make.width.equalTo(width)
            make.width.equalTo(width)
        }
    }

    /// 麦位点击事件
    //: @objc func tapGestureRecognizer(_ tap: UITapGestureRecognizer) {
    @objc func statusThird(_: UITapGestureRecognizer) {
        // 是否房主
        //: let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == PunctuateThen.share.loginUid)
        let isAnchor = (String(RangeManager.universalShared().partyModel.streamerInfo.uid) == PunctuateThen.share.loginUid)
        //: guard itemModel.posStatus == 0 else {
        guard itemModel.posStatus == 0 else {
            //: if itemModel.posStatus == 1 {
            if itemModel.posStatus == 1 { // 麦位锁定
                //: if isAnchor {
                if isAnchor { // 房主
                    //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                    let vc = SelectReactiveCompatible(frame: UIScreen.main.bounds)
                    //: vc.initwithList(cellTitleList: ["Unlock".localized])
                    vc.fullPhaseOfTheMoon(cellTitleList: [(dataDomainName.uppercased() + showObjectMessage.lowercased()).localized])
                    //: vc.cancelColor = .appTitleColor()
                    vc.cancelColor = .toEvent()
                    //: vc.munuBlock = { [weak self] _, str in
                    vc.munuBlock = { [weak self] _, str in
                        //: guard let self = self else { return }
                        guard let self = self else { return }
                        //: if str == "Unlock".localized {
                        if str == (dataDomainName.uppercased() + showObjectMessage.lowercased()).localized {
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: 0, type: 2, position: position)
                            RangeManager.universalShared().currentTable(uid: 0, type: 2, position: position)
                        }
                    }

                    //: } else {
                } else {
                    //: func__showStatusBarErrorMsg(showMsg: "The seat is locked, click on the empty seat to play".localized)
                    drawObserver(showMsg: String(bytes: notiRequestData.reversed(), encoding: .utf8)!.localized)
                }
            }
            //: return
            return
        }

        // 麦位开启
        //: if itemModel.uid > 0 {
        if itemModel.uid > 0 { // 麦上有人
            //: if String(itemModel.uid) == PunctuateThen.share.loginUid {
            if String(itemModel.uid) == PunctuateThen.share.loginUid { // 点击自己麦位
                // 用户主动下麦
                //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                let vc = SelectReactiveCompatible(frame: UIScreen.main.bounds)
                //: vc.initwithList(cellTitleList: ["Under mic".localized])
                vc.fullPhaseOfTheMoon(cellTitleList: [(String(const_errorTitle) + String(k_postFormat.prefix(5))).localized])
                //: vc.cancelColor = .appTitleColor()
                vc.cancelColor = .toEvent()
                //: vc.munuBlock = { [weak self] _, str in
                vc.munuBlock = { [weak self] _, str in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: if str == "Under mic".localized {
                    if str == (String(const_errorTitle) + String(k_postFormat.prefix(5))).localized {
                        //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 2, position: position)
                        RangeManager.universalShared().red(type: 2, position: position)
                        //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_underMic)_\(PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                        const_screenFormat.occurrenceIn(eventID: "\(userBarMsg)_\(PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue ? String(bytes: mainViewMessage.map{allowMake(send: $0)}, encoding: .utf8)! : (String(constDetailAgentStr)))")
                    }
                }

                //: } else {
            } else { // 点击别人麦位, 查看资料卡
                //: showUserCardBlock?(itemModel.uid)
                showUserCardBlock?(itemModel.uid)
            }

            //: } else {
        } else { // 空位
            //: if isAnchor {
            if isAnchor { // 房主
                //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                let vc = SelectReactiveCompatible(frame: UIScreen.main.bounds)
                //: vc.initwithList(cellTitleList: ["On mic".localized, "Lock".localized])
                vc.fullPhaseOfTheMoon(cellTitleList: [(userFrameKey.replacingOccurrences(of: "view", with: "O") + String(constRawTitle)).localized, (String(showInfoUrl.suffix(4))).localized])
                //: vc.cancelColor = .appTitleColor()
                vc.cancelColor = .toEvent()
                //: vc.munuBlock = { [weak self] _, str in
                vc.munuBlock = { [weak self] _, str in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: if str == "On mic".localized {
                    if str == (userFrameKey.replacingOccurrences(of: "view", with: "O") + String(constRawTitle)).localized {
                        //: if TalkingVoiceRoomManager.shared().partyModel.position >= 0 {
                        if RangeManager.universalShared().partyModel.position >= 0 { // 在麦位上切麦
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 3,
                            RangeManager.universalShared().red(type: 3,
                                                                          //: position: TalkingVoiceRoomManager.shared().partyModel.position,
                                                                          position: RangeManager.universalShared().partyModel.position,
                                                                          //: toPosition: position)
                                                                          toPosition: position)
                            //: } else {
                        } else {
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 1, position: position)
                            RangeManager.universalShared().red(type: 1, position: position)
                            //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_onMic)_\(PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                            const_screenFormat.occurrenceIn(eventID: "\(const_limitPath)_\(PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue ? String(bytes: mainViewMessage.map{allowMake(send: $0)}, encoding: .utf8)! : (String(constDetailAgentStr)))")
                        }

                        //: } else if str == "Lock".localized {
                    } else if str == (String(showInfoUrl.suffix(4))).localized {
                        //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: 0, type: 1, position: position)
                        RangeManager.universalShared().currentTable(uid: 0, type: 1, position: position)
                    }
                }

                //: } else {
            } else { // 观众在麦位上切麦，否则上麦
                //: if TalkingVoiceRoomManager.shared().partyModel.position >= 0 {
                if RangeManager.universalShared().partyModel.position >= 0 {
                    //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 3,
                    RangeManager.universalShared().red(type: 3,
                                                                  //: position: TalkingVoiceRoomManager.shared().partyModel.position,
                                                                  position: RangeManager.universalShared().partyModel.position,
                                                                  //: toPosition: position)
                                                                  toPosition: position)
                    //: } else {
                } else {
                    //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 1, position: position)
                    RangeManager.universalShared().red(type: 1, position: position)
                    //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_onMic)_\(PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                    const_screenFormat.occurrenceIn(eventID: "\(const_limitPath)_\(PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue ? String(bytes: mainViewMessage.map{allowMake(send: $0)}, encoding: .utf8)! : (String(constDetailAgentStr)))")
                }
            }
        }
    }
}

// MARK: - 音浪动效

//: extension TalkingMikePositionItemView {
extension StartWithView {
    /// 播放音浪值动效
    /// - Parameter amplitude: 音浪值
    //: func animateCircle(withAmplitude amplitude: CGFloat) {
    func pastPush(withAmplitude amplitude: CGFloat) {
        //: maxAmplitude = max(maxAmplitude, amplitude)
        maxAmplitude = max(maxAmplitude, amplitude)
        //: guard isAnimation == false else { return }
        guard isAnimation == false else { return }
        //: isAnimation = true
        isAnimation = true

        //: animationV1.isHidden = false
        animationV1.isHidden = false
        //: animationV2.isHidden = false
        animationV2.isHidden = false
        //: let scale1 = (25 + (maxAmplitude / 100) * 7) / 25
        let scale1 = (25 + (maxAmplitude / 100) * 7) / 25
        //: let scale2 = (29 + (maxAmplitude / 100) * 8) / 29
        let scale2 = (29 + (maxAmplitude / 100) * 8) / 29
        //: maxAmplitude = 0.0
        maxAmplitude = 0.0
        //: UIView.animate(withDuration: 1, animations: {
        UIView.animate(withDuration: 1, animations: {
            //: self.animationV1.transform = CGAffineTransform(scaleX: scale1, y: scale1)
            self.animationV1.transform = CGAffineTransform(scaleX: scale1, y: scale1)
            //: self.animationV2.transform = CGAffineTransform(scaleX: scale2, y: scale2)
            self.animationV2.transform = CGAffineTransform(scaleX: scale2, y: scale2)
            //: }) { _ in
        }) { _ in
            //: self.animationV1.transform = .identity
            self.animationV1.transform = .identity
            //: self.animationV2.transform = .identity
            self.animationV2.transform = .identity
            //: self.animationV1.isHidden = true
            self.animationV1.isHidden = true
            //: self.animationV2.isHidden = true
            self.animationV2.isHidden = true
            //: self.isAnimation = false
            self.isAnimation = false
        }
    }
}

// MARK: - Layout

//: extension TalkingMikePositionItemView {
extension StartWithView {
    /// 添加视图
    //: private func setupSubviews() {
    private func querySubviews() {
        //: addSubview(animationV1)
        addSubview(animationV1)
        //: addSubview(animationV2)
        addSubview(animationV2)
        //: addSubview(icon)
        addSubview(icon)
        //: addSubview(mikeCloseImgV)
        addSubview(mikeCloseImgV)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(houseImgV)
        stackView.addArrangedSubview(houseImgV)
        //: stackView.addArrangedSubview(seatNumLab)
        stackView.addArrangedSubview(seatNumLab)
        //: stackView.addArrangedSubview(nickNameLab)
        stackView.addArrangedSubview(nickNameLab)
        //: addSubview(heartCoinBtn)
        addSubview(heartCoinBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func perimeter() {
        //: animationV1.snp.makeConstraints { make in
        animationV1.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 8))
            make.top.equalTo(actualWidth(w: 8))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(58)
            make.width.height.equalTo(58)
        }

        //: animationV2.snp.makeConstraints { make in
        animationV2.snp.makeConstraints { make in
            //: make.center.equalTo(animationV1)
            make.center.equalTo(animationV1)
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.center.equalTo(animationV1)
            make.center.equalTo(animationV1)
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }

        //: mikeCloseImgV.snp.makeConstraints { make in
        mikeCloseImgV.snp.makeConstraints { make in
            //: make.trailing.bottom.equalTo(icon).offset(3)
            make.trailing.bottom.equalTo(icon).offset(3)
            //: make.width.height.equalTo(actualWidth(w: 18))
            make.width.height.equalTo(actualWidth(w: 18))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 6))
            make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 6))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.lessThanOrEqualToSuperview()
            make.width.lessThanOrEqualToSuperview()
        }
        //: houseImgV.snp.makeConstraints { make in
        houseImgV.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 12))
            make.width.height.equalTo(actualWidth(w: 12))
        }
        //: seatNumLab.snp.makeConstraints { make in
        seatNumLab.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 12))
            make.width.height.equalTo(actualWidth(w: 12))
        }

        //: heartCoinBtn.snp.makeConstraints { make in
        heartCoinBtn.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 24))
            make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 24))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 12))
            make.height.equalTo(actualWidth(w: 12))
            //: make.width.equalTo(actualWidth(w: 21))
            make.width.equalTo(actualWidth(w: 21))
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func reciprocation() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureRecognizer))
        let tap = UITapGestureRecognizer(target: self, action: #selector(statusThird))
        //: addGestureRecognizer(tap)
        addGestureRecognizer(tap)
    }
}
