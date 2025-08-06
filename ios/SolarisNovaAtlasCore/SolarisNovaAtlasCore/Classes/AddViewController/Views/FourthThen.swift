
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_styleId:[UInt8] = [0x73,0x78,0x73,0x7e,0x32,0x6d,0x79,0x6e,0x6f,0x7c,0x44,0x33,0x2a,0x72,0x6b,0x7d,0x2a,0x78,0x79,0x7e,0x2a,0x6c,0x6f,0x6f,0x78,0x2a,0x73,0x77,0x7a,0x76,0x6f,0x77,0x6f,0x78,0x7e,0x6f,0x6e]

fileprivate func brushAside(path num: UInt8) -> UInt8 {
    let value = Int(num) - 10
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_video_bd" :*/
fileprivate let show_nameUrl:[Character] = ["i","c","o","n","_","v","i","d"]
fileprivate let userSourceName:String = "height returneo_bd"

/*: "btn_video_drop_nor" :*/
fileprivate let notiUserKey:[Character] = ["b","t","n","_","v","i","d","e","o","_"]
fileprivate let main_backTitle:String = "dtoop"

/*: "get json error" :*/
fileprivate let appQueryedMessage:String = "get jme user var"
fileprivate let main_kitStr:String = "ERROR"

/*: s" :*/
fileprivate let show_normalNameHeightMessage:String = "manager"

/*: "icon_videocall_topView" :*/
fileprivate let data_numberText:String = "data backgroundicon_"
fileprivate let showAddKey:[Character] = ["o","c","a","l","l","_","t","o","p","V","i","e","w"]

/*: "Video Call" :*/
fileprivate let constFirstText:String = "range view modelVideo"

/*: "icon_videocall_initerv_topView" :*/
fileprivate let main_moreLayerUrl:String = "upon makeicon_"
fileprivate let showEvaluateStr:String = "oiconal"
fileprivate let appVideoStr:String = "erv_toextension height or pic"
fileprivate let main_appName:String = "mode self self framepView"

/*: "Free" :*/
fileprivate let dataAddFormat:[Character] = ["F","r","e","e"]

/*: "You've been barred from receiving calls" :*/
fileprivate let k_frameStr:[UInt8] = [0x93,0xa5,0xbf,0xed,0xbc,0xaf,0xea,0xa8,0xaf,0xaf,0xa4,0xea,0xa8,0xab,0xb8,0xb8,0xaf,0xae,0xea,0xac,0xb8,0xa5,0xa7,0xea,0xb8,0xaf,0xa9,0xaf,0xa3,0xbc,0xa3,0xa4,0xad,0xea,0xa9,0xab,0xa6,0xa6,0xb9]

private func leadingRaw(social num: UInt8) -> UInt8 {
    return num ^ 202
}

/*: "&type=6" :*/
fileprivate let main_backgroundValue:String = "user white view to line&type=6"

/*: "#864EFF" :*/
fileprivate let main_userTextMsg:[Character] = ["#","8","6","4","E","F","F"]

/*: "#F79AFF" :*/
fileprivate let k_leadingPath:[Character] = ["#","F","7","9","A","F","F"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FourthThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoCallPopUpView: UIView {
class FourthThen: UIView {
    //: var popView: TalkingPopView?
    var popView: UserModelReactiveCompatible?
    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.colorSubviews()
        //: self.setupSubViewsConstraint()
        self.appTotalerchange()
        //: self.bindInteraction()
        self.totaleractionMagnitudeeraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_styleId.map{brushAside(path: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: player?.stopPlay()
        player?.startName()
        //: player?.removeVideoWidget()
        player?.aftereffect()
        //: player = nil
        player = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var playerView: UIImageView = {
    private lazy var playerView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.contentMode = .scaleAspectFill
        view.contentMode = .scaleAspectFill
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var topBtn: TalkingButton = {
    private lazy var topBtn: StartImageButton = {
        //: let btn = TalkingButton.init(type: .custom)
        let btn = StartImageButton(type: .custom)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Medium, fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_video_bd"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(show_nameUrl) + String(userSourceName.suffix(5)))), for: .normal)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(completeMove), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(notiUserKey) + main_backTitle.replacingOccurrences(of: "to", with: "r") + "_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(elect), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var countDownLb: UILabel = {
    private lazy var countDownLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.font = UIFont.atomic(fontSize: 10)
        lb.font = UIFont.atomic(fontSize: 10)
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()

    // 懒加载初始化
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: MemoryReactiveCompatible? = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = MemoryReactiveCompatible()
        //: player.setMute(bEnable: false)
        player.valueDoing(bEnable: false)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Videocall_initiver)
        let url = SkullSessionReactiveCompatible.default.region(type: .Videocall_initiver)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(appQueryedMessage.prefix(5)) + "son " + main_kitStr.lowercased()))
        }
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Tool

//: extension TalkingVideoCallPopUpView {
extension FourthThen {
    /// 获取权限
    //: private func getServercePermission() {
    private func penalise() {
        // 是否开启摄像头
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { isOpen in
        CustomPermissionTool.behindCell(false) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: return
                return
            }
            // 麦克风权限
            //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { [weak self] isOpen in
            CustomPermissionTool.contextBag(false) { [weak self] isOpen in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: return
                    return
                }
                //: self.countDownLb.isHidden = false
                self.countDownLb.isHidden = false
                //: self.topBtn.snp.remakeConstraints { make in
                self.topBtn.snp.remakeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.centerY.equalToSuperview().offset(-10)
                    make.centerY.equalToSuperview().offset(-10)
                    //: make.height.equalTo(18)
                    make.height.equalTo(18)
                }
                //: self.countDownLb.snp.remakeConstraints { make in
                self.countDownLb.snp.remakeConstraints { make in
                    //: make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.height.equalTo(10)
                    make.height.equalTo(10)
                }
                // 5s倒计时主动接通
                //: var time = TalkingVideoInitivCallManager.shared.videoCallModel.winCountdown
                var time = TvThen.shared.videoCallModel.winCountdown
                //: self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] timer in
                self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] _ in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: guard time > 0 else {
                    guard time > 0 else { // 结束倒计时
                        //: self.destroyTimer()
                        self.breakShortAsideClickTimer()
                        //: self.dismiss()
                        self.areaEach()
                        //: switch PunctuateThen.share.appUserConfigMode.popupCallAcceptEvent {
                        switch PunctuateThen.share.appUserConfigMode.popupCallAcceptEvent {
                        //: case 1:
                        case 1:
                            //: pushWebRechargeView()
                            userView()
                        //: case 2:
                        case 2:
                            //: pushWebSubscriptionView()
                            waking()
                        //: case 3:
                        case 3:
                            //: self.putThrough()
                            self.towardThrough()
                        //: default:
                        default:
                            //: break
                            break
                        }
                        //: return
                        return
                    }
                    //: self.countDownLb.text = "\(time)s"
                    self.countDownLb.text = "\(time)s"
                    //: time -= 1
                    time -= 1
                    //: }, repeats: true)
                }, repeats: true)
                //: self.countdownTimer?.fire()
                self.countdownTimer?.fire()
                //: RunLoop.current.add(self.countdownTimer!, forMode: .common)
                RunLoop.current.add(self.countdownTimer!, forMode: .common)
            }
        }
        //: if self.countDownLb.isHidden {
        if self.countDownLb.isHidden {
            //: self.topBtn.snp.remakeConstraints { make in
            self.topBtn.snp.remakeConstraints { make in
                //: make.center.equalToSuperview()
                make.center.equalToSuperview()
                //: make.height.equalTo(18)
                make.height.equalTo(18)
            }
        }
    }

    //: private func seTypeView() {
    private func phaseOfTheMoon() {
        //: switch PunctuateThen.share.appUserConfigMode.popupCallAcceptEvent {
        switch PunctuateThen.share.appUserConfigMode.popupCallAcceptEvent {
        //: case 1, 2:
        case 1, 2:
            //: topIcon.image = UIImage.BundleImageNamed(name: "icon_videocall_topView")
            topIcon.image = UIImage.thoughtImageBundleSizeText(name: (String(data_numberText.suffix(5)) + "vide" + String(showAddKey)))
            //: topBtn.setTitle("Video Call".localized, for: .normal)
            topBtn.setTitle((String(constFirstText.suffix(5)) + " Call").localized, for: .normal)
        //: case 3:
        case 3:
            //: topIcon.image = UIImage.BundleImageNamed(name: "icon_videocall_initerv_topView")
            topIcon.image = UIImage.thoughtImageBundleSizeText(name: (String(main_moreLayerUrl.suffix(5)) + "vide" + showEvaluateStr.replacingOccurrences(of: "icon", with: "c") + "l_init" + String(appVideoStr.prefix(6)) + String(main_appName.suffix(5))))
            //: topBtn.setTitle("Free".localized, for: .normal)
            topBtn.setTitle((String(dataAddFormat)).localized, for: .normal)
        //: default:
        default:
            //: break
            break
        }
    }

    /// 播放视频或封面
    //: private func beginPlayer() {
    private func startTo() {
        //: if TalkingVideoInitivCallManager.shared.videoCallModel.winUrlType == 2 {
        if TvThen.shared.videoCallModel.winUrlType == 2 {
            //: self.player?.playerWithUrlAndVideoView(url: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl, view: playerView)
            self.player?.asDrunk(url: TvThen.shared.videoCallModel.winVideoUrl, view: playerView)
            //: } else {
        } else {
            //: self.playerView.setUrlImage(urlStr: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl)
            self.playerView.putBackThroughFinish(urlStr: TvThen.shared.videoCallModel.winVideoUrl)
        }
    }

    /// 销毁倒计时
    //: private func destroyTimer() {
    private func breakShortAsideClickTimer() {
        //: if countdownTimer != nil {
        if countdownTimer != nil {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
        }
    }

    /// 接通电话
    //: private func putThrough() {
    private func towardThrough() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoAcceptButton)
        const_screenFormat.occurrenceIn(eventID: appOkName)
        //: initVideoCallTime()
        isPath()
        /// 视频通话被禁用
        //: guard TalkingVideoInitivCallManager.shared.videoCallModel.isBan == 0 else {
        guard TvThen.shared.videoCallModel.isBan == 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You've been barred from receiving calls".localized)
            self.drawObserver(showMsg: String(bytes: k_frameStr.map{leadingRaw(social: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 1) { succeed, result, errorModel in
        TvThen.shared.finishBecome(type: 1) { succeed, _, _ in
            //: guard succeed == true else {
            guard succeed == true else {
                //: return
                return
            }
            //: if self.currentViewController()?.presentingViewController != nil {
            if self.occurrentWith()?.presentingViewController != nil {
                // 如果有present, 先dismiss
                //: self.currentViewController()?.dismiss(animated: false)
                self.occurrentWith()?.dismiss(animated: false)
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                //: let vc = TalkingVideoInitivCallVC()
                let vc = AddObjectProtocol()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.occurrentWith()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    /// 上报行为
    //: private func uploadRepord(type: Int) {
    private func nameType(type: Int) {
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: type) { succeed, result, errorModel in
        TvThen.shared.finishBecome(type: type) { _, _, _ in
        }
    }

    /// 开启下次弹窗倒计时
    //: private func initVideoCallTime() {
    private func isPath() {
        //: TalkingVideoInitivCallManager.shared.initVideoCallTimer()
        TvThen.shared.equalDoing()
    }
}

// MARK: - Event

//: extension TalkingVideoCallPopUpView {
extension FourthThen {
    //: @objc private func finishBtnClick() {
    @objc private func completeMove() {
        //: self.dismiss()
        self.areaEach()
        //: switch PunctuateThen.share.appUserConfigMode.popupCallAcceptEvent {
        switch PunctuateThen.share.appUserConfigMode.popupCallAcceptEvent {
        //: case 1:
        case 1:
            //: pushWebRechargeView()
            userView()
        //: case 2:
        case 2:
            //: pushWebSubscriptionView()
            waking()
        //: case 3:
        case 3:
            //: TalkingPermissionTool.checkCameraAndMicrophone { [weak self] isOpen in
            CustomPermissionTool.showDrunk { [weak self] isOpen in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard isOpen == true else { return }
                guard isOpen == true else { return }
                //: self.putThrough()
                self.towardThrough()
            }
        //: default:
        default:
            //: break
            break
        }
    }

    /// 充值
    //: private func pushWebRechargeView() {
    private func userView() {
        //: initVideoCallTime()
        isPath()
        //: RangePushManager.share.func__pushToHalfWebVC(webViewType: .RechargeToVideoInitivHalfPage)
        RangePushManager.share.isoclinicEvent(webViewType: .RechargeToVideoInitivHalfPage)
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if occurrentWith()?.isKind(of: RubricViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = occurrentWith() as! RubricViewController
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
            //: vc.isRechargeOrSubscribeChangeMatch = true
            vc.isRechargeOrSubscribeChangeMatch = true
        }
    }

    /// 订阅
    //: private func pushWebSubscriptionView() {
    private func waking() {
        //: initVideoCallTime()
        isPath()
        //: RangePushManager.share.func__pushToSubscribeAlert(appendParams: "&type=6")
        RangePushManager.share.quantityernalRepresentation(appendParams: (String(main_backgroundValue.suffix(7))))
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if occurrentWith()?.isKind(of: RubricViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = occurrentWith() as! RubricViewController
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
            //: vc.isRechargeOrSubscribeChangeMatch = true
            vc.isRechargeOrSubscribeChangeMatch = true
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func elect() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoRejectButton)
        const_screenFormat.occurrenceIn(eventID: user_appMsg)
        //: initVideoCallTime()
        isPath()
        //: uploadRepord(type: 3)
        nameType(type: 3)
        //: dismiss()
        areaEach()
    }

    //: func show() {
    func common() {
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
    @objc func areaEach() {
        //: popView?.dismissView()
        popView?.conversation()
        //: popView = nil
        popView = nil
        //: destroyTimer()
        breakShortAsideClickTimer()
    }
}

// MARK: - Layout

//: extension TalkingVideoCallPopUpView {
extension FourthThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func colorSubviews() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(playerView)
        contentView.addSubview(playerView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.insertSubview(topIcon, aboveSubview: playerView)
        contentView.insertSubview(topIcon, aboveSubview: playerView)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(svgaPlayer)
        contentView.addSubview(svgaPlayer)
        //: contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        //: finishBtn.addSubview(topBtn)
        finishBtn.addSubview(topBtn)
        //: finishBtn.addSubview(countDownLb)
        finishBtn.addSubview(countDownLb)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func appTotalerchange() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 295), height: actualWidth(w: 419)))
            make.size.equalTo(CGSize(width: actualWidth(w: 295), height: actualWidth(w: 419)))
        }
        //: playerView.snp.makeConstraints { make in
        playerView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(4)
            make.leading.top.equalTo(4)
            //: make.trailing.bottom.equalTo(-4)
            make.trailing.bottom.equalTo(-4)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(-12)
            make.leading.equalTo(-12)
            //: make.top.equalTo(-23)
            make.top.equalTo(-23)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 121), height: actualWidth(w: 52)))
            make.size.equalTo(CGSize(width: actualWidth(w: 121), height: actualWidth(w: 52)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.leading.equalTo(22)
            make.leading.equalTo(22)
            //: make.size.equalTo(42)
            make.size.equalTo(42)
        }

        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            //: make.centerY.equalTo(closeBtn)
            make.centerY.equalTo(closeBtn)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
        }
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.leading.equalTo(svgaPlayer).offset(6)
            make.top.leading.equalTo(svgaPlayer).offset(6)
            //: make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
            make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func totaleractionMagnitudeeraction() {
        //: addGradientLayerWithCorner(cornerRadius: 10, lineWidth: 4, colors: [UIColor.init(hex: "#864EFF")!.cgColor, UIColor.init(hex: "#F79AFF")!.cgColor])
        liveColors(cornerRadius: 10, lineWidth: 4, colors: [UIColor(hex: (String(main_userTextMsg)))!.cgColor, UIColor(hex: (String(k_leadingPath)))!.cgColor])
        //: self.getServercePermission()
        self.penalise()
        //: self.seTypeView()
        self.phaseOfTheMoon()
        //: self.beginPlayer()
        self.startTo()
        //: NotificationCenter.default.post(name: VIDEOCALL_INITIV_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: dataNoStr, object: nil)
    }

    //: private func addGradientLayerWithCorner(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
    private func liveColors(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: let gradientLayer = CAGradientLayer()
        let gradientLayer = CAGradientLayer()
        //: gradientLayer.frame = contentView.bounds
        gradientLayer.frame = contentView.bounds
        //: gradientLayer.colors = colors
        gradientLayer.colors = colors
        //: gradientLayer.cornerRadius = cornerRadius
        gradientLayer.cornerRadius = cornerRadius

        //: let maskLayer = CAShapeLayer()
        let maskLayer = CAShapeLayer()
        //: maskLayer.lineWidth = lineWidth
        maskLayer.lineWidth = lineWidth
        //: maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        //: maskLayer.fillColor = UIColor.clear.cgColor
        maskLayer.fillColor = UIColor.clear.cgColor
        //: maskLayer.strokeColor = UIColor.black.cgColor
        maskLayer.strokeColor = UIColor.black.cgColor

        //: gradientLayer.mask = maskLayer
        gradientLayer.mask = maskLayer
        //: contentView.layer.insertSublayer(gradientLayer, at: 0)
        contentView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
