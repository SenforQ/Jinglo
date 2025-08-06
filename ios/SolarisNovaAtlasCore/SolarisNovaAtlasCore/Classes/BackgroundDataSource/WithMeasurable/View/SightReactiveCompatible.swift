
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userLogKitTotaleractionTitle:[UInt8] = [0xa5,0xaa,0xa5,0xb0,0x64,0x9f,0xab,0xa0,0xa1,0xae,0x76,0x65,0x5c,0xa4,0x9d,0xaf,0x5c,0xaa,0xab,0xb0,0x5c,0x9e,0xa1,0xa1,0xaa,0x5c,0xa5,0xa9,0xac,0xa8,0xa1,0xa9,0xa1,0xaa,0xb0,0xa1,0xa0]

fileprivate func plonkDown(direction num: UInt8) -> UInt8 {
    let value = Int(num) - 60
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "  " :*/
fileprivate let mainArrayPath:String = "managermanager"

/*: "Say something...     " :*/
fileprivate let userFrameCarrierText:[Character] = ["S","a","y"," ","s","o","m","e","t","h","i","n","g",".","."]
fileprivate let kStatusName:[Character] = ["."," "," "," "," "," "]

/*: "party_bottom_mic_open" :*/
fileprivate let show_playerId:String = "ppopty"
fileprivate let showTipUrl:String = "_bottmessage name adjustment"
fileprivate let dataMatchHiddenUrl:[Character] = ["o","m","_","m","i","c","_","o","p","e","n"]

/*: "party_bottom_mic_close" :*/
fileprivate let show_textFormat:[Character] = ["p","a","r","t","y","_","b","o","t","t","o","m","_","m","i","c","_","c","l","o","s","e"]

/*: "btn_video_gift_nor" :*/
fileprivate let kPlayId:String = "raw self equalbtn_"
fileprivate let mainAtFormat:String = "o_gift_nwith in count"
fileprivate let data_modelSizeMsg:String = "oclick"

/*: "btn_live_sx_nor" :*/
fileprivate let app_toText:String = "pi can view showbtn_li"
fileprivate let app_modelData:String = "self datax_nor"

/*: "btn_live_sx_pre" :*/
fileprivate let user_cellKey:String = "btn_text make to gift cell"
fileprivate let userMakeData:String = "sx_preturn layer hidden core"
fileprivate let data_valueMsg:String = "RE"

/*: "#FF2348" :*/
fileprivate let data_iconMessage:String = "actual m#FF2348"

/*: "Please contact the host to turn on the mic" :*/
fileprivate let appSkipText:[UInt8] = [0x63,0x69,0x6d,0x20,0x65,0x68,0x74,0x20,0x6e,0x6f,0x20,0x6e,0x72,0x75,0x74,0x20,0x6f,0x74,0x20,0x74,0x73,0x6f,0x68,0x20,0x65,0x68,0x74,0x20,0x74,0x63,0x61,0x74,0x6e,0x6f,0x63,0x20,0x65,0x73,0x61,0x65,0x6c,0x50]

/*: ", :*/
fileprivate let k_labFormat:String = ","

/*: "Please select an object" :*/
fileprivate let data_pathValue:[Character] = ["P","l","e","a","s","e"," ","s","e","l","e"]
fileprivate let dataEnterFormat:String = "ct an me false"

/*: "toUid" :*/
fileprivate let showAddFormat:[Character] = ["t","o","U","i","d"]

/*: "giftId" :*/
fileprivate let notiLabUserFormat:String = "thought view picture self returngiftId"

/*: "giftNum" :*/
fileprivate let const_makeKitMessage:String = "giftNuframe height make remove image"
fileprivate let notiModelKey:[Character] = ["m"]

/*: "roomId" :*/
fileprivate let k_rowLineKey:String = "return me return cookieroomId"

/*: "pkgItemsetId" :*/
fileprivate let dataPathTitle:[Character] = ["p","k","g","I","t","e","m","s","e","t","I"]
fileprivate let main_requestMessage:String = "count"

/*: "totalMfCoin" :*/
fileprivate let user_centerName:[Character] = ["t","o","t","a","l","M","f","C","o","i"]
fileprivate let userLeadingKey:String = "item"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SightReactiveCompatible.swift
//  SolarisNovaAtlasCore
//
//  Created by DouXiu on 2024/9/25.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingVoiceRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol TalkingObjectProtocol: NSObjectProtocol {
    /// 发布弹幕按钮点击事件
    //: func bottom_commentBtnClick()
    func bottomOrMove()
}

//: class TalkingVoiceRoomBottomView: UIView {
class SightReactiveCompatible: UIView {
    //: open weak var delegate: TalkingVoiceRoomBottomViewDelegate?
    open weak var delegate: TalkingObjectProtocol?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        saveUpAttribute()
        //: setupSubViewsConstraint()
        restrictionConstraint()
        //: ModelDataV2Listener.shared.func__addDelegate(self)
        ModelDataV2Listener.shared.my(self)
        //: refreshRedCountStatus()
        sinceImage()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userLogKitTotaleractionTitle.map{plonkDown(direction: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(userFrameCarrierText) + String(kStatusName)).localized, for: .normal)
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
        btn.addTarget(self, action: #selector(skinColourClick), for: .touchUpInside)
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
        //: v.alignment = .trailing
        v.alignment = .trailing
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var micBtn: UIButton = {
    private lazy var micBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "party_bottom_mic_open"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (show_playerId.replacingOccurrences(of: "pop", with: "ar") + String(showTipUrl.prefix(5)) + String(dataMatchHiddenUrl))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "party_bottom_mic_close"), for: .selected)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(show_textFormat))), for: .selected)
        //: btn.addTarget(self, action: #selector(micBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(resultToClick), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(kPlayId.suffix(4)) + "vide" + String(mainAtFormat.prefix(8)) + data_modelSizeMsg.replacingOccurrences(of: "click", with: "r"))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(kPlayId.suffix(4)) + "vide" + String(mainAtFormat.prefix(8)) + data_modelSizeMsg.replacingOccurrences(of: "click", with: "r"))), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(bearDoing), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(app_toText.suffix(6)) + "ve_s" + String(app_modelData.suffix(5)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(user_cellKey.prefix(4)) + "live_" + String(userMakeData.prefix(4)) + data_valueMsg.lowercased())), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(visualizationClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(data_iconMessage.suffix(7))))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: HiddenViewDelegate = {
        //: let giftV = TalkingChatGiftView(style: .party)
        let giftV = HiddenViewDelegate(style: .party)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle)
        //: return giftV
        return giftV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomBottomView {
extension SightReactiveCompatible {
    /// 刷新底部视图麦克风状态
    //: func refreshBottomMicStatus() {
    func statusIn() {
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = RangeManager.universalShared().sinceKey(key: RangeManager.universalShared().partyModel.position) else {
            //: micBtn.isHidden = true
            micBtn.isHidden = true
            //: return
            return
        }
        //: micBtn.isHidden = false
        micBtn.isHidden = false
        //: micBtn.isSelected = (itemModel.mikeStatus != 2)
        micBtn.isSelected = (itemModel.mikeStatus != 2)
    }

    /// 刷新礼物面板上麦头像
    //: func refreshGiftIcon() {
    func birdSEyeView() {
        //: giftView.partyIconView.refreshIconView()
        giftView.partyIconView.iconDown()
    }

    /// 拉起弹幕评论按钮点击事件
    //: @objc private func commentBtnClick() {
    @objc private func skinColourClick() {
        //: delegate?.bottom_commentBtnClick()
        delegate?.bottomOrMove()
    }

    /// 麦克风按钮点击事件
    //: @objc private func micBtnClick() {
    @objc private func resultToClick() {
        // 切换麦克风状态
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = RangeManager.universalShared().sinceKey(key: RangeManager.universalShared().partyModel.position) else {
            //: return
            return
        }
        //: switch itemModel.mikeStatus {
        switch itemModel.mikeStatus {
        //: case 0:
        case 0: // 闭麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 4, position: TalkingVoiceRoomManager.shared().partyModel.position)
            RangeManager.universalShared().red(type: 4, position: RangeManager.universalShared().partyModel.position)

        //: case 1:
        case 1: // 房主闭麦
            //: func__showStatusBarErrorMsg(showMsg: "Please contact the host to turn on the mic".localized)
            drawObserver(showMsg: String(bytes: appSkipText.reversed(), encoding: .utf8)!.localized)

        //: case 2:
        case 2: // 开麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 5, position: TalkingVoiceRoomManager.shared().partyModel.position)
            RangeManager.universalShared().red(type: 5, position: RangeManager.universalShared().partyModel.position)

        //: default:
        default:
            //: break
            break
        }
    }

    /// 聊天列表按钮点击事件
    //: @objc private func chatBtnClick() {
    @objc private func visualizationClick() {
        //: RangePushManager.share.func__pushToChatListVC(isHalfView: true)
        RangePushManager.share.chat(isHalfView: true)
    }

    /// 送礼按钮点击事件
    //: @objc private func giftBtnClick() {
    @objc private func bearDoing() {
        //: func__sendGift()
        itemFuncUid()
    }
}

// MARK: - 送礼

//: extension TalkingVoiceRoomBottomView {
extension SightReactiveCompatible {
    /// 展示礼物面板
    //: func func__sendGift(selectedUid: String? = nil) {
    func itemFuncUid(selectedUid: String? = nil) {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .party, completion: {
        NumberryReactiveCompatible.share.messageMatch(type: .party, completion: {
            //: self.func__showGiftChoiceView(selectedUid: selectedUid)
            self.decidingUid(selectedUid: selectedUid)
            //: })
        })
    }

    //: func func__showGiftChoiceView(selectedUid: String? = nil) {
    func decidingUid(selectedUid: String? = nil) {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: PunctuateThen.share.loginUserMode.mf_coin)
        giftView.upWill(needReload: true, mf_coin: PunctuateThen.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        occurrentWith()?.view.addSubview(giftView)
        //: if selectedUid != nil {
        if selectedUid != nil { // 选中单个用户
            //: giftView.partyIconView.refreshAllIcon(allSelected: false, selectedUid: selectedUid)
            giftView.partyIconView.resource(allSelected: false, selectedUid: selectedUid)
            //: } else {
        } else { // 全部选中
            //: giftView.partyIconView.refreshAllIcon(allSelected: true)
            giftView.partyIconView.resource(allSelected: true)
        }
        //: giftView.showView()
        giftView.tillSum()
        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: AvailableTransformable, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.coupon(giftModel: giftModel, giftNum: num)
        }
    }

    /// 送礼
    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func coupon(giftModel: AvailableTransformable, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            drawObserver(showMsg: show_limitMessage)
            //: return
            return
        }

        // 拼接需要送礼的Uid
        //: var toUid = ""
        var toUid = ""
        //: TalkingVoiceRoomManager.shared().getAllMikePositions().forEach { _, model in
        RangeManager.universalShared().total().forEach { _, model in
            //: if model.uid > 0, String(model.uid) != PunctuateThen.share.loginUid, model.needGift == true {
            if model.uid > 0, String(model.uid) != PunctuateThen.share.loginUid, model.needGift == true {
                //: if toUid.count > 0 {
                if toUid.count > 0 {
                    //: toUid.append(",\(model.uid)")
                    toUid.append(",\(model.uid)")
                    //: } else {
                } else {
                    //: toUid.append("\(model.uid)")
                    toUid.append("\(model.uid)")
                }
            }
        }
        //: guard toUid.count > 0 else {
        guard toUid.count > 0 else {
            //: func__showStatusBarErrorMsg(showMsg: "Please select an object".localized)
            drawObserver(showMsg: (String(data_pathValue) + String(dataEnterFormat.prefix(6)) + "object").localized)
            //: return
            return
        }

        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: params["toUid"] = toUid
        params[(String(showAddFormat))] = toUid
        //: params["giftId"] = giftModel.gid
        params[(String(notiLabUserFormat.suffix(6)))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(const_makeKitMessage.prefix(6)) + String(notiModelKey))] = giftNum
        //: params["roomId"] = TalkingVoiceRoomManager.shared().partyModel.roomId
        params[(String(k_rowLineKey.suffix(6)))] = RangeManager.universalShared().partyModel.roomId
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(dataPathTitle) + main_requestMessage.replacingOccurrences(of: "count", with: "d"))] = giftModel.pkgItemsetId
        }

        //: SomebodyRequestTool.req_sendPartyGift(param: params, completion: { succeed, result, errorModel in
        SomebodyRequestTool.smoothLoad(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.vox(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
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
            self.beforeBlock(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func beforeBlock(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral
        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(user_centerName) + userLeadingKey.replacingOccurrences(of: "item", with: "n"))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(user_centerName) + userLeadingKey.replacingOccurrences(of: "item", with: "n"))] as! NSNumber
            //: PunctuateThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            PunctuateThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: PunctuateThen.share.loginUserMode.mf_coin)
        giftView.upWill(needReload: false, mf_coin: PunctuateThen.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func vox(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
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

// MARK: - ActionObjectProtocol【刷新私信红点状态】

//: extension TalkingVoiceRoomBottomView: IMManagerDelegate {
extension SightReactiveCompatible: ActionObjectProtocol {
    //: func onUnreadMsgCountChanged(count: Int) {
    func pointOfReference(count _: Int) {
        //: refreshRedCountStatus()
        sinceImage()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func sinceImage() {
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

// MARK: - Layout

//: extension TalkingVoiceRoomBottomView {
extension SightReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func saveUpAttribute() {
        //: addSubview(commentBtn)
        addSubview(commentBtn)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(micBtn)
        stackView.addArrangedSubview(micBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    /// 更新布局
    //: private func setupSubViewsConstraint() {
    private func restrictionConstraint() {
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
        //: micBtn.snp.makeConstraints { make in
        micBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
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
    }
}
