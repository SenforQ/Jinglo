
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userBackgroundTitle:[UInt8] = [0x3d,0x42,0x3d,0x48,0xfc,0x37,0x43,0x38,0x39,0x46,0xe,0xfd,0xf4,0x3c,0x35,0x47,0xf4,0x42,0x43,0x48,0xf4,0x36,0x39,0x39,0x42,0xf4,0x3d,0x41,0x44,0x40,0x39,0x41,0x39,0x42,0x48,0x39,0x38]

fileprivate func gameHidden(cell num: UInt8) -> UInt8 {
    let value = Int(num) + 44
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Settings" :*/
fileprivate let mainBottomValue:String = "if sendSet"
fileprivate let noti_dateStr:String = "tconfirmgs"

/*: "Security" :*/
fileprivate let main_ofPath:String = "Sesize manager"
fileprivate let data_featureValue:String = "CURITY"

/*: "More" :*/
fileprivate let show_nameMessage:String = "self content return else appMore"

/*: "Logout succeeded!" :*/
fileprivate let dataEqualImageName:String = "view var imageLogo"
fileprivate let mainModelPath:String = "shareshareeede"
fileprivate let constDraftValue:[Character] = ["d","!"]

/*: "Please communicate with online service first and then upload logs, logs are used to analyze problems you encountered in the use of the App!" :*/
fileprivate let main_equalUrl:[UInt8] = [0xa8,0x94,0x9d,0x99,0x8b,0x9d,0xd8,0x9b,0x97,0x95,0x95,0x8d,0x96,0x91,0x9b,0x99,0x8c,0x9d,0xd8,0x8f,0x91,0x8c,0x90,0xd8,0x97,0x96,0x94,0x91,0x96,0x9d,0xd8,0x8b,0x9d,0x8a,0x8e,0x91,0x9b,0x9d,0xd8,0x9e,0x91,0x8a,0x8b,0x8c,0xd8,0x99,0x96,0x9c,0xd8,0x8c,0x90,0x9d,0x96,0xd8,0x8d,0x88,0x94,0x97,0x99,0x9c,0xd8,0x94,0x97,0x9f,0x8b,0xd4,0xd8,0x94,0x97,0x9f,0x8b,0xd8,0x99,0x8a,0x9d,0xd8,0x8d,0x8b,0x9d,0x9c,0xd8,0x8c,0x97,0xd8,0x99,0x96,0x99,0x94,0x81,0x82,0x9d,0xd8,0x88,0x8a,0x97,0x9a,0x94,0x9d,0x95,0x8b,0xd8,0x81,0x97,0x8d,0xd8,0x9d,0x96,0x9b,0x97,0x8d,0x96,0x8c,0x9d,0x8a,0x9d,0x9c,0xd8,0x91,0x96,0xd8,0x8c,0x90,0x9d,0xd8,0x8d,0x8b,0x9d,0xd8,0x97,0x9e,0xd8,0x8c,0x90,0x9d,0xd8,0xb9,0x88,0x88,0xd9]

private func greetView(user num: UInt8) -> UInt8 {
    return num ^ 248
}

/*: "Cancel" :*/
fileprivate let mainAgeUrl:[Character] = ["C","a","n","c","e"]
fileprivate let user_contentMsg:[Character] = ["l"]

/*: "OK" :*/
fileprivate let main_commonFormat:String = "requestK"

/*: "#999999" :*/
fileprivate let appRecordingValue:String = "#9"
fileprivate let kAddressMsg:[Character] = ["9","9","9","9","9"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MemorySettingsVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/5.
//

//: import SwiftUI
import SwiftUI
//: import UIKit
import UIKit

//: enum SettingsType: String {
enum ListGiftTableConvertible: String {
    //: case Contact_information   = "Contact information"
    case Contact_information = "Contact information"
    //: case Turnon_Notif          = "Notifications"
    case Turnon_Notif = "Notifications"
    //: case Social_Preferences    = "Social Preferences"
    case Social_Preferences = "Social Preferences"
    //: case Announcement_Settings = "Announcement Settings"
    case Announcement_Settings = "Announcement Settings"
    //: case Terms                 = "Terms of Use"
    case Terms = "Terms of Use"
    //: case Privacy               = "Privacy Policy"
    case Privacy = "Privacy Policy"
    //: case Aboutus               = "About us"
    case Aboutus = "About us"
    //: case Upload_Log            = "Upload Log"
    case Upload_Log = "Upload Log"
    //: case Black_List            = "Blacklist"
    case Black_List = "Blacklist"
    //: case Feedback              = "Feedback"
    case Feedback
    //: case Logout                = "Logout"
    case Logout
}

//: class TalkingSettingsVC: TalkingBaseViewController {
class MemorySettingsVc: SizeViewController {
    //: fileprivate lazy var bag = DisposeBag()
    fileprivate lazy var bag = DisposeBag()

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userBackgroundTitle.map{gameHidden(cell: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Settings".localized
        self.title = (String(mainBottomValue.suffix(3)) + noti_dateStr.replacingOccurrences(of: "confirm", with: "in")).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.sizeColor()
        //: designView()
        connect()
    }

    // MARK: - Lazy load

    //: private lazy var DataSource: [[SettingsType]] = {
    private lazy var DataSource: [[ListGiftTableConvertible]] = {
        //: var array = [[SettingsType]]()
        var array = [[ListGiftTableConvertible]]()
        //: var array1: [SettingsType] = [.Contact_information]
        var array1: [ListGiftTableConvertible] = [.Contact_information]
        //: var array2: [SettingsType] = [.Turnon_Notif]
        var array2: [ListGiftTableConvertible] = [.Turnon_Notif]
        //: var array3: [SettingsType] = [.Social_Preferences, .Announcement_Settings]
        var array3: [ListGiftTableConvertible] = [.Social_Preferences, .Announcement_Settings]

        //: var array4: [SettingsType] = [.Terms, .Privacy]
        var array4: [ListGiftTableConvertible] = [.Terms, .Privacy]
        //: var array5: [SettingsType] = [.Aboutus, .Upload_Log, .Black_List, .Feedback]
        var array5: [ListGiftTableConvertible] = [.Aboutus, .Upload_Log, .Black_List, .Feedback]
        //: var array6: [SettingsType] = [.Logout]
        var array6: [ListGiftTableConvertible] = [.Logout]

        //: array.append(array1)
        array.append(array1)
        //: array.append(array2)
        array.append(array2)
        //: array.append(array3)
        array.append(array3)
        //: array.append(array4)
        array.append(array4)
        //: array.append(array5)
        array.append(array5)
        //: array.append(array6)
        array.append(array6)
        //: return array
        return array
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle - app_tableNoHeightName), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: return table
        return table
        //: }()
    }()

    //: private lazy var headerSource: [String] = {
    private lazy var headerSource: [String] = {
        //: var array = ["", "", "", "Security".localized, "More".localized, ""]
        var array = ["", "", "", (String(main_ofPath.prefix(2)) + data_featureValue.lowercased()).localized, (String(show_nameMessage.suffix(4))).localized, ""]
        //: return array
        return array
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingSettingsVC {
extension MemorySettingsVc {
    /// logout
    //: func logoutTool() {
    func tap() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard CustomPermissionTool.withGift() == false else { return }
        //: guard TalkingSocketManager.shared.workSpace == false else {
        guard WrittenRecordSocketDelegate.shared.workSpace == false else { // 音视频通话中
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.drawObserver(showMsg: mainKeyTransformMsg)
            //: return
            return
        }

        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: TalkingLoginRequestTool.req_loginOut { t in
        ComponentRequestTool.model { t in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: if t {
            if t {
                //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
                NotificationCenter.default.post(name: k_deviceKey, object: nil, userInfo: nil)
            }
        }
    }

    //: func LockAccount() {
    func padlockLoadChronologicalRecord() {
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: TalkingMeRequestTool.req_LockAccount(params: [:]) { succeed, result, errorModel in
        TampReactiveCompatible.tillVideo(params: [:]) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: if succeed {
            if succeed {
                //: self.logoutTool()
                self.tap()
                //: self.func__showStatusBarSuccessMsg(showMsg: "Logout succeeded!".localized)
                self.occupant(showMsg: (String(dataEqualImageName.suffix(4)) + "ut su" + mainModelPath.replacingOccurrences(of: "share", with: "c") + String(constDraftValue)).localized)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension MemorySettingsVc: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerSource.count
        return headerSource.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: let verr: [SettingsType] = DataSource[section]
        let verr: [ListGiftTableConvertible] = DataSource[section]
        //: return verr.count
        return verr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return actualHeight(h: 50)
        return actualHeight(h: 50)
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 3 || section == 4 {
        if section == 3 || section == 4 {
            //: return 41
            return 41
        }
        //: return 12
        return 12
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell: TalkingSettingCell = tableView.dequeueReusableCell(withIdentifier: TalkingSettingCell.className(), for: indexPath) as! TalkingSettingCell
        let cell: WithReactiveCompatible = tableView.dequeueReusableCell(withIdentifier: WithReactiveCompatible.className(), for: indexPath) as! WithReactiveCompatible

        //: let verr: [SettingsType] = DataSource[indexPath.section]
        let verr: [ListGiftTableConvertible] = DataSource[indexPath.section]

        //: if indexPath.section == DataSource.count - 1 {
        if indexPath.section == DataSource.count - 1 {
            //: cell.setLogout(detail: verr[indexPath.row].rawValue)
            cell.linePlace(detail: verr[indexPath.row].rawValue)

            //: cell.logutBtn.rx.tap.subscribe { [weak self] (event) in
            cell.logutBtn.rx.tap.subscribe { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.logoutTool()
                self.tap()
                //: }.disposed(by: bag)
            }.disposed(by: bag)

            //: } else {
        } else {
            //: cell.setCellMessage(titile: verr[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == verr.count-1 )
            cell.userShow(titile: verr[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == verr.count - 1)
        }

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let verr: [SettingsType] = DataSource[indexPath.section]
        let verr: [ListGiftTableConvertible] = DataSource[indexPath.section]
        //: if verr[indexPath.row] == .Feedback {
        if verr[indexPath.row] == .Feedback {
            //: let vc = TalkingFeedbackVC.init()
            let vc = InvisibleViewController()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Black_List {
        } else if verr[indexPath.row] == .Black_List {
            //: let vc = TalkingBlacklistVC.init()
            let vc = BignessViewController()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Terms {
        } else if verr[indexPath.row] == .Terms {
            //: RangePushManager.share.func__pushToWebVC(webViewType: .TermsofUse)
            RangePushManager.share.barOn(webViewType: .TermsofUse)
            //: } else if verr[indexPath.row] == .Privacy {
        } else if verr[indexPath.row] == .Privacy {
            //: RangePushManager.share.func__pushToWebVC(webViewType: .PrivacyPolicy)
            RangePushManager.share.barOn(webViewType: .PrivacyPolicy)
            //: } else if verr[indexPath.row] == .Contact_information {
        } else if verr[indexPath.row] == .Contact_information {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = EastWestDirectionRecognizerDelegate()
            //: vc.setUnicersalView(type: .Contact_information)
            vc.imageByDoing(type: .Contact_information)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Turnon_Notif {
        } else if verr[indexPath.row] == .Turnon_Notif {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = EastWestDirectionRecognizerDelegate()
            //: vc.setUnicersalView(type: .Notifications)
            vc.imageByDoing(type: .Notifications)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Social_Preferences {
        } else if verr[indexPath.row] == .Social_Preferences {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = EastWestDirectionRecognizerDelegate()
            //: vc.setUnicersalView(type: .Social_Preferences)
            vc.imageByDoing(type: .Social_Preferences)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

            //: } else if verr[indexPath.row] == .Announcement_Settings {
        } else if verr[indexPath.row] == .Announcement_Settings {
            //: RangePushManager.share.func__pushToWebVC(webViewType: .GiftBroadcast)
            RangePushManager.share.barOn(webViewType: .GiftBroadcast)

            //: } else if verr[indexPath.row] == .Aboutus {
        } else if verr[indexPath.row] == .Aboutus {
            //: let vc = TalkingAboutUsVC.init()
            let vc = PanThen()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Upload_Log {
        } else if verr[indexPath.row] == .Upload_Log {
            //: let config = ShowAlertConfig()
            let config = CurtilageAlertConfig()
            //: config.horizontalPadding = 30
            config.horizontalPadding = 30
            //: config.textFont = UIFont.pingfangRugularFont(fontSize: 16)
            config.textFont = UIFont.recoverOf(fontSize: 16)
            //: TalkingAlertShow.alert(title: nil, message: "Please communicate with online service first and then upload logs, logs are used to analyze problems you encountered in the use of the App!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, rightBlock: {
            SizeReactiveCompatible.exceptHeader(title: nil, message: String(bytes: main_equalUrl.map{greetView(user: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(mainAgeUrl) + String(user_contentMsg)).localized, rightBtnTitle: "OK".localized, rightBlock: {
                //: UploadLogTool.shared.uploadLog()
                GestureLogTool.shared.matchPhoto()
                //: }, config: config)
            }, config: config)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 40))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: 40))
        //: view.backgroundColor = UIColor.appBgColor()
        view.backgroundColor = UIColor.sizeColor()
        //: let title = UILabel.init()
        let title = UILabel()
        //: title.textColor = UIColor.init(hex: "#999999")
        title.textColor = UIColor(hex: (appRecordingValue.capitalized + String(kAddressMsg)))
        //: title.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        title.font = UIFont.clickLarge(type: .Medium, fontSize: 16)
        //: title.text = headerSource[section]
        title.text = headerSource[section]
        //: view.addSubview(title)
        view.addSubview(title)
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.leading.equalTo(view).offset(30)
            make.leading.equalTo(view).offset(30)
            //: make.centerY.equalTo(view)
            make.centerY.equalTo(view)
        }
        //: return view
        return view
    }
}

// MARK: - UI

//: extension TalkingSettingsVC {
extension MemorySettingsVc {
    //: private func designView() {
    private func connect() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingSettingCell.self, forCellReuseIdentifier: TalkingSettingCell.className())
        MainTable.register(WithReactiveCompatible.self, forCellReuseIdentifier: WithReactiveCompatible.className())
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
