
//: Declare String Begin

/*: "New friends" :*/
fileprivate let userStreamMsg:String = "New right for bottom"
fileprivate let noti_cellKey:[Character] = ["n","d","s"]

/*: "icon_yidu_pre" :*/
fileprivate let user_targetMsg:String = "icon_yself data to user"

/*: "You've got no message yet." :*/
fileprivate let app_quickModelUrl:[Character] = ["Y","o","u","\'","v","e"," "]
fileprivate let data_makeName:String = "house nogot no"
fileprivate let user_mediumMessage:String = "large layer titleage yet."

/*: "icon_kong_kong_default" :*/
fileprivate let kViewFormat:[Character] = ["i","c","o","n","_","k","o","n","g","_","k","o","n","g","_","d","e","f","a","u","l","t"]

/*: "Cancel" :*/
fileprivate let constPageDeviceStr:String = "bottom make toCancel"

/*: "OK" :*/
fileprivate let appBlockId:String = "kindK"

/*: "uid" :*/
fileprivate let constWhiteTurnMsg:[UInt8] = [0xe6,0xda,0xd5]

fileprivate func exceptReport(path num: UInt8) -> UInt8 {
    let value = Int(num) + 143
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Do you want to mark all messages as read?" :*/
fileprivate let show_numberPath:[UInt8] = [0x79,0x52,0x1d,0x44,0x52,0x48,0x1d,0x4a,0x5c,0x53,0x49,0x1d,0x49,0x52,0x1d,0x50,0x5c,0x4f,0x56,0x1d,0x5c,0x51,0x51,0x1d,0x50,0x58,0x4e,0x4e,0x5c,0x5a,0x58,0x4e,0x1d,0x5c,0x4e,0x1d,0x4f,0x58,0x5c,0x59,0x2]

/*: "MoreMessages一键已读失败：code: :*/
fileprivate let showSkinValue:String = "MoreMessprice text frame"
fileprivate let noti_inputKey:String = "ages一键list make"
fileprivate let noti_clickMsg:String = "actual if color size returnode:"

/*: , desc: :*/
fileprivate let app_viewTitle:String = ", desc:fail super"

/*: "btn_message_report_nor" :*/
fileprivate let constSumryAppData:String = "btn_melab any user path view"
fileprivate let userHiddenFormat:String = "self return_report_n"
fileprivate let kFileUrl:[Character] = ["o","r"]

/*: "#FF935D" :*/
fileprivate let showSizeLayerMessage:String = "message self#FF935D"

/*: "btn_message_block_nor" :*/
fileprivate let user_addFormat:[Character] = ["b","t","n","_","m","e","s","s","a","g","e","_","b","l","o"]
fileprivate let app_indexTitle:[Character] = ["c"]
fileprivate let user_topFormat:[Character] = ["k","_","n","o","r"]

/*: "#C179F9" :*/
fileprivate let userImageData:[Character] = ["#","C","1","7","9","F"]
fileprivate let dataUpName:[Character] = ["9"]

/*: "btn_message_delete_nor" :*/
fileprivate let showGiftModeQuickData:String = "btn_meguard section guard m value"
fileprivate let data_gesturePath:String = "e_delebag row self image"

/*: "#FF506D" :*/
fileprivate let noti_dayUserFrameKey:String = "#FF506Dmake in image"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ProviderRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/9/27.
//

//: import UIKit
import UIKit

//: class TalkingMoreMessagesListViewController: TalkingBaseViewController {
class ProviderRecognizerDelegate: SizeViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "New friends".localized
        self.title = (String(userStreamMsg.prefix(4)) + "frie" + String(noti_cellKey)).localized
        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_yidu_pre"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(user_targetMsg.prefix(6)) + "idu_pre")), for: .normal)
        //: btn.addTarget(self, action: #selector(clearBadgeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(badgeClick), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem = item
        self.navigationItem.rightBarButtonItem = item

        //: ModelDataV2Listener.shared.func__addDelegate(self)
        ModelDataV2Listener.shared.my(self)
        //: func__installNotificationObservers()
        timeInstall()
        //: createUI()
        voiceEqual()
        //: self.manager.req_moreMsgInitData()
        self.manager.viewFrom()
        //: refreshTableView()
        makeRestore()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let tableView = UITableView.init(frame: .zero, style: .grouped)
        let tableView = UITableView(frame: .zero, style: .grouped)
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.backgroundColor = .clear
        tableView.backgroundColor = .clear
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.register(TalkingChatListTableCell.self, forCellReuseIdentifier: TalkingChatListTableCell.className())
        tableView.register(ColorViewCell.self, forCellReuseIdentifier: ColorViewCell.className())
        //: return tableView
        return tableView
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = BareViewEmptyStyle()
        //: style.TipsTitle = "You've got no message yet.".localized
        style.TipsTitle = (String(app_quickModelUrl) + String(data_makeName.suffix(6)) + " mess" + String(user_mediumMessage.suffix(8))).localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (String(kViewFormat))
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()

    //: private lazy var manager: TalkingChatListManager = {
    private lazy var manager: FailListManager = //: return FailListManager()
        .init()
    //: }()
}

// MARK: - 刷新

//: extension TalkingMoreMessagesListViewController {
extension ProviderRecognizerDelegate {
    /// 刷新表格
    //: func refreshTableView() {
    func makeRestore() {
        //: guard self.manager.moreMsgArr.count != 0 else {
        guard self.manager.moreMsgArr.count != 0 else {
            //: self.tableView.isHidden = true
            self.tableView.isHidden = true
            //: self.emptyView.isHidden = false
            self.emptyView.isHidden = false
            //: self.reloadData()
            self.way()
            //: return
            return
        }

        //: self.tableView.isHidden = false
        self.tableView.isHidden = false
        //: self.emptyView.isHidden = true
        self.emptyView.isHidden = true
        //: self.reloadData()
        self.way()
    }

    /// 刷新
    //: func reloadData() {
    func way() {
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }
}

// MARK: - Event

//: extension TalkingMoreMessagesListViewController {
extension ProviderRecognizerDelegate {
    // 删除会话cell
    //: func deleteChatListCell(conversationModel: TalkingConversationModel) {
    func tumbleFrom(conversationModel: TableReactiveCompatible) {
        //: if !ModelDataV2Listener.shared.func__checkCanOperateList() { return }
        if !ModelDataV2Listener.shared.preserve() { return }

        //: AbTalkingPrivateChatAnimatTool.shared.removeConversionAnimat(targetID: conversationModel.targetId)
        PhotoThen.shared.inputId(targetID: conversationModel.targetId)
        //: ModelDataV2Listener.shared.func__removeConversation(targetId: conversationModel.targetId, dataType: .moreList)
        ModelDataV2Listener.shared.downrightType(targetId: conversationModel.targetId, dataType: .moreList)
        //: self.manager.req_removeConversationModel(conversationModel: conversationModel)
        self.manager.sizeApp(conversationModel: conversationModel)
        //: self.tableView.reloadData()
        self.tableView.reloadData()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
            // 刷新表格，更新红点
            //: self.refreshTableView()
            self.makeRestore()
        }
    }

    // 拉黑会话
    //: func blockChatListCell(conversationModel: TalkingConversationModel) {
    func positionTitle(conversationModel: TableReactiveCompatible) {
        // 拉黑/解除拉黑
        //: TalkingAlertShow.alert(title: nil,
        SizeReactiveCompatible.exceptHeader(title: nil,
                                      //: message: kMessage_blocking,
                                      message: const_netMsg,
                                      //: leftBtnTitle: "Cancel".localized,
                                      leftBtnTitle: (String(constPageDeviceStr.suffix(6))).localized,
                                      //: rightBtnTitle: "OK".localized) {
                                      rightBtnTitle: "OK".localized)
        {
            //: TalkingAlertShow.hideAlert()
            SizeReactiveCompatible.obstruct()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            SizeReactiveCompatible.obstruct()

            //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: conversationModel.userID, isBlack: true) { succeed, result, errorModel in
            BackgroundThen.nowadays(uid: conversationModel.userID, isBlack: true) { succeed, _, _ in
                //: guard succeed == true else {
                guard succeed == true else {
                    //: return
                    return
                }
                // 拉黑成功，从列表中移除
                //: self.deleteChatListCell(conversationModel: conversationModel)
                self.tumbleFrom(conversationModel: conversationModel)
                //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                NotificationCenter.default.post(name: app_lineUrl,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: ["uid": conversationModel.userID])
                                                userInfo: [String(bytes: constWhiteTurnMsg.map{exceptReport(path: $0)}, encoding: .utf8)!: conversationModel.userID])
            }
        }
    }

    // 举报会话
    //: func reportChatListCell(conversationModel: TalkingConversationModel) {
    func addMake(conversationModel: TableReactiveCompatible) {
        //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        let reportView = TitleView(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        //: reportView.showReportViewIn(view: nil)
        reportView.toColorView(view: nil)
    }

    /// 清除红点角标
    //: @objc private func clearBadgeButtonClick() {
    @objc private func badgeClick() {
        //: let config = ShowAlertConfig()
        let config = CurtilageAlertConfig()
        //: config.alignment = .center
        config.alignment = .center

        //: TalkingAlertShow.customAlert(message: "Do you want to mark all messages as read?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        SizeReactiveCompatible.buttonEnter(message: String(bytes: show_numberPath.map{$0^61}, encoding: .utf8)!.localized, leftBtnTitle: (String(constPageDeviceStr.suffix(6))).localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            SizeReactiveCompatible.obstruct()

            //: }, rightBlock: {
        }, rightBlock: {
            //: guard self.manager.req_moreMsgGetUnredConversationCount() > 0 else { return }
            guard self.manager.eradicate() > 0 else { return }
            //: self.manager.moreMsgArr.forEach { model in
            self.manager.moreMsgArr.forEach { model in
                //: guard model.unreadCount > 0 else { return }
                guard model.unreadCount > 0 else { return }
                //: V2TIMManager.sharedInstance().markC2CMessage(asRead: model.userID) {
                V2TIMManager.sharedInstance().markC2CMessage(asRead: model.userID) {
                    //: } fail: { code, desc in
                } fail: { code, desc in
                    //: UploadLogTool.writeLog(msg: "MoreMessages一键已读失败：code:\(code), desc:\(String(describing: desc))")
                    GestureLogTool.playChangeImage(msg: (String(showSkinValue.prefix(8)) + String(noti_inputKey.prefix(6)) + "已读失\u{8d25}：c" + String(noti_clickMsg.suffix(4))) + "\(code)" + (String(app_viewTitle.prefix(7))) + "\(String(describing: desc))")
                }
            }

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - 通知

//: extension TalkingMoreMessagesListViewController {
extension ProviderRecognizerDelegate {
    //: func func__installNotificationObservers() {
    func timeInstall() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getUserInfoDataFinish(notification:)),
                                               selector: #selector(cellInfo(notification:)),
                                               //: name: USER_INFO_MSG_LIST_NOTIFICATION,
                                               name: constVersionKey,
                                               //: object: nil)
                                               object: nil)

        // 更新消息列表用户在线状态
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserOnlineStatus(notif:)),
                                               selector: #selector(cellNotif(notif:)),
                                               //: name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                                               name: appNetPath,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func func__getUserInfoDataFinish(notification: NSNotification) {
    @objc func cellInfo(notification: NSNotification) {
        //: let dic = notification.object as? Dictionary<String, Any>
        let dic = notification.object as? [String: Any]
        //: for userID in dic!.keys {
        for userID in dic!.keys {
            //: let aInfoWrap: RequestHandyJSON = dic![userID] as! RequestHandyJSON
            let aInfoWrap: RequestHandyJSON = dic![userID] as! RequestHandyJSON
            //: let aModel: TalkingConversationModel? = ModelDataV2Listener.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: TableReactiveCompatible? = ModelDataV2Listener.shared.petText(targetId: userID)
            //: if aModel != nil && aModel!.gj_userInfo != aInfoWrap {
            if aModel != nil, aModel!.gj_userInfo != aInfoWrap {
                //: aModel!.gj_userInfo = aInfoWrap
                aModel!.gj_userInfo = aInfoWrap
            }
        }
        //: setHaveLocalInmate()
        cannulize()

        //: self.reloadData()
        self.way()
    }

    /// 音视频新通话新建立的会话，本地缓存有时，更新会话标识
    //: func setHaveLocalInmate() {
    func cannulize() {
        //: let intimate: Dictionary<String, Any> = UserDefaults.standard.object(forKey: isConversationIntimateCacheKey) as? Dictionary<String, Any> ?? Dictionary.init()
        let intimate: [String: Any] = UserDefaults.standard.object(forKey: show_buttonText) as? [String: Any] ?? Dictionary()
        //: for userID in intimate.keys {
        for userID in intimate.keys {
            //: let aModel: TalkingConversationModel? = ModelDataV2Listener.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: TableReactiveCompatible? = ModelDataV2Listener.shared.petText(targetId: userID)
            //: if aModel != nil {
            if aModel != nil {
                //: aModel!.gj_userInfo?.isHaveSession = true
                aModel!.gj_userInfo?.isHaveSession = true
            }
        }
        //: UserDefaults.standard.set(Dictionary<String, Any>.init(), forKey: isConversationIntimateCacheKey)
        UserDefaults.standard.set(Dictionary<String, Any>.init(), forKey: show_buttonText)
    }

    /// 更新消息列表用户在线状态
    //: @objc private func func__updateUserOnlineStatus(notif: Notification) {
    @objc private func cellNotif(notif: Notification) {
        //: guard let userInfo = notif.userInfo else { return }
        guard let userInfo = notif.userInfo else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if self.manager.update_userOnlineStatus(userInfo: userInfo as! [String: Any]) == true {
            if self.manager.deviseInfo(userInfo: userInfo as! [String: Any]) == true {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMoreMessagesListViewController: UITableViewDelegate, UITableViewDataSource {
extension ProviderRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    /// - UITableViewDataSource
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.manager.moreMsgArr.count
        return self.manager.moreMsgArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingChatListTableCell.className(), for: indexPath) as! TalkingChatListTableCell
        let cell = tableView.dequeueReusableCell(withIdentifier: ColorViewCell.className(), for: indexPath) as! ColorViewCell
        //: var model = self.manager.req_moreMsgConversationModel(indexPath: indexPath)
        var model = self.manager.orderedSeries(indexPath: indexPath)
        //: model = self.manager.getUserInfoFromCache(model: model)
        model = self.manager.infoModel(model: model)
        //: if !(model?.gj_userInfo?.tpAuth ?? false) {
        if !(model?.gj_userInfo?.tpAuth ?? false) {
            //: model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
            model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
        }
        //: cell.refreshCell(model: model)
        cell.breakInDrop(model: model)

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    func tableView(_: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else {
        guard let model = self.manager.orderedSeries(indexPath: indexPath) else {
            //: return false
            return false
        }
        //: guard model.chatType == .private else { return false }
        guard model.chatType == .private else { return false }

        //: return true
        return true
    }

    //: @available(iOS 11.0, *)
    @available(iOS 11.0, *)
    //: func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    func tableView(_: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else { return nil }
        guard let model = self.manager.orderedSeries(indexPath: indexPath) else { return nil }

        // 举报
        //: let reportBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let reportBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.reportChatListCell(conversationModel: model)
            self.addMake(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let reportBtnTrashcan = UIImage.BundleImageNamed(name: "btn_message_report_nor").cgImage {
        if let reportBtnTrashcan = UIImage.thoughtImageBundleSizeText(name: (String(constSumryAppData.prefix(6)) + "ssage" + String(userHiddenFormat.suffix(9)) + String(kFileUrl))).cgImage {
            //: reportBtn.image = ImageWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            reportBtn.image = PanWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: reportBtn.backgroundColor = UIColor(hex: "#FF935D")
        reportBtn.backgroundColor = UIColor(hex: (String(showSizeLayerMessage.suffix(7))))

        // 拉黑
        //: let blockBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let blockBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.blockChatListCell(conversationModel: model)
            self.positionTitle(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let blockBtnTrashcan = UIImage.BundleImageNamed(name: "btn_message_block_nor").cgImage {
        if let blockBtnTrashcan = UIImage.thoughtImageBundleSizeText(name: (String(user_addFormat) + String(app_indexTitle) + String(user_topFormat))).cgImage {
            //: blockBtn.image = ImageWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            blockBtn.image = PanWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: blockBtn.backgroundColor = UIColor(hex: "#C179F9")
        blockBtn.backgroundColor = UIColor(hex: (String(userImageData) + String(dataUpName)))

        // 删除
        //: let deleteBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let deleteBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.deleteChatListCell(conversationModel: model)
            self.tumbleFrom(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let deleteBtnTrashcan = UIImage.BundleImageNamed(name: "btn_message_delete_nor").cgImage {
        if let deleteBtnTrashcan = UIImage.thoughtImageBundleSizeText(name: (String(showGiftModeQuickData.prefix(6)) + "ssag" + String(data_gesturePath.prefix(6)) + "te_nor")).cgImage {
            //: deleteBtn.image = ImageWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            deleteBtn.image = PanWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: deleteBtn.backgroundColor = UIColor(hex: "#FF506D")
        deleteBtn.backgroundColor = UIColor(hex: (String(noti_dayUserFrameKey.prefix(7))))

        //: let actions = [deleteBtn, blockBtn, reportBtn]
        let actions = [deleteBtn, blockBtn, reportBtn]
        //: let config = UISwipeActionsConfiguration(actions: actions)
        let config = UISwipeActionsConfiguration(actions: actions)
        //: config.performsFirstActionWithFullSwipe = false
        config.performsFirstActionWithFullSwipe = false
        //: return config
        return config
    }

    /// - UITableViewDelegate
    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76.0
        return 76.0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else {
        guard let model = self.manager.orderedSeries(indexPath: indexPath) else {
            //: return
            return
        }
        // 入口埋点
        //: uploadRecord.uploadRecordEvent(eventID: ClickUserChatNoP, toUid: model.targetId)
        const_screenFormat.occurrenceIn(eventID: app_domainData, toUid: model.targetId)
        //: RangePushManager.share.func__pushToPriveteChatVC(chatID: model.targetId) { vc in
        RangePushManager.share.liveInsideCompletion(chatID: model.targetId) { vc in
            //: if model.gj_userInfo != nil {
            if model.gj_userInfo != nil {
                //: vc.isHaveSession = model.gj_userInfo!.isHaveSession
                vc.isHaveSession = model.gj_userInfo!.isHaveSession
            }
        }
    }
}

// MARK: - TalkingTXIMDelegate

//: extension TalkingMoreMessagesListViewController: IMManagerDelegate {
extension ProviderRecognizerDelegate: ActionObjectProtocol {
    //: func onRefreshConversationList(data: [TalkingConversationModel]) {
    func beyondPop(data _: [TableReactiveCompatible]) {
        //: self.manager.req_moreMsgInitData()
        self.manager.viewFrom()
        //: refreshTableView()
        makeRestore()
    }
}

// MARK: - Layout

//: extension TalkingMoreMessagesListViewController {
extension ProviderRecognizerDelegate {
    /// UI
    //: private func createUI() {
    private func voiceEqual() {
        //: view.addSubview(tableView)
        view.addSubview(tableView)
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalTo(tableView)
            make.edges.equalTo(tableView)
        }
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: self?.reloadData()
            self?.way()
        }
    }
}
