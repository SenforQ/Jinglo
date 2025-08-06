
//: Declare String Begin

/*: "mfBean" :*/
fileprivate let showQueryedPathTitle:[UInt8] = [0x6e,0x61,0x65,0x42,0x66,0x6d]

/*: "bannerList" :*/
fileprivate let constModelFormat:[Character] = ["b","a","n"]
fileprivate let k_lipMakeStr:String = "nerListbeast extra shared data"

/*: "icon_me_chatsettings" :*/
fileprivate let data_atPath:String = "self var bottom let viewicon_"
fileprivate let const_colorTitle:String = "ttsizegs"

/*: "icon_me_automatic" :*/
fileprivate let kLabelUrl:String = "var breakicon_me"
fileprivate let mainStatusKey:String = "_autompath gift model"

/*: "icon_me_settings" :*/
fileprivate let show_originFormat:String = "icon_info any image me"
fileprivate let userTitlePath:String = "ieffects"

/*: "icon_me_tc" :*/
fileprivate let mainEqualData:String = "icon_name type message if"
fileprivate let noti_listFormat:[Character] = ["m","e","_","t","c"]

/*: "icon_me_videoSet" :*/
fileprivate let k_timeVoiceName:String = "icon_view message in not"
fileprivate let constEventName:String = "item"
fileprivate let user_destinationViewText:[Character] = ["e","o","S","e","t"]

/*: "icon_me_bs" :*/
fileprivate let main_imageMessage:String = "icon_mcolor of"
fileprivate let showTimeGiftData:String = "request viewe_bs"

/*: "Enter " :*/
fileprivate let show_indexName:[Character] = ["E","n","t","e","r"," "]

/*: "Settings" :*/
fileprivate let k_arrayUniformTitleFormat:[Character] = ["S","e","t","t","i","n","g","s"]

/*: " and open " :*/
fileprivate let userErrMessage:[Character] = [" ","a","n","d"," ","o","p","e"]
fileprivate let data_commentText:String = "n extension section for count"

/*: "Camera" :*/
fileprivate let noti_viewText:String = "c"
fileprivate let notiShootTitle:[Character] = ["a","m","e","r","a"]

/*: " permission to use this function normally" :*/
fileprivate let showTempMakeElseName:[UInt8] = [0x5c,0xc,0x19,0xe,0x11,0x15,0xf,0xf,0x15,0x13,0x12,0x5c,0x8,0x13,0x5c,0x9,0xf,0x19,0x5c,0x8,0x14,0x15,0xf,0x5c,0x1a,0x9,0x12,0x1f,0x8,0x15,0x13,0x12,0x5c,0x12,0x13,0xe,0x11,0x1d,0x10,0x10,0x5]

private func actionManager(scale num: UInt8) -> UInt8 {
    return num ^ 124
}

/*: "Cancel" :*/
fileprivate let noti_viewValue:String = "large bubble text superCance"
fileprivate let appToTitle:String = "device"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HiddenDataSource.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeViewController: TalkingBaseViewController {
class HiddenDataSource: SizeViewController {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(RefDataDefaultsSerializable, String)]()
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.sizeColor()
        //: reloadLocalData()
        locationBold()
        //: func__reqBanner()
        banner()
        //: setupSubviews()
        toSubviews()
        //: setupSubViewsConstraint()
        pushConstraint()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(pushEdit),
                                               selector: #selector(doingRender),
                                               //: name: PUSH_MEEDIT_NOTIFICATION,
                                               name: const_playPath,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__requestUserInfo),
                                               selector: #selector(cloutInfo),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: constSkipPath,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: func__requestUserInfo()
        cloutInfo()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionHeaderTopPadding = 0
            }
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        //: table.register(TalkingMeTopCell.self, forCellReuseIdentifier: TalkingMeTopCell.className())
        table.register(RapidViewCell.self, forCellReuseIdentifier: RapidViewCell.className())
        //: table.register(TalkingMeBannerCell.self, forCellReuseIdentifier: TalkingMeBannerCell.className())
        table.register(ColorBannerCell.self, forCellReuseIdentifier: ColorBannerCell.className())
        //: table.register(TalkingMeTwoColumnsCell.self, forCellReuseIdentifier: TalkingMeTwoColumnsCell.className())
        table.register(ImageColumnsCell.self, forCellReuseIdentifier: ImageColumnsCell.className())
        //: table.register(TalkingMeThreeColumnsCell.self, forCellReuseIdentifier: TalkingMeThreeColumnsCell.className())
        table.register(VideoDataSource.self, forCellReuseIdentifier: VideoDataSource.className())
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(PassePartoutReactiveCompatible.self, forCellReuseIdentifier: PassePartoutReactiveCompatible.className())
        //: table.addHeaderRefresh { [weak self] in
        table.join { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.messageRefresh()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bannerListData: [SocialAdBannerModel] = {
    lazy var bannerListData: [MakeSingleBannerModel] = //: return Array<MakeSingleBannerModel>()
        .init()
    //: }()
}

// MARK: - Request

//: extension TalkingMeViewController {
extension HiddenDataSource {
    /// 下拉刷新
    //: private func headerRefresh() {
    private func messageRefresh() {
        //: tableView.mj_header?.beginRefreshing()
        tableView.mj_header?.beginRefreshing()
        //: func__requestUserInfo()
        cloutInfo()
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func cloutInfo() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        ManagingDirectorThen.visible { _, _, _ in
            //: self.reloadLocalData()
            self.locationBold()
            //: self.tableView.endRefresh()
            self.tableView.sizeFlush()
            //: self.tableView.reloadData()
            self.tableView.reloadData()

            //: if TalkingLiveManager.shared().isLive {
            if LogLiveManager.anUp().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: user_screenUrl, object: nil, userInfo: [String(bytes: showQueryedPathTitle.reversed(), encoding: .utf8)!: 0.0])
            }
        }
    }

    /// banner
    //: func func__reqBanner() {
    func banner() {
        //: SocialRequestManager.init().req_adBanner(position: 2) { [weak self] succeed, result, errorModel in
        AvailableRequestManager().toCompletion(position: 2) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(String(constModelFormat) + String(k_lipMakeStr.prefix(7)))] ?? []).arrayValue
            //: self.bannerListData.removeAll()
            self.bannerListData.removeAll()
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = MakeSingleBannerModel.deserialize(from: dict.dictionaryObject) {
                    //: self.bannerListData.append(model)
                    self.bannerListData.append(model)
                }
            }
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    /// 重载本地数据
    //: private func reloadLocalData() {
    private func locationBold() {
        //: if PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue && PunctuateThen.share.appStatus != AppSkinStatus.special.rawValue {
        if PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue, PunctuateThen.share.appStatus != HiddenHashableRepresentation.special.rawValue { // 女性 && 非审核模式
            //: tupleData = [(.My_Chat_Settings, "icon_me_chatsettings"),
            tupleData = [(.My_Chat_Settings, (String(data_atPath.suffix(5)) + "me_chatse" + const_colorTitle.replacingOccurrences(of: "size", with: "in"))),
                         //: (.My_Automatic, "icon_me_automatic"),
                         (.My_Automatic, (String(kLabelUrl.suffix(7)) + String(mainStatusKey.prefix(6)) + "atic")),
                         //: (.My_Settings, "icon_me_settings")]
                         (.My_Settings, (String(show_originFormat.prefix(5)) + "me_sett" + userTitlePath.replacingOccurrences(of: "effect", with: "ng")))]

            //: } else {
        } else {
            //: tupleData = [(.My_Settings, "icon_me_settings")]
            tupleData = [(.My_Settings, (String(show_originFormat.prefix(5)) + "me_sett" + userTitlePath.replacingOccurrences(of: "effect", with: "ng")))]
        }
        //: if PunctuateThen.share.appUserConfigMode.showTaskCenter {
        if PunctuateThen.share.appUserConfigMode.showTaskCenter {
            //: tupleData.insert((.Task_Center, "icon_me_tc"), at: 0)
            tupleData.insert((.Task_Center, (String(mainEqualData.prefix(5)) + String(noti_listFormat))), at: 0)
        }
        //: if PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue {
        if PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue {
            //: tupleData.insert((.My_VideoSetting, "icon_me_videoSet"), at: tupleData.count-1)
            tupleData.insert((.My_VideoSetting, (String(k_timeVoiceName.prefix(5)) + "me_vi" + constEventName.replacingOccurrences(of: "item", with: "d") + String(user_destinationViewText))), at: tupleData.count - 1)
            //: } else {
        } else {
            //: if SenseTime_Use && tupleData.count > 0 {
            if const_useId, tupleData.count > 0 {
                //: tupleData.insert((.My_Beautify, "icon_me_bs"), at: tupleData.count-1)
                tupleData.insert((.My_Beautify, (String(main_imageMessage.prefix(6)) + String(showTimeGiftData.suffix(4)))), at: tupleData.count - 1)
            }
        }
    }
}

//: extension TalkingMeViewController {
extension HiddenDataSource {
    //: @objc func pushEdit() {
    @objc func doingRender() {
        //: let editvc = TalkingEditProfilesVC()
        let editvc = ToActionThen()
        //: self.navigationController?.pushViewController(editvc, animated: true)
        self.navigationController?.pushViewController(editvc, animated: true)
    }

    func getString() -> String {
        return (String(show_indexName)) + "\"" + (String(k_arrayUniformTitleFormat)) + "\"" + (String(userErrMessage) + String(data_commentText.prefix(2))) + "\"" + (noti_viewText.uppercased() + String(notiShootTitle)) + "\"" + String(bytes: showTempMakeElseName.map{actionManager(scale: $0)}, encoding: .utf8)!.localized
    }
    
    //: func judgeCameraAuthorization() {
    func bindGiftAuthorization() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        CustomPermissionTool.behindCell(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.workSpace == false else {
                guard WrittenRecordSocketDelegate.shared.workSpace == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.drawObserver(showMsg: mainKeyTransformMsg)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = VisualAspectReactiveCompatible()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: TalkingAlertShow.alert(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                SizeReactiveCompatible.exceptHeader(title: nil, message: self.getString(), leftBtnTitle: (String(noti_viewValue.suffix(5)) + appToTitle.replacingOccurrences(of: "device", with: "l")).localized, rightBtnTitle: (String(k_arrayUniformTitleFormat)).localized) {
                    //: TalkingAlertShow.hideAlert()
                    SizeReactiveCompatible.obstruct()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    SizeReactiveCompatible.obstruct()
                    //: let url = URL(string: UIApplication.openSettingsURLString)
                    let url = URL(string: UIApplication.openSettingsURLString)
                    //: if  UIApplication.shared.canOpenURL(url!) {
                    if UIApplication.shared.canOpenURL(url!) {
                        //: if #available(iOS 10, *) {
                        if #available(iOS 10, *) {
                            //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                            UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                            //: } else {
                        } else {
                            //: UIApplication.shared.openURL(url!)
                            UIApplication.shared.openURL(url!)
                        }
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMeViewController: UITableViewDelegate, UITableViewDataSource {
extension HiddenDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 4
            return 4
        }
        //: return tupleData.count
        return tupleData.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
            let cell = tableView.dequeueReusableCell(withIdentifier: PassePartoutReactiveCompatible.className(), for: indexPath) as! PassePartoutReactiveCompatible
            //: let data = tupleData[indexPath.row]
            let data = tupleData[indexPath.row]
            //: let isLast = tupleData.count == (indexPath.row+1)
            let isLast = tupleData.count == (indexPath.row + 1)
            //: cell.setViewData(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            cell.bindGold(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            //: if data.0 ==  .Task_Center {
            if data.0 == .Task_Center {
                //: cell.setTaskCenterBtn()
                cell.holdfast()
            }
            //: return cell
            return cell
        }

        //: switch(indexPath.row) {
        switch indexPath.row {
        //: case 0:
        case 0:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTopCell.className(), for: indexPath) as! TalkingMeTopCell
            let cell = tableView.dequeueReusableCell(withIdentifier: RapidViewCell.className(), for: indexPath) as! RapidViewCell
            //: cell.setViewData()
            cell.requestAt()
            //: return cell
            return cell
        //: case 1:
        case 1:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeBannerCell.className(), for: indexPath) as! TalkingMeBannerCell
            let cell = tableView.dequeueReusableCell(withIdentifier: ColorBannerCell.className(), for: indexPath) as! ColorBannerCell
            //: cell.setViewData(bannerData: self.bannerListData)
            cell.teetertotterData(bannerData: self.bannerListData)
            //: return cell
            return cell
        //: case 2:
        case 2:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTwoColumnsCell.className(), for: indexPath) as! TalkingMeTwoColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: ImageColumnsCell.className(), for: indexPath) as! ImageColumnsCell
            //: cell.setViewData()
            cell.primaryColorKind()
            //: return cell
            return cell
        //: case 3:
        case 3:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeThreeColumnsCell.className(), for: indexPath) as! TalkingMeThreeColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: VideoDataSource.className(), for: indexPath) as! VideoDataSource
            //: cell.setViewData()
            cell.viewSend()
            //: return cell
            return cell

        //: default:
        default:
            //: break
            break
        }

        //: let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        //: cell.backgroundColor = .clear
        cell.backgroundColor = .clear
        //: cell.selectionStyle = .none
        cell.selectionStyle = .none
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
        if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
            //: return 0
            return 0
        }
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: guard indexPath.section == 1 else { return }
        guard indexPath.section == 1 else { return }
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Chat_Settings:
        case .My_Chat_Settings:
            //: let vc = TalkingFemalePriceSetVC()
            let vc = CountimateViewDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Automatic:
        case .My_Automatic:
            //: let vc = TalkingAutoGreetSettingVC()
            let vc = AspectReactiveCompatible()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Settings:
        case .My_Settings:
            //: let vc = TalkingSettingsVC()
            let vc = MemorySettingsVc()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .Task_Center:
        case .Task_Center:
            //: RangePushManager.share.func__pushToWebVC(webViewType: .TaskCenter)
            RangePushManager.share.barOn(webViewType: .TaskCenter)

        //: case .My_Beautify:
        case .My_Beautify:
            //: judgeCameraAuthorization()
            bindGiftAuthorization()

        //: case .My_VideoSetting:
        case .My_VideoSetting:
            //: let vc = TalkingVideoSettingsVC.init()
            let vc = GiftViewDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }
}

// MARK: - Layout

//: extension TalkingMeViewController {
extension HiddenDataSource {
    /// 添加视图
    //: private func setupSubviews() {
    private func toSubviews() {
        //: self.view.addSubview(tableView)
        self.view.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func pushConstraint() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
