
//: Declare String Begin

/*: "#201E50" :*/
fileprivate let dataUserBackFormat:[Character] = ["#","2","0","1","E"]
fileprivate let dataViewValue:[Character] = ["5","0"]

/*: "#1F1624" :*/
fileprivate let k_dataText:String = "return equal for input#1F1624"

/*: "quick_video_topview" :*/
fileprivate let noti_equalText:[Character] = ["q","u","i","c","k","_","v"]
fileprivate let constViewNumberContent:String = "ideo_model mode track arc button"

/*: "btn_back_white" :*/
fileprivate let constFileData:[Character] = ["b","t","n","_","b","a","c","k","_","w","h"]
fileprivate let constSexId:[Character] = ["i","t","e"]

/*: "Random Video" :*/
fileprivate let const_sourceMessage:String = "with express equal model barRandom"

/*: "icon_rank_coin" :*/
fileprivate let app_tempUrl:[Character] = ["i","c","o","n","_","r","a","n","k","_","c","o","i","n"]

/*: "btn_quick_back_nor" :*/
fileprivate let noti_stageArrayMessage:[Character] = ["b","t","n","_","q","u"]
fileprivate let showImageDataValue:String = "ICK"
fileprivate let showViewKey:[Character] = ["_","b","a","c","k","_","n","o","r"]

/*: "icon_video_skip" :*/
fileprivate let noti_showData:[Character] = ["i","c","o","n","_","v","i","d","e","o","_","s","k","i","p"]

/*: "#9610FF" :*/
fileprivate let dataSearchTitle:[Character] = ["#","9","6","1","0","F","F"]

/*: "#8566FF" :*/
fileprivate let k_arrayName:String = "#8566FFany guard limit for"

/*: "icon_coin_match_line" :*/
fileprivate let notiTitleUrl:[Character] = ["i","c","o","n","_","c","o","i","n","_"]
fileprivate let app_backgroundKey:String = "postatch"
fileprivate let mainGiftValue:[Character] = ["_","l","i","n","e"]

/*: "matchId" :*/
fileprivate let user_equalFormat:[UInt8] = [0xb1,0xbd,0xa8,0xbf,0xb4,0x95,0xb8]

/*: "source" :*/
fileprivate let noti_viewId:[UInt8] = [0xb9,0xa5,0xbf,0xb8,0xa9,0xaf]

private func buttonPrice(following num: UInt8) -> UInt8 {
    return num ^ 202
}

/*: "type" :*/
fileprivate let const_imageName:[UInt8] = [0x65,0x70,0x79,0x74]

/*: "uid" :*/
fileprivate let notiTopName:[Character] = ["u","i","d"]

/*: "fromFreeCall" :*/
fileprivate let appLoadMsg:String = "push areafromFree"
fileprivate let user_requestMsg:[Character] = ["C","a","l","l"]

/*: "cmd" :*/
fileprivate let noti_inputKey:[UInt8] = [0x64,0x6d,0x63]

/*: "requestCall" :*/
fileprivate let dataRecordStr:[Character] = ["r","e","q","u","e","s","t","C","a","l"]
fileprivate let notiSendUrl:String = "page"

/*: "data" :*/
fileprivate let const_thoughtFormat:[UInt8] = [0x61,0x74,0x61,0x64]

/*: "onRequestCall" :*/
fileprivate let noti_inputValue:[Character] = ["o","n","R","e","q","u","e","s","t","C","a","l"]
fileprivate let main_bottomTitle:String = "mode"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToolErrorDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/11/7.
//

//: import UIKit
import UIKit

//: class TalkingMatchResultViewController: TalkingBaseViewController {
class ToolErrorDelegate: SizeViewController {
    //: private var currentModel = TalkingMatchResultModel()
    private var currentModel = TitleMeasurable() // 当前展示的model

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 每次打开更新金额
        //: refreshCoin()
        statusPath()
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        sizeSubviews()
        //: setupSubViewsConstraint()
        fromVideo()
        //: refreshUI()
        commentMethod()

        /// 添加刷新余额的通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(refreshCoin),
                                               selector: #selector(statusPath),
                                               //: name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION,
                                               name: main_appAgentTitle,
                                               //: object: nil)
                                               object: nil)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        WrittenRecordSocketDelegate.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        WrittenRecordSocketDelegate.shared.errorDelegate = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var backView: UIImageView = {
    private lazy var backView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "#201E50")!.cgColor, UIColor.init(hex: "#1F1624")!.cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
        view.image = UIImage.preface(colors: [UIColor(hex: (String(dataUserBackFormat) + String(dataViewValue)))!.cgColor, UIColor(hex: (String(k_dataText.suffix(7))))!.cgColor], size: CGSize(width: kQueryValue, height: notiKeyTitle))
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true

        //: let topView = UIImageView.init()
        let topView = UIImageView()
        //: topView.image = UIImage.BundleImageNamed(name: "quick_video_topview")
        topView.image = UIImage.thoughtImageBundleSizeText(name: (String(noti_equalText) + String(constViewNumberContent.prefix(5)) + "topview"))
        //: topView.isUserInteractionEnabled = true
        topView.isUserInteractionEnabled = true
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.width.height.equalTo(actualWidth(w: 218))
            make.width.height.equalTo(actualWidth(w: 218))
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var navView: UIView = {
    private lazy var navView: UIView = {
        //: let nav = UIView()
        let nav = UIView()
        //: nav.backgroundColor = .clear
        nav.backgroundColor = .clear
        // 返回
        //: let backBtn = UIButton(type: .custom)
        let backBtn = UIButton(type: .custom)
        //: backBtn.setImage(UIImage.BundleImageNamed(name: "btn_back_white"), for: .normal)
        backBtn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(constFileData) + String(constSexId))), for: .normal)
        //: backBtn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(managingDirector), for: .touchUpInside)
        //: nav.addSubview(backBtn)
        nav.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.width.equalTo(20)
            make.width.equalTo(20)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.top.equalTo(StatusBarHeight+12)
            make.top.equalTo(constLiveErrorMessage + 12)
        }
        // 标题
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.atomic(fontSize: 17)
        titleLab.font = UIFont.atomic(fontSize: 17)
        //: titleLab.textColor = UIColor.white
        titleLab.textColor = UIColor.white
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = "Random Video".localized
        titleLab.text = (String(const_sourceMessage.suffix(6)) + " Video").localized
        //: nav.addSubview(titleLab)
        nav.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        // 余额
        //: let coinBtn = TalkingButton()
        let coinBtn = StartImageButton()
        //: coinBtn.tag = 1001
        coinBtn.tag = 1001
        //: coinBtn.setImage(UIImage.BundleImageNamed(name: "icon_rank_coin"), for: .normal)
        coinBtn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(app_tempUrl))), for: .normal)
        //: coinBtn.setImage(UIImage.BundleImageNamed(name: "icon_rank_coin"), for: .disabled)
        coinBtn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(app_tempUrl))), for: .disabled)
        //: coinBtn.isEnabled = false
        coinBtn.isEnabled = false
        //: coinBtn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        coinBtn.setTitleColor(UIColor.toEvent(), for: .normal)
        //: coinBtn.setTitle("\(PunctuateThen.share.loginUserMode.mf_coin)", for: .normal)
        coinBtn.setTitle("\(PunctuateThen.share.loginUserMode.mf_coin)", for: .normal)
        //: coinBtn.titleLabel?.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        coinBtn.titleLabel?.font = UIFont.clickLarge(type: .Semibold, fontSize: 15)
        //: coinBtn.backgroundColor = UIColor.white
        coinBtn.backgroundColor = UIColor.white
        //: coinBtn.layer.cornerRadius = 12
        coinBtn.layer.cornerRadius = 12
        //: coinBtn.imageAlignment = .left
        coinBtn.imageAlignment = .left
//        coinBtn.spaceBetweenTitleAndImage = 3
        //: nav.addSubview(coinBtn)
        nav.addSubview(coinBtn)
        //: coinBtn.snp.makeConstraints { make in
        coinBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: return nav
        return nav
        //: }()
    }()

    //: private lazy var picturesView: TalkingMatchResultPicturesView = {
    private lazy var picturesView: StylePicturesView = {
        //: let v = TalkingMatchResultPicturesView(frame: .zero)
        let v = StylePicturesView(frame: .zero)
        //: v.matchBackBlock = { [weak self] in
        v.matchBackBlock = { [weak self] in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: self.clickBackButtonAction()
            self.managingDirector()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var showLastBtn: UIButton = {
    private lazy var showLastBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "btn_quick_back_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.thoughtImageBundleSizeText(name: (String(noti_stageArrayMessage) + showImageDataValue.lowercased() + String(showViewKey))), for: .normal)
        //: btn.addTarget(self, action: #selector(showLastButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(constraintError), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var skipBtn: UIButton = {
    private lazy var skipBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_video_skip"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(noti_showData))), for: .normal)
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(managingDirector), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(callButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(valueMove), for: .touchUpInside)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "#9610FF")!.cgColor, UIColor.init(hex: "#8566FF")!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        btn.setBackgroundImage(UIImage.sinceNext(colors: [UIColor(hex: (String(dataSearchTitle)))!.cgColor, UIColor(hex: (String(k_arrayName.prefix(7))))!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        //: btn.layer.cornerRadius = 69/2
        btn.layer.cornerRadius = 69 / 2
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.titleLabel?.numberOfLines = 2
        btn.titleLabel?.numberOfLines = 2

        //: return btn
        return btn
        //: }()
    }()

    //: lazy var showLastArr: [TalkingMatchResultModel] = {
    lazy var showLastArr: [TitleMeasurable] = //: return Array<TitleMeasurable>()
        .init()
    //: }()

    //: lazy var dzView: UIImageView = {
    lazy var dzView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.BundleImageNamed(name: "icon_coin_match_line")
        view.image = UIImage.thoughtImageBundleSizeText(name: (String(notiTitleUrl) + app_backgroundKey.replacingOccurrences(of: "post", with: "m") + String(mainGiftValue)))
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMatchResultViewController {
extension ToolErrorDelegate {
    /// 返回按钮
    //: @objc private func clickBackButtonAction() {
    @objc private func managingDirector() {
        //: if self.presentedViewController != nil {
        if self.presentedViewController != nil { // 可能有重置弹窗未消除的情况，许手动消除
            //: self.presentedViewController?.dismiss(animated: true)
            self.presentedViewController?.dismiss(animated: true)
        }
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 拨打视频通话socket
    //: @objc private func callButtonClick() {
    @objc private func valueMove() {
        //: var data: [String: Any] = ["matchId": self.currentModel.matchId,
        var data: [String: Any] = [String(bytes: user_equalFormat.map{$0^220}, encoding: .utf8)!: self.currentModel.matchId,
                                   //: "source": self.currentModel.source,
                                   String(bytes: noti_viewId.map{buttonPrice(following: $0)}, encoding: .utf8)!: self.currentModel.source,
                                   //: "type": self.currentModel.type,
                                   String(bytes: const_imageName.reversed(), encoding: .utf8)!: self.currentModel.type,
                                   //: "uid": self.currentModel.uid]
                                   (String(notiTopName)): self.currentModel.uid]
        //: if PunctuateThen.share.loginUserMode.freeCallTimes > 0 && PunctuateThen.share.loginUserMode.sex == Gender.male.rawValue {
        if PunctuateThen.share.loginUserMode.freeCallTimes > 0, PunctuateThen.share.loginUserMode.sex == TopComparable.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(appLoadMsg.suffix(8)) + String(user_requestMsg)))
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: noti_inputKey.reversed(), encoding: .utf8)!: (String(dataRecordStr) + notiSendUrl.replacingOccurrences(of: "page", with: "l")), String(bytes: const_thoughtFormat.reversed(), encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        WrittenRecordSocketDelegate.shared.belowAdd(info: info)
        //: TalkingSocketManager.shared.videoMatchDelegate = self
        WrittenRecordSocketDelegate.shared.videoMatchDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        WrittenRecordSocketDelegate.shared.errorDelegate = self
    }

    /// 通知刷新余额
    //: @objc private func refreshCoin() {
    @objc private func statusPath() {
        //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
        ManagingDirectorThen.exceptViewCompletion { succeed, _, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! StartImageButton
            //: coinBtn.setTitle(PunctuateThen.share.loginUserMode.mf_coin, for: .normal)
            coinBtn.setTitle(PunctuateThen.share.loginUserMode.mf_coin, for: .normal)
        }
    }

    /// 展示上一个视频速配结果
    //: @objc private func showLastButtonClick() {
    @objc private func constraintError() {
        //: showLastArr.removeLast()
        showLastArr.removeLast()
        //: refreshUI()
        commentMethod()
    }
}

// MARK: - SocketManagerMatchResultDelegate

//: extension TalkingMatchResultViewController: SocketManagerVideoMatchDelegate {
extension ToolErrorDelegate: VoiceObjectProtocol {
    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func onObject(data _: [String: Any]) {}

    /// 匹配成功，可以拨打通话（此处跳转特殊处理）
    //: func socket_match_onRequestCall(data: [String: Any]) {
    func match(data: [String: Any]) {
        //: var arrM = self.navigationController!.viewControllers
        var arrM = self.navigationController!.viewControllers
        //: for (index, vc) in self.navigationController!.viewControllers.enumerated() {
        for (index, vc) in self.navigationController!.viewControllers.enumerated() {
            //: if vc.isKind(of: TalkingMatchResultViewController.self) {
            if vc.isKind(of: ToolErrorDelegate.self) {
                //: arrM.remove(at: index)
                arrM.remove(at: index)
                //: break
                break
            }
        }
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.currentModel.uid
        newData[(String(notiTopName))] = self.currentModel.uid
        //: let vc = TalkingVideoChatViewController()
        let vc = KeyPartyDelegate()
        //: vc.chatModel = TalkingVideoChatModel.getVideoModel(info: newData, situation: .Start)
        vc.chatModel = ExamineRequestChatModel.sharedInfo(info: newData, situation: .Start)

        //: vc.hidesBottomBarWhenPushed = true
        vc.hidesBottomBarWhenPushed = true
        //: arrM.append(vc)
        arrM.append(vc)
        //: self.navigationController?.setViewControllers(arrM, animated: true)
        self.navigationController?.setViewControllers(arrM, animated: true)
    }
}

// MARK: - SendToErrorDelegate

//: extension TalkingMatchResultViewController: TalkingSocketManagerErrorDelegate {
extension ToolErrorDelegate: SendToErrorDelegate {
    /// socket收到失败消息
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func nameUseData(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(noti_inputValue) + main_bottomTitle.replacingOccurrences(of: "mode", with: "l")) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.drawObserver(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.CallEnd.rawValue {
            if errorNo == ColorMirrorPath.CallEnd.rawValue {
                //: clickBackButtonAction()
                managingDirector()
                //: } else if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            } else if errorNo == ColorMirrorPath.MoneyLack.rawValue {
                //: guard PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue else { return }
                //: RangePushManager.share.func__jumpToWebRecharge(sufficient: false)
                RangePushManager.share.picParams(sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingMatchResultViewController {
extension ToolErrorDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func sizeSubviews() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.addSubview(navView)
        backView.addSubview(navView)
        //: backView.addSubview(picturesView)
        backView.addSubview(picturesView)
        //: backView.addSubview(showLastBtn)
        backView.addSubview(showLastBtn)
        //: backView.addSubview(skipBtn)
        backView.addSubview(skipBtn)
        //: backView.addSubview(callBtn)
        backView.addSubview(callBtn)
        //: callBtn.addSubview(dzView)
        callBtn.addSubview(dzView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func fromVideo() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(mainKeyValue)
        }
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-(kDeviceSafeBottomHeight+36))
            make.bottom.equalTo(-(k_netId + 36))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(69)
            make.height.equalTo(69)
            //: make.width.equalTo(140)
            make.width.equalTo(140)
        }

        //: picturesView.snp.makeConstraints { make in
        picturesView.snp.makeConstraints { make in
            //: make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
            //: make.trailing.equalTo(-22)
            make.trailing.equalTo(-22)
            //: make.bottom.equalTo(callBtn.snp.top).offset(-32)
            make.bottom.equalTo(callBtn.snp.top).offset(-32)
        }
        //: showLastBtn.snp.makeConstraints { make in
        showLastBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(CGSize(width: 50, height: 50))
            make.size.equalTo(CGSize(width: 50, height: 50))
        }

        //: dzView.snp.makeConstraints { make in
        dzView.snp.makeConstraints { make in
            //: make.leading.equalTo(146)
            make.leading.equalTo(146)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(8)
            make.height.equalTo(8)
            //: make.width.equalTo(42)
            make.width.equalTo(42)
        }
        //: skipBtn.snp.makeConstraints { make in
        skipBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(callBtn.snp.trailing).offset(21)
            make.leading.equalTo(callBtn.snp.trailing).offset(21)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(50)
            make.size.equalTo(50)
        }
    }

    /// 刷新UI
    //: private func refreshUI() {
    private func commentMethod() {
        //: if showLastArr.count > 0 {
        if showLastArr.count > 0 { // 最后一个是最新数据
            //: currentModel = showLastArr.last!
            currentModel = showLastArr.last!
        }
        //: setPriceBtn()
        imaginationImage()
        //: picturesView.updatePicturesView(model: currentModel)
        picturesView.naturalProcess(model: currentModel)
        //: picturesView.matchPlayVideoBlock = { [weak self] (videoUrl) in
        picturesView.matchPlayVideoBlock = { [weak self] videoUrl in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoUrl)
            let vc = FailViewController(videoPath: videoUrl)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.occurrentWith()?.navigationController?.pushViewController(vc, animated: true)
        }

        //: showLastBtn.isHidden = (showLastArr.count >= 2) ? false:true
        showLastBtn.isHidden = (showLastArr.count >= 2) ? false : true

        // 审核模式隐藏金币
        //: if PunctuateThen.share.appStatus != AppSkinStatus.normal.rawValue {
        if PunctuateThen.share.appStatus != HiddenHashableRepresentation.normal.rawValue {
            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! StartImageButton
            //: coinBtn.isHidden = true
            coinBtn.isHidden = true
            //: setPriceBtn()
            imaginationImage()
        }
    }

    //: func setPriceBtn() {
    func imaginationImage() {
        //: let attrString = String.setPriceStr(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: PunctuateThen.share.loginUserMode.freeCallTimes)
        let attrString = String.noneChange(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: PunctuateThen.share.loginUserMode.freeCallTimes)
        //: callBtn.isHidden = false
        callBtn.isHidden = false
        //: callBtn.setAttributedTitle(attrString, for: .normal)
        callBtn.setAttributedTitle(attrString, for: .normal)
    }
}
