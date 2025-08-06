
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kHaveData:[UInt8] = [0xcd,0xca,0xcd,0xd0,0x8c,0xc7,0xcb,0xc0,0xc1,0xd6,0x9e,0x8d,0x84,0xcc,0xc5,0xd7,0x84,0xca,0xcb,0xd0,0x84,0xc6,0xc1,0xc1,0xca,0x84,0xcd,0xc9,0xd4,0xc8,0xc1,0xc9,0xc1,0xca,0xd0,0xc1,0xc0]

/*: "  " :*/
fileprivate let dataModePath:String = "pathpath"

/*: "Say something...     " :*/
fileprivate let kImageFormat:String = "Say user add"
fileprivate let dataActualId:[Character] = ["i","n","g",".",".","."," "," "," "," "," "]

/*: "btn_video_gift_nor" :*/
fileprivate let data_downName:String = "btn_vcolor observer index left"
fileprivate let notiDataContent:String = "_gift_nomodel request"
fileprivate let appLiveValue:[Character] = ["r"]

/*: "btn_live_gd_nor" :*/
fileprivate let app_beautyNamePath:[Character] = ["b","t","n","_","l","i","v","e","_"]
fileprivate let userSizeFormat:String = "main size equalgd_nor"

/*: "btn_live_gd_pre" :*/
fileprivate let mainActualKey:String = "self true succeed cell colorbtn_live"
fileprivate let show_nameData:String = "_gd_preheight show frame for action"

/*: "btn_live_sx_nor" :*/
fileprivate let show_dataJumpFormat:String = "btn_lisize empty label"
fileprivate let appLabKey:[Character] = ["v","e","_","s","x","_","n","o","r"]

/*: "btn_live_sx_pre" :*/
fileprivate let userColorMessage:[Character] = ["b","t","n","_","l","i","v","e","_","s","x","_"]
fileprivate let k_connectionKey:[Character] = ["p","r","e"]

/*: "#FF2348" :*/
fileprivate let const_playerStr:String = "#FF2348system let model"

/*: "btn_live_yx_nor" :*/
fileprivate let user_solarId:String = "btn_livmake equal manager with at"
fileprivate let user_pathViewText:String = "e_yx_norcollection self"

/*: "btn_live_yx_pre" :*/
fileprivate let mainSuiteTitle:String = "case index i data segmentbtn_l"
fileprivate let data_fromStr:String = "record fillyx_pre"

/*: "toUid" :*/
fileprivate let dataEqualId:String = "toUidlabel successfully gift empty log"

/*: "giftId" :*/
fileprivate let k_colorFormat:String = "table"
fileprivate let showViewContent:String = "iftIdsize load result load"

/*: "giftNum" :*/
fileprivate let show_selectedValue:[Character] = ["g"]
fileprivate let mainSizeUrl:[Character] = ["i","f","t","N","u","m"]

/*: "pkgItemsetId" :*/
fileprivate let show_filterCountKey:String = "action error apppkgIte"

/*: "totalMfCoin" :*/
fileprivate let k_labData:[Character] = ["t","o","t","a","l","M","f"]
fileprivate let dataModeTablePath:[Character] = ["C","o","i","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommonReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingLiveRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol DirectionObjectProtocol: NSObjectProtocol {
    //: func func__commentBtnClick()
    func create()
}

//: class TalkingLiveRoomBottomView: UIView {
class CommonReactiveCompatible: UIView {
    //: var toUid: String?
    var toUid: String? /// 送给谁

    //: open weak var delegate: TalkingLiveRoomBottomViewDelegate?
    open weak var delegate: DirectionObjectProtocol?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        settle()
        //: setupSubViewsConstraint()
        makeConstraint()
        //: ModelDataV2Listener.shared.func__addDelegate(self)
        ModelDataV2Listener.shared.my(self)
        //: refreshRedCountStatus()
        lownessDeal()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kHaveData.map{$0^164}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(kImageFormat.prefix(4)) + "someth" + String(dataActualId)).localized, for: .normal)
        //: btn.setTitleColor(UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.8), for: .normal)
        btn.setTitleColor(UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0.8), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Regular, fontSize: 14)
        //: btn.setBackgroundColor(color: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.25), forState: .normal)
        btn.lineClick(color: UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.25), forState: .normal)
        //: btn.layer.cornerRadius = 17
        btn.layer.cornerRadius = 17
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: btn.contentHorizontalAlignment = .right
            btn.contentHorizontalAlignment = .right
            //: } else {
        } else {
            //: btn.contentHorizontalAlignment = .left
            btn.contentHorizontalAlignment = .left
        }
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(addBorder), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(data_downName.prefix(5)) + "ideo" + String(notiDataContent.prefix(8)) + String(appLiveValue))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(data_downName.prefix(5)) + "ideo" + String(notiDataContent.prefix(8)) + String(appLiveValue))), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(mode), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_gd_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(app_beautyNamePath) + String(userSizeFormat.suffix(6)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_gd_pre"), for: .highlighted)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(mainActualKey.suffix(8)) + String(show_nameData.prefix(7)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(viewMore), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(show_dataJumpFormat.prefix(6)) + String(appLabKey))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(userColorMessage) + String(k_connectionKey))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(toAGreaterExtent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(const_playerStr.prefix(7))))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var gameBtn: UIButton = {
    private lazy var gameBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_yx_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(user_solarId.prefix(7)) + String(user_pathViewText.prefix(8)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_yx_pre"), for: .highlighted)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(mainSuiteTitle.suffix(5)) + "ive_" + String(data_fromStr.suffix(6)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(gameBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(parlourGameDismiss), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: HiddenViewDelegate = {
        //: let giftV = TalkingChatGiftView(style: .live)
        let giftV = HiddenViewDelegate(style: .live)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle)
        //: return giftV
        return giftV
        //: }()
    }()

    //: private lazy var moreView: TalkingLiveRoomMoreView = {
    private lazy var moreView: TagMemoryWorldViewReactiveCompatible = {
        //: let v = TalkingLiveRoomMoreView()
        let v = TagMemoryWorldViewReactiveCompatible()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var gamesView: TalkingLiveRoomGamesView = {
    private lazy var gamesView: ShankGamesView = {
        //: let v = TalkingLiveRoomGamesView()
        let v = ShankGamesView()
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveRoomBottomView {
extension CommonReactiveCompatible {
    /// 拉起弹幕评论
    //: @objc private func commentBtnClick() {
    @objc private func addBorder() {
        //: delegate?.func__commentBtnClick()
        delegate?.create()
    }

    /// 送礼
    //: @objc private func giftBtnClick() {
    @objc private func mode() {
        //: func__sendGift()
        overFunc()
    }

    /// 聊天列表
    //: @objc private func chatBtnClick() {
    @objc private func toAGreaterExtent() {
        //: RangePushManager.share.func__pushToChatListVC(isHalfView: true)
        RangePushManager.share.chat(isHalfView: true)
    }

    /// 更多
    //: @objc private func moreBtnClick() {
    @objc private func viewMore() {
        //: moreView.showView()
        moreView.withDrop()
    }

    /// 游戏
    //: @objc private func gameBtnClick() {
    @objc private func parlourGameDismiss() {
        //: gamesView.showView(from: .LiveRoom)
        gamesView.imageBy(from: .LiveRoom)
    }
}

// MARK: - ActionObjectProtocol【刷新私信红点状态】

//: extension TalkingLiveRoomBottomView: IMManagerDelegate {
extension CommonReactiveCompatible: ActionObjectProtocol {
    //: func onUnreadMsgCountChanged(count: Int) {
    func pointOfReference(count _: Int) {
        //: refreshRedCountStatus()
        lownessDeal()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func lownessDeal() {
        //: var msgCount = 0
        var msgCount = 0
        //: let convLists = [ModelDataV2Listener.shared.topConvList, ModelDataV2Listener.shared.norConvList]
        let convLists = [ModelDataV2Listener.shared.topConvList, ModelDataV2Listener.shared.norConvList]
        //: for list in convLists {
        for list in convLists {
            //: if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
            if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
                //: msgCount += Int(model.unreadCount)
                msgCount += Int(model.unreadCount)
                //: break
                break // 找到第一个未读消息后退出，不需要全部计算，只要有未读数就展示红点
            }
        }
        //: redCountLab.isHidden = (msgCount == 0)
        redCountLab.isHidden = (msgCount == 0)
    }
}

// MARK: - 送礼

//: extension TalkingLiveRoomBottomView {
extension CommonReactiveCompatible {
    //: func func__sendGift() {
    func overFunc() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .live, completion: {
        NumberryReactiveCompatible.share.messageMatch(type: .live, completion: {
            //: self.func__showGiftChoiceView()
            self.heatBarrierView()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func heatBarrierView() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: PunctuateThen.share.loginUserMode.mf_coin)
        giftView.upWill(needReload: true, mf_coin: PunctuateThen.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        occurrentWith()?.view.addSubview(giftView)
        //: giftView.showView()
        giftView.tillSum()

        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: AvailableTransformable, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.viewBlow(giftModel: giftModel, giftNum: num)
        }
    }

    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func viewBlow(giftModel: AvailableTransformable, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            drawObserver(showMsg: show_limitMessage)
            //: return
            return
        }
        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: if toUid != nil {
        if toUid != nil {
            //: params["toUid"] = toUid
            params[(String(dataEqualId.prefix(5)))] = toUid
        }
        //: params["giftId"] = giftModel.gid
        params[(k_colorFormat.replacingOccurrences(of: "table", with: "g") + String(showViewContent.prefix(5)))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(show_selectedValue) + String(mainSizeUrl))] = giftNum
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(show_filterCountKey.suffix(6)) + "msetId")] = giftModel.pkgItemsetId
        }

        //: SomebodyRequestTool.req_SendGiftLive(param: params, completion: { succeed, result, errorModel in
        SomebodyRequestTool.complexion(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.below(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                //: return
                return
            }

            // 更新本地礼物背包
            //: if giftModel.pkgItemsetId != nil {
            if giftModel.pkgItemsetId != nil {
                //: self.giftView.bags_removeGiftPackage(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
                self.giftView.requestTo(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
            }
            //: self.func__insertGiftMessageWithExtral(extral: result as! [String: Any])
            self.lineExtral(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func lineExtral(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral

        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(k_labData) + String(dataModeTablePath))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(k_labData) + String(dataModeTablePath))] as! NSNumber
            //: PunctuateThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            PunctuateThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: PunctuateThen.share.loginUserMode.mf_coin)
        giftView.upWill(needReload: false, mf_coin: PunctuateThen.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func below(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
        //: if errorCode == 50203 {
        if errorCode == 50203 {
            //: guard PunctuateThen.share.loginUserMode.status != 1 else {
            guard PunctuateThen.share.loginUserMode.status != 1 else {
                //: if !errorStr.isEmptyString {
                if !errorStr.isEmptyString {
                    //: func__showStatusBarErrorMsg(showMsg: errorStr)
                    drawObserver(showMsg: errorStr)
                }
                //: return
                return
            }
            //: RangePushManager.share.func__jumpToWebRecharge(clickEvent: clickSendingiftsButton, sufficient: false)
            RangePushManager.share.picParams(clickEvent: user_statusRecordContent, sufficient: false)
            //: giftView.dismissView()
            giftView.harvestMoonSend()
            //: } else if errorCode == 10888 {
        } else if errorCode == 10888 {
            //: let view = TalkingLiveVipSubscribePopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = FileView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle))
            //: view.show()
            view.welt()
            //: } else {
        } else {
            //: if !errorStr.isEmptyString {
            if !errorStr.isEmptyString {
                //: func__showStatusBarErrorMsg(showMsg: errorStr)
                drawObserver(showMsg: errorStr)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomBottomView {
extension CommonReactiveCompatible {
    /// 刷新底部视图
    //: func refreshBottomView(_ liveModel: TalkingLiveRoomModel) {
    func writeStar(_ liveModel: ClickTransformable) {
        //: toUid = String(liveModel.streamerInfo.uid)
        toUid = String(liveModel.streamerInfo.uid)
        // 非主播没有更多按钮
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == PunctuateThen.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == PunctuateThen.share.loginUid)
        //: if isAnchor == false {
        if isAnchor == false {
            //: stackView.removeArrangedSubview(moreBtn)
            stackView.removeArrangedSubview(moreBtn)
            //: moreBtn.isHidden = true
            moreBtn.isHidden = true
        }

        // 非审核模式 && 有游戏
        //: if PunctuateThen.share.appStatus != AppSkinStatus.special.rawValue,
        if PunctuateThen.share.appStatus != HiddenHashableRepresentation.special.rawValue,
           //: liveModel.gameList.count > 0
           liveModel.gameList.count > 0
        {
            //: gameBtn.isHidden = false
            gameBtn.isHidden = false
            //: } else {
        } else {
            //: stackView.removeArrangedSubview(gameBtn)
            stackView.removeArrangedSubview(gameBtn)
            //: gameBtn.isHidden = true
            gameBtn.isHidden = true
        }
    }

    //: func setupSubviews() {
    func settle() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(commentBtn)
        contentView.addSubview(commentBtn)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(gameBtn)
        stackView.addArrangedSubview(gameBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(moreBtn)
        stackView.addArrangedSubview(moreBtn)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    //: func setupSubViewsConstraint() {
    func makeConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 33))
            make.height.equalTo(actualWidth(w: 33))
            //: make.width.equalTo(actualWidth(w: 157))
            make.width.equalTo(actualWidth(w: 157))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: moreBtn.snp.makeConstraints { make in
        moreBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: redCountLab.snp.makeConstraints { make in
        redCountLab.snp.makeConstraints { make in
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.width.height.equalTo(7)
            make.width.height.equalTo(7)
        }
        //: gameBtn.snp.makeConstraints { make in
        gameBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
    }
}
