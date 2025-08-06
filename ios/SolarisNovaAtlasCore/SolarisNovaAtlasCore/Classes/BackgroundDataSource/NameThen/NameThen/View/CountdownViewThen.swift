
//: Declare String Begin

/*: s" :*/
fileprivate let dataCornerFilterStr:[Character] = ["s"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_styleFrameData:[UInt8] = [0xd4,0xd9,0xd4,0xdf,0x93,0xce,0xda,0xcf,0xd0,0xdd,0xa5,0x94,0x8b,0xd3,0xcc,0xde,0x8b,0xd9,0xda,0xdf,0x8b,0xcd,0xd0,0xd0,0xd9,0x8b,0xd4,0xd8,0xdb,0xd7,0xd0,0xd8,0xd0,0xd9,0xdf,0xd0,0xcf]

fileprivate func userPath(row num: UInt8) -> UInt8 {
    let value = Int(num) + 149
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "bth_live_follow_pre" :*/
fileprivate let main_makeName:[Character] = ["b","t","h","_","l","i","v","e","_","f"]
fileprivate let show_informationStr:[Character] = ["o","l","l","o","w","_","p","r","e"]

/*: "btn_live_mini_nor" :*/
fileprivate let k_clearStr:String = "corner user return suitebtn_"
fileprivate let dataGiftContent:[Character] = ["i"]
fileprivate let showTargetValueLeadingFormat:[Character] = ["n","i","_","n","o","r"]

/*: "#2DF2FF" :*/
fileprivate let noti_makeMsg:String = "play value path#2DF2FF"

/*: "Live" :*/
fileprivate let dataMeFilterViewKey:String = "day date lab block viewLive"

/*: "#FF506D" :*/
fileprivate let app_releaseData:String = "#FF506Dinside self left"

/*: "  :*/
fileprivate let dataImageKey:String = " "

/*: "removeAttentionUid" :*/
fileprivate let mainActionValue:[Character] = ["r","e","m","o","v","e","A","t","t","e","n"]
fileprivate let user_styleName:String = "size text language iftionUid"

/*: "attentionUid" :*/
fileprivate let show_modelStr:[Character] = ["a","t","t","e","n","t","i","o"]
fileprivate let showNameData:[Character] = ["n","U","i","d"]

/*: "source" :*/
fileprivate let showLiveData:String = "S"
fileprivate let mainElementId:[Character] = ["o","u","r","c","e"]

/*: "num" :*/
fileprivate let showReTitle:[Character] = ["n","u","m"]

/*: "UID: :*/
fileprivate let noti_answerData:[Character] = ["U","I","D",":"]

/*: "btn_live_closed_nor" :*/
fileprivate let dataAttributeContent:String = "btn_lrecord view live style"
fileprivate let constCenterFormat:String = "ive_clview end type"
fileprivate let main_observerPath:String = "upon size detail_nor"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CountdownViewThen.swift
//  AbroadTalking
//
//  Created by young on 2023/7/11.
//

//: import UIKit
import UIKit

//: class TalkingLiveRoomTopView: UIView {
class CountdownViewThen: UIView {
    //: weak var weakVC: TalkingBaseViewController?
    weak var weakVC: SizeViewController?
    // 右侧按钮点击Block
    //: var rightBtnBlock: (() -> Void)? = nil
    var rightBtnBlock: (() -> Void)? = nil
    // 未检测出人脸时长（间隔1秒）
    //: var noFaceTime: Int = 0 {
    var noFaceTime: Int = 0 {
        //: didSet {
        didSet {
            //: if noFaceTime >= PunctuateThen.share.appConfigMode.countdown1 {
            if noFaceTime >= PunctuateThen.share.appConfigMode.countdown1 { // 展示倒计时
                //: self.liveStatusImgV.isHidden = true
                self.liveStatusImgV.isHidden = true
                //: self.countdownView.isHidden = false
                self.countdownView.isHidden = false
                //: self.countdownLab.text = "\(MAX_NOFACETIME-noFaceTime)s"
                self.countdownLab.text = "\(k_closeName - noFaceTime)s"
                // svga
                //: self.svgaView.isHidden = false
                self.svgaView.isHidden = false
                //: self.svgaView.refreshView(countdown: "\(MAX_NOFACETIME-noFaceTime)")
                self.svgaView.sass(countdown: "\(k_closeName - noFaceTime)")
                //: } else {
            } else {
                //: self.refreshLiveStatus()
                self.hitchCell()
            }
        }
    }

    // 主播信息
    //: private var liveModel = TalkingLiveRoomModel()
    private var liveModel = ClickTransformable()

    //: var onlineNunTimer: Timer?
    var onlineNunTimer: Timer? /// 直播人数刷新定时器

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        subviewsShow()
        //: setupSubViewsConstraint()
        constraintOn()
        //: startTimer()
        saveTimer()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_styleFrameData.map{userPath(row: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var iconBgBtn: UIButton = {
    private lazy var iconBgBtn: UIButton = {
        //: let v = UIButton()
        let v = UIButton()
        //: v.backgroundColor = .black.withAlphaComponent(0.2)
        v.backgroundColor = .black.withAlphaComponent(0.2)
        //: v.layer.cornerRadius = actualWidth(w: 32)/2
        v.layer.cornerRadius = actualWidth(w: 32) / 2
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.addTarget(self, action: #selector(iconBgButtonClick), for: .touchUpInside)
        v.addTarget(self, action: #selector(brake), for: .touchUpInside)
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
        //: v.layer.cornerRadius = actualWidth(w: 32)/2
        v.layer.cornerRadius = actualWidth(w: 32) / 2
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var nickNameLab: UILabel = {
    private lazy var nickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.atomic(fontSize: 11)
        lab.font = UIFont.atomic(fontSize: 11)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var uidLab: UILabel = {
    private lazy var uidLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.white.withAlphaComponent(0.7)
        lab.textColor = UIColor.white.withAlphaComponent(0.7)
        //: lab.font = UIFont.atomic(fontSize: 11)
        lab.font = UIFont.atomic(fontSize: 11)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followBtn: UIButton = {
    private lazy var followBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.setImage(UIImage.BundleImageNamed(name: "bth_live_follow_pre"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(main_makeName) + String(show_informationStr))), for: .normal)
        //: btn.addTarget(self, action: #selector(followButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(impressionClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniBtn: UIButton = {
    private lazy var miniBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_mini_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(k_clearStr.suffix(4)) + "live_m" + String(dataGiftContent) + String(showTargetValueLeadingFormat))), for: .normal)
        //: btn.addTarget(self, action: #selector(miniButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(belowImage), for: .touchUpInside)
        //: btn.isHidden = (PunctuateThen.share.appStatus == AppSkinStatus.special.rawValue && PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue)
        btn.isHidden = (PunctuateThen.share.appStatus == HiddenHashableRepresentation.special.rawValue && PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveStatusImgV: TalkingButton = {
    private lazy var liveStatusImgV: StartImageButton = {
        //: let img = TalkingButton()
        let img = StartImageButton()
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.spaceBetweenTitleAndImage = 2
        img.spaceBetweenTitleAndImage = 2
        //: img.setBackgroundImage(UIImage.imageFillColor(color: UIColor.init(red: 9/255.0 , green: 9/255.0 , blue: 9/255.0 , alpha: 0.3)), for: .normal)
        img.setBackgroundImage(UIImage.inheritanceOf(color: UIColor(red: 9 / 255.0, green: 9 / 255.0, blue: 9 / 255.0, alpha: 0.3)), for: .normal)
        //: img.layer.cornerRadius = 8
        img.layer.cornerRadius = 8
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.setTitleColor(.white, for: .normal)
        img.setTitleColor(.white, for: .normal)
        //: img.titleLabel?.font = UIFont.atomic(fontSize: 12)
        img.titleLabel?.font = UIFont.atomic(fontSize: 12)
        //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#2DF2FF")!, size: CGSize.init(width: 8, height: 8))
        let image = UIImage.textDown(color: UIColor(hex: (String(noti_makeMsg.suffix(7))))!, size: CGSize(width: 8, height: 8))
        //: img.setImage(image.shareOutput(), for: .normal)
        img.setImage(image.shareOutput(), for: .normal)
        //: img.setTitle("Live".localized, for: .normal)
        img.setTitle((String(dataMeFilterViewKey.suffix(4))).localized, for: .normal)
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var countdownView: UIView = {
    private lazy var countdownView: UIView = {
        //: let bg = UIView()
        let bg = UIView()
        //: bg.isHidden = true
        bg.isHidden = true
        //: bg.layer.cornerRadius = 4
        bg.layer.cornerRadius = 4
        //: bg.layer.masksToBounds = true
        bg.layer.masksToBounds = true
        //: bg.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        bg.backgroundColor = UIColor.black.withAlphaComponent(0.3)

        //: let icon = UIView()
        let icon = UIView()
        //: icon.backgroundColor = UIColor(hex: "#FF506D")
        icon.backgroundColor = UIColor(hex: (String(app_releaseData.prefix(7))))
        //: icon.layer.cornerRadius = 3.5
        icon.layer.cornerRadius = 3.5
        //: icon.layer.masksToBounds = true
        icon.layer.masksToBounds = true
        //: icon.layer.borderWidth = 1
        icon.layer.borderWidth = 1
        //: icon.layer.borderColor = UIColor.white.cgColor
        icon.layer.borderColor = UIColor.white.cgColor
        //: bg.addSubview(icon)
        bg.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.equalTo(4)
            make.leading.equalTo(4)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 7, height: 7))
            make.size.equalTo(CGSize(width: 7, height: 7))
        }
        //: return bg
        return bg
        //: }()
    }()

    //: private lazy var countdownLab: UILabel = {
    private lazy var countdownLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.atomic(fontSize: 12)
        lab.font = UIFont.atomic(fontSize: 12)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.text = " \(PunctuateThen.share.appConfigMode.countdown2)s"
        lab.text = " \(PunctuateThen.share.appConfigMode.countdown2)s"
        //: countdownView.addSubview(lab)
        countdownView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var svgaView: TalkingLiveCountdownView = {
    lazy var svgaView: PartSumdownView = {
        //: let v = TalkingLiveCountdownView()
        let v = PartSumdownView()
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    /// 在线人数
    //: private lazy var onlineNumBtn: UIButton = {
    private lazy var onlineNumBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundColor(color: UIColor.black.withAlphaComponent(0.25), forState: .normal)
        btn.lineClick(color: UIColor.black.withAlphaComponent(0.25), forState: .normal)
        //: btn.addTarget(self, action: #selector(onlineNumBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(angleBack), for: .touchUpInside)
        //: btn.layer.cornerRadius = actualWidth(w: 32)/2
        btn.layer.cornerRadius = actualWidth(w: 32) / 2
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.atomic(fontSize: 12)
        btn.titleLabel?.font = UIFont.atomic(fontSize: 12)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var onlineListView: TalkingLiveRoomOnlineListView = {
    private lazy var onlineListView: RollDataSource = {
        //: let v = TalkingLiveRoomOnlineListView()
        let v = RollDataSource()
        //: v.touchIconBtnBlock = { [weak self] uid in
        v.touchIconBtnBlock = { [weak self] uid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.showUserCard(uid: uid)
            self.denominationUid(uid: uid)
        }
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingLiveRoomTopView {
extension CountdownViewThen {
    /// 关注/取消关注
    /// - Parameters:
    ///   - uid: 用户Id
    ///   - isAttention: true: 取关；false: 关注
    //: @objc func req_followRequest(uid: Int, isAttention: Bool, completion: ((_ succeed: Bool) -> Void)? = nil) {
    @objc func valueColorCompletion(uid: Int, isAttention: Bool, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            drawObserver(showMsg: show_limitMessage)
            //: completion?(false)
            completion?(false)
            //: return
            return
        }

        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: if isAttention {
        if isAttention {
            //: dict["removeAttentionUid"] = uid
            dict[(String(mainActionValue) + String(user_styleName.suffix(7)))] = uid
            //: } else {
        } else {
            //: dict["attentionUid"] = uid
            dict[(String(show_modelStr) + String(showNameData))] = uid
            //: dict["source"] = "1"
            dict[(showLiveData.lowercased() + String(mainElementId))] = "1"
        }
        //: SomebodyRequestTool.req_atationTool(isAttention: !isAttention, params: dict) { succeed, result, errorModel in
        SomebodyRequestTool.strictAdd(isAttention: !isAttention, params: dict) { succeed, _, _ in
            //: completion?(succeed)
            completion?(succeed)
        }
    }
}

// MARK: - 在线人数

//: extension TalkingLiveRoomTopView {
extension CountdownViewThen {
    //: @objc private func onlineNumBtnClick() {
    @objc private func angleBack() {
        //: self.onlineListView.showView(chatGroupId: liveModel.chatGroupId)
        self.onlineListView.onLog(chatGroupId: liveModel.chatGroupId)
    }

    /// 获取
    //: @objc private func getOnlineNumData() {
    @objc private func duringSwitchline() {
        //: TalkingAudienceManager().req_liveRoomOnlineNum(chatGroupId: liveModel.chatGroupId, completion:{ succeed, result, errorModel in
        CookingPanAudienceManager().tent(chatGroupId: liveModel.chatGroupId, completion: { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: let num = json["num"].string
            let num = json[(String(showReTitle))].string
            //: guard num?.count ?? 0 > 0 else {
            guard num?.count ?? 0 > 0 else {
                //: self.onlineNumBtn.isHidden = true
                self.onlineNumBtn.isHidden = true
                //: return
                return
            }
            //: self.onlineNumBtn.setTitle(num, for: .normal)
            self.onlineNumBtn.setTitle(num, for: .normal)

            //: })
        })
    }

    //: private func startTimer() {
    private func saveTimer() {
        //: stopTimer()
        nextObject()
        //: onlineNunTimer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(getOnlineNumData), userInfo: nil, repeats: true)
        onlineNunTimer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(duringSwitchline), userInfo: nil, repeats: true)
    }

    //: func stopTimer() {
    func nextObject() {
        //: onlineNunTimer?.invalidate()
        onlineNunTimer?.invalidate()
        //: onlineNunTimer = nil
        onlineNunTimer = nil
    }
}

// MARK: - Event

//: extension TalkingLiveRoomTopView {
extension CountdownViewThen {
    /// 刷新顶部视图
    //: func refreshTopView(_ liveModel: TalkingLiveRoomModel) {
    func numbereraction(_ liveModel: ClickTransformable) {
        //: self.liveModel = liveModel
        self.liveModel = liveModel
        //: getOnlineNumData()
        duringSwitchline()
        //: nickNameLab.text = liveModel.streamerInfo.nickname
        nickNameLab.text = liveModel.streamerInfo.nickname
        //: uidLab.text = "UID:\(liveModel.streamerInfo.uid)"
        uidLab.text = (String(noti_answerData)) + "\(liveModel.streamerInfo.uid)"
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 20)))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 20)))]
        //: icon.setUrlImage(urlStr: liveModel.streamerInfo.headPic, placeImg: UIImage.placeHolderImage(sex: liveModel.streamerInfo.sex), options: optionsInfo)
        icon.beforeRender(urlStr: liveModel.streamerInfo.headPic, placeImg: UIImage.imaginationImageSex(sex: liveModel.streamerInfo.sex), options: optionsInfo)
        // 是否是主播
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == PunctuateThen.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == PunctuateThen.share.loginUid)
        //: if isAnchor {
        if isAnchor {
            //: refreshLiveStatus()
            hitchCell()
            //: miniBtn.setImage(UIImage.BundleImageNamed(name: "btn_live_mini_nor"), for: .normal)
            miniBtn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(k_clearStr.suffix(4)) + "live_m" + String(dataGiftContent) + String(showTargetValueLeadingFormat))), for: .normal)
            //: refreshFollow(isAttention: true)
            sendMore(isAttention: true)
            //: } else {
        } else {
            //: miniBtn.setImage(UIImage.BundleImageNamed(name: "btn_live_closed_nor"), for: .normal)
            miniBtn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(dataAttributeContent.prefix(5)) + String(constCenterFormat.prefix(6)) + "osed" + String(main_observerPath.suffix(4)))), for: .normal)
            //: refreshFollow(isAttention: self.liveModel.streamerInfo.isAttention)
            sendMore(isAttention: self.liveModel.streamerInfo.isAttention)
        }
    }

    /// 最小化/关闭直播 按钮点击事件
    //: @objc func miniButtonClick() {
    @objc func belowImage() {
        //: rightBtnBlock?()
        rightBtnBlock?()
        // 是否是主播
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == PunctuateThen.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == PunctuateThen.share.loginUid)
        //: if isAnchor {
        if isAnchor { // 改为小窗口
            //: TalkingLiveManager.shared().live_updateTXLivePreview(smallWindow: true)
            LogLiveManager.anUp().doFinish(smallWindow: true)
            //: currentViewController()?.navigationController?.popViewController(animated: false)
            occurrentWith()?.navigationController?.popViewController(animated: false)
        }
    }

    //: @objc private func iconBgButtonClick() {
    @objc private func brake() {
        //: showUserCard(uid: String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid))
        denominationUid(uid: String(LogLiveManager.anUp().liveRoomModel.streamerInfo.uid))
    }

    /// 展示个人资料卡
    //: private func showUserCard(uid: String) {
    private func denominationUid(uid: String) {
        //: let userCard = TalkingLiveUserCardView(frame: .zero, uid: uid)
        let userCard = PanCardView(frame: .zero, uid: uid)
        //: userCard.delegate = weakVC as? any TalkingLiveUserCardViewDelegate
        userCard.delegate = weakVC as? any ListHiddenObjectProtocol
        //: userCard.show()
        userCard.contentBy()
    }

    /// 刷新关注按钮
    //: private func refreshFollow(isAttention: Bool) {
    private func sendMore(isAttention: Bool) {
        //: followBtn.isHidden = isAttention
        followBtn.isHidden = isAttention
        //: iconBgBtn.snp.updateConstraints { make in
        iconBgBtn.snp.updateConstraints { make in
            //: make.width.equalTo(followBtn.isHidden ? actualWidth(w: 115):actualWidth(w: 130))
            make.width.equalTo(followBtn.isHidden ? actualWidth(w: 115) : actualWidth(w: 130))
        }
    }

    /// 刷新直播状态
    //: private func refreshLiveStatus() {
    private func hitchCell() {
        //: self.liveStatusImgV.isHidden = !TalkingLiveManager.shared().isLive
        self.liveStatusImgV.isHidden = !LogLiveManager.anUp().isLive
        //: self.countdownView.isHidden = !self.liveStatusImgV.isHidden
        self.countdownView.isHidden = !self.liveStatusImgV.isHidden
        //: self.svgaView.isHidden = !self.liveStatusImgV.isHidden
        self.svgaView.isHidden = !self.liveStatusImgV.isHidden
    }

    /// 关注按钮点击事件
    //: @objc private func followButtonClick() {
    @objc private func impressionClick() {
        //: req_followRequest(uid: liveModel.streamerInfo.uid, isAttention: liveModel.streamerInfo.isAttention) { [weak self] succeed in
        valueColorCompletion(uid: liveModel.streamerInfo.uid, isAttention: liveModel.streamerInfo.isAttention) { [weak self] succeed in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard succeed else { return }
            guard succeed else { return }
            //: let isAttention = self.liveModel.streamerInfo.isAttention
            let isAttention = self.liveModel.streamerInfo.isAttention
            //: self.liveModel.streamerInfo.isAttention = !isAttention
            self.liveModel.streamerInfo.isAttention = !isAttention
            //: self.refreshFollow(isAttention: self.liveModel.streamerInfo.isAttention)
            self.sendMore(isAttention: self.liveModel.streamerInfo.isAttention)
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomTopView {
extension CountdownViewThen {
    // 添加视图
    //: private func setupSubviews() {
    private func subviewsShow() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(iconBgBtn)
        addSubview(iconBgBtn)
        //: iconBgBtn.addSubview(icon)
        iconBgBtn.addSubview(icon)
        //: iconBgBtn.addSubview(nickNameLab)
        iconBgBtn.addSubview(nickNameLab)
        //: iconBgBtn.addSubview(uidLab)
        iconBgBtn.addSubview(uidLab)
        //: iconBgBtn.addSubview(followBtn)
        iconBgBtn.addSubview(followBtn)
        //: addSubview(miniBtn)
        addSubview(miniBtn)
        //: addSubview(liveStatusImgV)
        addSubview(liveStatusImgV)
        //: addSubview(countdownView)
        addSubview(countdownView)
        //: addSubview(onlineNumBtn)
        addSubview(onlineNumBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func constraintOn() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: StatusBarHeight+actualWidth(w: 68))
        self.frame = CGRect(x: 0, y: 0, width: kQueryValue, height: constLiveErrorMessage + actualWidth(w: 68))

        //: iconBgBtn.snp.makeConstraints { make in
        iconBgBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(constLiveErrorMessage + 10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 32))
            make.height.equalTo(actualWidth(w: 32))
            //: make.width.equalTo(actualWidth(w: 115))
            make.width.equalTo(actualWidth(w: 115))
        }
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.width.height.equalTo(iconBgBtn.snp.height)
            make.width.height.equalTo(iconBgBtn.snp.height)
        }
        //: nickNameLab.snp.makeConstraints { make in
        nickNameLab.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 2))
            make.top.equalTo(actualWidth(w: 2))
            //: make.leading.equalTo(icon.snp.trailing).offset(actualWidth(w: 7))
            make.leading.equalTo(icon.snp.trailing).offset(actualWidth(w: 7))
            //: make.width.equalTo(actualWidth(w: 65))
            make.width.equalTo(actualWidth(w: 65))
        }
        //: uidLab.snp.makeConstraints { make in
        uidLab.snp.makeConstraints { make in
            //: make.bottom.equalTo(-actualWidth(w: 2))
            make.bottom.equalTo(-actualWidth(w: 2))
            //: make.leading.width.equalTo(nickNameLab)
            make.leading.width.equalTo(nickNameLab)
        }
        //: followBtn.snp.makeConstraints { make in
        followBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-actualWidth(w: 6))
            make.trailing.equalTo(-actualWidth(w: 6))
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 20))
            make.width.height.equalTo(actualWidth(w: 20))
        }

        //: miniBtn.snp.makeConstraints { make in
        miniBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(iconBgBtn)
            make.centerY.equalTo(iconBgBtn)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }
        //: onlineNumBtn.snp.makeConstraints { make in
        onlineNumBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(miniBtn)
            make.centerY.equalTo(miniBtn)
            //: make.trailing.equalTo(miniBtn.snp.leading).offset(-15)
            make.trailing.equalTo(miniBtn.snp.leading).offset(-15)
            //: make.size.equalTo(miniBtn)
            make.size.equalTo(miniBtn)
        }
        //: let text: NSString = liveStatusImgV.titleLabel?.text as? NSString ?? ""
        let text: NSString = liveStatusImgV.titleLabel?.text as? NSString ?? ""
        //: let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.atomic(fontSize: 12)], context: nil)
        let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.atomic(fontSize: 12)], context: nil)

        //: liveStatusImgV.snp.makeConstraints { make in
        liveStatusImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBgBtn)
            make.leading.equalTo(iconBgBtn)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
            //: make.width.equalTo(rect.width+20)
            make.width.equalTo(rect.width + 20)
        }
        //: let countdown_w = 13.0+countdownLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 15)).width
        let countdown_w = 13.0 + countdownLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 15)).width
        //: countdownView.snp.makeConstraints { make in
        countdownView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(liveStatusImgV)
            make.leading.top.equalTo(liveStatusImgV)
            //: make.size.equalTo(CGSize(width: countdown_w, height: 16))
            make.size.equalTo(CGSize(width: countdown_w, height: 16))
        }
        //: countdownLab.snp.makeConstraints { make in
        countdownLab.snp.makeConstraints { make in
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
