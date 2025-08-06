
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_postKey:[UInt8] = [0x68,0x6f,0x68,0x75,0x29,0x62,0x6e,0x65,0x64,0x73,0x3b,0x28,0x21,0x69,0x60,0x72,0x21,0x6f,0x6e,0x75,0x21,0x63,0x64,0x64,0x6f,0x21,0x68,0x6c,0x71,0x6d,0x64,0x6c,0x64,0x6f,0x75,0x64,0x65]

private func mediumModelData(input num: UInt8) -> UInt8 {
    return num ^ 1
}

/*: "&type=6" :*/
fileprivate let dataInfoTitle:[Character] = ["&","t","y","p","e","=","6"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddObjectProtocol.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: import CallKit.CXCallObserver
import CallKit.CXCallObserver

//: class TalkingVideoInitivCallVC: TalkingBaseViewController {
class AddObjectProtocol: SizeViewController {
    //: var chatModel: TalkingVideoChatModel?
    var chatModel: ExamineRequestChatModel? // 视频通话模型
    //: private var miniView: TalkingVideoMiniView?
    private var miniView: FileMiniView? // 视频通话小窗口
    //: private var isFromMiniView = false
    private var isFromMiniView = false // 是否点击小窗口进入
    //: private var palyerStatus = VideoPlayerStatus.Unknown
    private var palyerStatus = ToPlayerStatus.Unknown // 视频播放状态
    //: var isRandomVCPush = false
    var isRandomVCPush = false // 是否随机视频匹配进来

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_postKey.map{mediumModelData(input: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: let nav = self.navigationController as! TalkingNavigationController
        let nav = self.navigationController as! DirectionReactiveCompatible
        //: nav.protectedPushVc = nil
        nav.protectedPushVc = nil
        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 设备不会进入休眠状态
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: if self.miniView != nil {
        if self.miniView != nil { // 移除小窗口
            //: self.miniView?.removeFromSuperview()
            self.miniView?.removeFromSuperview()
            //: self.miniView = nil
            self.miniView = nil
            //: TalkingSocketManager.shared.currWorkSpaceVC = nil
            WrittenRecordSocketDelegate.shared.currWorkSpaceVC = nil
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.RGBA(51, 51, 51, 1)
        self.view.backgroundColor = UIColor.loadRgba(51, 51, 51, 1)
        //: TalkingSocketManager.shared.workSpace = true
        WrittenRecordSocketDelegate.shared.workSpace = true
        //: setupSubviews()
        cellSubviews()
        //: setupSubViewsConstraint()
        telegramConstraint()
        //: req_callGetUserInfo()
        dub()
        //: self.startPreview()
        self.componentAcross()
    }

    //: deinit {
    deinit {
        //: self.player?.stopPlay()
        self.player?.startName()
        //: self.player?.removeVideoWidget()
        self.player?.aftereffect()
        //: self.player = nil
        self.player = nil
        //: UIApplication.shared.isIdleTimerDisabled = false
        UIApplication.shared.isIdleTimerDisabled = false
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: TalkingSocketManager.shared.workSpace = false
        WrittenRecordSocketDelegate.shared.workSpace = false
    }

    // MARK: - Lazy Load

    /// 视频通话操作按钮
    //: private lazy var interactionView: TalkingVideoInitivCallView = {
    private lazy var interactionView: ColorView = {
        //: let v = TalkingVideoInitivCallView(frame: .zero, chatModel: self.chatModel)
        let v = ColorView(frame: .zero, chatModel: self.chatModel)
        //: v.durationTime = Double(TalkingVideoInitivCallManager.shared.videoCallModel.callCountdown)
        v.durationTime = Double(TvThen.shared.videoCallModel.callCountdown)
        //: v.delegate = self
        v.delegate = self
        //: return v
        return v
        //: }()
    }()

    // 视频通话小窗口
    //: private lazy var windowView: TalkingVideoWindowView = {
    private lazy var windowView: EqualView = {
        //: let v = TalkingVideoWindowView()
        let v = EqualView()
        //: v.frame = CGRect(x: ScreenWidth-15-actualWidth(w: 125), y: StatusBarHeight+actualHeight(h: 25)+26+35, width: actualWidth(w: 125), height: actualHeight(h: 170))
        v.frame = CGRect(x: kQueryValue - 15 - actualWidth(w: 125), y: constLiveErrorMessage + actualHeight(h: 25) + 26 + 35, width: actualWidth(w: 125), height: actualHeight(h: 170))
        //: v.block = { [weak self] in
        v.block = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.changeRenderView()
            self.eraseCloseIn()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var videoManager: TalkingVideoInitivCallTool = {
    private lazy var videoManager: PanTool = {
        //: let m = TalkingVideoInitivCallTool()
        let m = PanTool()
        //: m.infoModel = self.chatModel
        m.infoModel = self.chatModel
        // 视图传递给manager
        //: m.bgVideoView = self.view
        m.bgVideoView = self.view
        //: m.bgView = self.interactionView
        m.bgView = self.interactionView
        //: m.windowVideoView = self.windowView.renderView
        m.windowVideoView = self.windowView.renderView
        //: return m
        return m
        //: }()
    }()

    // 懒加载初始化
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: MemoryReactiveCompatible? = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = MemoryReactiveCompatible()
        //: player.player.setMute(false)
        player.player.setMute(false)
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Request && 刷新UI

//: extension TalkingVideoInitivCallVC {
extension AddObjectProtocol {
    /// 初始化信息
    //: private func req_callGetUserInfo() {
    private func dub() {
        //: self.chatModel = TalkingVideoChatModel.init()
        self.chatModel = ExamineRequestChatModel()
        //: self.chatModel?.isCaller = true
        self.chatModel?.isCaller = true
        //: self.chatModel?.videoStage = .Calling
        self.chatModel?.videoStage = .Calling
        //: self.chatModel?.renderPostion = .SelfOnWindow
        self.chatModel?.renderPostion = .SelfOnWindow
        //: self.chatModel?.workSpaceNow = true
        self.chatModel?.workSpaceNow = true

        //: self.player?.delegate = self
        self.player?.delegate = self
        //: self.player?.playerWithUrlAndVideoView(url: TalkingVideoInitivCallManager.shared.videoCallModel.callVideoUrl, view: self.interactionView)
        self.player?.asDrunk(url: TvThen.shared.videoCallModel.callVideoUrl, view: self.interactionView)
        //: self.videoManager.startPreview()
        self.videoManager.namePreview()
    }
}

// MARK: - Event

//: extension TalkingVideoInitivCallVC {
extension AddObjectProtocol {
    /// 预览视频画面
    //: private func startPreview() {
    private func componentAcross() {
        //: self.videoManager.startPreview()
        self.videoManager.namePreview()
    }

    // 将当前视图从栈中移除
    //: private func popCurrentViewController(animated: Bool = true) {
    private func popViewCurrentControllerAnimated(animated: Bool = true) {
        //: self.navigationController?.popViewController(animated: animated)
        self.navigationController?.popViewController(animated: animated)
//        if self.navigationController?.topViewController == self {
//            self.navigationController?.popViewController(animated: animated)
//        } else {
//            if var vcArr = self.navigationController?.viewControllers {
//                if let index = vcArr.firstIndex(of: self) {
//                    vcArr.remove(at: index)
//                    self.navigationController?.setViewControllers(vcArr, animated: false)
//                }
//            }
//        }
    }

    /// 视频通话双方窗口转换
    //: private func changeRenderView() {
    private func eraseCloseIn() {
        //: if self.chatModel?.renderPostion == .selfOnBg {
        if self.chatModel?.renderPostion == .selfOnBg {
            //: self.chatModel?.renderPostion = .SelfOnWindow
            self.chatModel?.renderPostion = .SelfOnWindow
            //: self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            //: } else if self.chatModel?.renderPostion == .SelfOnWindow {
        } else if self.chatModel?.renderPostion == .SelfOnWindow {
            //: self.chatModel?.renderPostion = .selfOnBg
            self.chatModel?.renderPostion = .selfOnBg
            //: self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
            self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
        }

        //: self.videoManager.changeRenderView()
        self.videoManager.scintillationNameView()
    }
}

// MARK: - PlayerDelegete

//: extension TalkingVideoInitivCallVC: TalkingVideoPlayerDelegate {
extension AddObjectProtocol: StartRecordThen {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func chessPlayer(player _: MemoryReactiveCompatible, status: ToPlayerStatus) {
        //: palyerStatus = status
        palyerStatus = status
        //: if status == .Failed {
        if status == .Failed {
            //: uploadRecord.uploadRecordEvent(eventID: videoPlayFailure)
            const_screenFormat.occurrenceIn(eventID: k_intimateData)
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func linksmanInput(player _: MemoryReactiveCompatible, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func assumedTitleView(player _: MemoryReactiveCompatible, progress _: CGFloat) {}
}

// MARK: - ColoringObjectProtocol【通话按钮操作事件】

//: extension TalkingVideoInitivCallVC: Talking1v1VideoInteractionViewDelegate {
extension AddObjectProtocol: ColoringObjectProtocol {
    //: func interactionView_reportSucceed() {
    func beastExecute() {}

    /// 接听视频通话
    //: func interactionView_shouldAcceptCall() {
    func viewAdd() {}

    /// 拨打方结束通话
    //: func interactionView_shouldEndCall() {
    func titleIn() {
        //: if self.miniView != nil {
        if self.miniView != nil { // 移除小窗口
            //: self.miniView?.removeFromSuperview()
            self.miniView?.removeFromSuperview()
            //: self.miniView = nil
            self.miniView = nil
            //: TalkingSocketManager.shared.currWorkSpaceVC = nil
            WrittenRecordSocketDelegate.shared.currWorkSpaceVC = nil
        }
        //: let duration = TalkingVideoInitivCallManager.shared.videoCallModel.callCountdown - Int(interactionView.durationTime)
        let duration = TvThen.shared.videoCallModel.callCountdown - Int(interactionView.durationTime)
        //: let uid = interactionView.durationTime <= 0 ? "\(TalkingVideoInitivCallManager.shared.videoCallModel.uid)" : PunctuateThen.share.loginUserMode.userID
        let uid = interactionView.durationTime <= 0 ? "\(TvThen.shared.videoCallModel.uid)" : PunctuateThen.share.loginUserMode.userID
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 2, duration: duration, stopUid: uid) { succeed, result, errorModel in
        TvThen.shared.finishBecome(type: 2, duration: duration, stopUid: uid) { _, _, _ in
        }
        /// 视频失败上报
        //: if palyerStatus != .Finished && palyerStatus != .Playing {
        if palyerStatus != .Finished && palyerStatus != .Playing {
            //: uploadRecord.uploadRecordEvent(eventID: videoPlayFailure)
            const_screenFormat.occurrenceIn(eventID: k_intimateData)
        }
        //: popCurrentViewController()
        popViewCurrentControllerAnimated()

        //: if PunctuateThen.share.appUserConfigMode.popupCallEndEvent == 1 {
        if PunctuateThen.share.appUserConfigMode.popupCallEndEvent == 1 {
            //: RangePushManager.share.func__pushToHalfWebVC(webViewType: .RechargeToVideoInitivHalfPage)
            RangePushManager.share.isoclinicEvent(webViewType: .RechargeToVideoInitivHalfPage)
            //: } else if PunctuateThen.share.appUserConfigMode.popupCallEndEvent == 2 {
        } else if PunctuateThen.share.appUserConfigMode.popupCallEndEvent == 2 {
            //: RangePushManager.share.func__pushToSubscribeAlert(appendParams: "&type=6")
            RangePushManager.share.quantityernalRepresentation(appendParams: (String(dataInfoTitle)))
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
            //: if self.currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
            if self.occurrentWith()?.isKind(of: RubricViewController.self) == true {
                //: let vc = self.currentViewController() as! TalkingWebViewController
                let vc = self.occurrentWith() as! RubricViewController
                //: vc.isVideoCallRechargeHalfPage = true
                vc.isVideoCallRechargeHalfPage = true
                //: if !self.isRandomVCPush {
                if !self.isRandomVCPush {
                    /// 主动拨打视频弹窗，充值成功才切换到match
                    //: vc.isRechargeOrSubscribeChangeMatch = true
                    vc.isRechargeOrSubscribeChangeMatch = true
                }
            }
        }
    }

    /// 旋转摄像头
    //: func interactionView_shouldChangeCamera(isFront: Bool) {
    func birthday(isFront: Bool) {
        //: self.videoManager.useFrontCamera(isFront)
        self.videoManager.submit(isFront)
    }

    /// 开启/关闭摄像头
    //: func interactionView_shouldForbiddenCamera(forbidden: Bool) {
    func reciprocationUserRandomLine(forbidden: Bool) {
        //: self.videoManager.useCamera(!forbidden)
        self.videoManager.bigFrom(!forbidden)
    }

    /// 展示视频通话小窗口
    //: func interactionView_shouldDisplayMiniWindow() {
    func shadow() {
        //: TalkingSocketManager.shared.currWorkSpaceVC = self
        WrittenRecordSocketDelegate.shared.currWorkSpaceVC = self
        //: self.miniView = TalkingVideoMiniView.buildVideoMiniView()
        self.miniView = FileMiniView.videoComment()
        //: self.player?.player.setupVideoWidget(self.miniView?.renderView, insert: 0)
        self.player?.player.setupVideoWidget(self.miniView?.renderView, insert: 0)
        //: self.videoManager.smallRenderView = self.miniView?.renderView
        self.videoManager.smallRenderView = self.miniView?.renderView
        //: self.videoManager.enterSmallRenderMode()
        self.videoManager.center()
        //: self.miniView?.tapGestureBlock = { [weak self] in
        self.miniView?.tapGestureBlock = { [weak self] in // 还原回通话界面
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.videoManager.exitSmallRenderMode()
            self.videoManager.issueAddWay()
            //: if self.chatModel?.renderPostion == .selfOnBg {
            if self.chatModel?.renderPostion == .selfOnBg {
                //: self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
                self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
                //: } else if self.chatModel?.renderPostion == .SelfOnWindow {
            } else if self.chatModel?.renderPostion == .SelfOnWindow {
                //: self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
                self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            }
            //: self.videoManager.changeRenderView()
            self.videoManager.scintillationNameView()
            //: self.isFromMiniView = true
            self.isFromMiniView = true
            //: self.currentViewController()?.navigationController?.pushViewController(self, animated: true)
            self.occurrentWith()?.navigationController?.pushViewController(self, animated: true)
        }
        //: popCurrentViewController()
        popViewCurrentControllerAnimated()
    }
}

// MARK: - Layout

//: extension TalkingVideoInitivCallVC {
extension AddObjectProtocol {
    /// 添加视图
    //: private func setupSubviews() {
    private func cellSubviews() {
        //: self.view.layer.masksToBounds = true
        self.view.layer.masksToBounds = true
        //: self.view.addSubview(interactionView)
        self.view.addSubview(interactionView)
        //: self.interactionView.addWindowView(view: self.windowView)
        self.interactionView.duringExecute(view: self.windowView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func telegramConstraint() {
        //: interactionView.snp.makeConstraints { make in
        interactionView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
