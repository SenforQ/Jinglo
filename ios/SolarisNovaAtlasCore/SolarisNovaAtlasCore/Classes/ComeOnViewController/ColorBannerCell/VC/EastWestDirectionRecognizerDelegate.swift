
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userEventModelFormat:[UInt8] = [0x4a,0x4d,0x4a,0x57,0xb,0x40,0x4c,0x47,0x46,0x51,0x19,0xa,0x3,0x4b,0x42,0x50,0x3,0x4d,0x4c,0x57,0x3,0x41,0x46,0x46,0x4d,0x3,0x4a,0x4e,0x53,0x4f,0x46,0x4e,0x46,0x4d,0x57,0x46,0x47]

private func angleBottom(lab num: UInt8) -> UInt8 {
    return num ^ 35
}

/*: "Open then %@ will recommend users to you. A new chat will be made after a successful recommendation." :*/
fileprivate let k_statusName:[UInt8] = [0x64,0x85,0x7a,0x83,0x35,0x89,0x7d,0x7a,0x83,0x35,0x3a,0x55,0x35,0x8c,0x7e,0x81,0x81,0x35,0x87,0x7a,0x78,0x84,0x82,0x82,0x7a,0x83,0x79,0x35,0x8a,0x88,0x7a,0x87,0x88,0x35,0x89,0x84,0x35,0x8e,0x84,0x8a,0x43,0x35,0x56,0x35,0x83,0x7a,0x8c,0x35,0x78,0x7d,0x76,0x89,0x35,0x8c,0x7e,0x81,0x81,0x35,0x77,0x7a,0x35,0x82,0x76,0x79,0x7a,0x35,0x76,0x7b,0x89,0x7a,0x87,0x35,0x76,0x35,0x88,0x8a,0x78,0x78,0x7a,0x88,0x88,0x7b,0x8a,0x81,0x35,0x87,0x7a,0x78,0x84,0x82,0x82,0x7a,0x83,0x79,0x76,0x89,0x7e,0x84,0x83,0x43]

fileprivate func titleServer(disk num: UInt8) -> UInt8 {
    let value = Int(num) - 21
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Open then Applyname will recommend users to you. Use your identity to greet each other." :*/
fileprivate let show_customTitle:[UInt8] = [0x94,0xab,0xbe,0xb5,0xfb,0xaf,0xb3,0xbe,0xb5,0xfb,0x9a,0xab,0xab,0xb7,0xa2,0xb5,0xba,0xb6,0xbe,0xfb,0xac,0xb2,0xb7,0xb7,0xfb,0xa9,0xbe,0xb8,0xb4,0xb6,0xb6,0xbe,0xb5,0xbf,0xfb,0xae,0xa8,0xbe,0xa9,0xa8,0xfb,0xaf,0xb4,0xfb,0xa2,0xb4,0xae,0xf5,0xfb,0x8e,0xa8,0xbe,0xfb,0xa2,0xb4,0xae,0xa9,0xfb,0xb2,0xbf,0xbe,0xb5,0xaf,0xb2,0xaf,0xa2,0xfb,0xaf,0xb4,0xfb,0xbc,0xa9,0xbe,0xbe,0xaf,0xfb,0xbe,0xba,0xb8,0xb3,0xfb,0xb4,0xaf,0xb3,0xbe,0xa9,0xf5]

/*: "Your avatar and nickname will not be displayed in the ranking." :*/
fileprivate let mainImageData:[UInt8] = [0x66,0x50,0x4a,0x4d,0x1f,0x5e,0x49,0x5e,0x4b,0x5e,0x4d,0x1f,0x5e,0x51,0x5b,0x1f,0x51,0x56,0x5c,0x54,0x51,0x5e,0x52,0x5a,0x1f,0x48,0x56,0x53,0x53,0x1f,0x51,0x50,0x4b,0x1f,0x5d,0x5a,0x1f,0x5b,0x56,0x4c,0x4f,0x53,0x5e,0x46,0x5a,0x5b,0x1f,0x56,0x51,0x1f,0x4b,0x57,0x5a,0x1f,0x4d,0x5e,0x51,0x54,0x56,0x51,0x58,0x11]

private func modelSeat(kind num: UInt8) -> UInt8 {
    return num ^ 63
}

/*: "Open then %@ will recommend users to you. Use your identity to greet each other." :*/
fileprivate let data_controlKey:[UInt8] = [0x9c,0xbd,0xb2,0xbb,0x6d,0xc1,0xb5,0xb2,0xbb,0x6d,0x72,0x8d,0x6d,0xc4,0xb6,0xb9,0xb9,0x6d,0xbf,0xb2,0xb0,0xbc,0xba,0xba,0xb2,0xbb,0xb1,0x6d,0xc2,0xc0,0xb2,0xbf,0xc0,0x6d,0xc1,0xbc,0x6d,0xc6,0xbc,0xc2,0x7b,0x6d,0xa2,0xc0,0xb2,0x6d,0xc6,0xbc,0xc2,0xbf,0x6d,0xb6,0xb1,0xb2,0xbb,0xc1,0xb6,0xc1,0xc6,0x6d,0xc1,0xbc,0x6d,0xb4,0xbf,0xb2,0xb2,0xc1,0x6d,0xb2,0xae,0xb0,0xb5,0x6d,0xbc,0xc1,0xb5,0xb2,0xbf,0x7b]

fileprivate func makeColor(minimum num: UInt8) -> UInt8 {
    let value = Int(num) + 179
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "#FF2348" :*/
fileprivate let notiManagerAppStr:String = "share return top image if#FF2348"

/*: "To set up a password, you need to verify the account, choose your verification method" :*/
fileprivate let user_levelMsg:[UInt8] = [0x64,0x6f,0x68,0x74,0x65,0x6d,0x20,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x72,0x65,0x76,0x20,0x72,0x75,0x6f,0x79,0x20,0x65,0x73,0x6f,0x6f,0x68,0x63,0x20,0x2c,0x74,0x6e,0x75,0x6f,0x63,0x63,0x61,0x20,0x65,0x68,0x74,0x20,0x79,0x66,0x69,0x72,0x65,0x76,0x20,0x6f,0x74,0x20,0x64,0x65,0x65,0x6e,0x20,0x75,0x6f,0x79,0x20,0x2c,0x64,0x72,0x6f,0x77,0x73,0x73,0x61,0x70,0x20,0x61,0x20,0x70,0x75,0x20,0x74,0x65,0x73,0x20,0x6f,0x54]

/*: "Verified by Email" :*/
fileprivate let show_nameData:String = "open cell click topVerifie"
fileprivate let show_intimateValue:String = "d bycut string error data"

/*: "Verified by Phone" :*/
fileprivate let notiStopViewComponentStr:String = "Verificolor log self"
fileprivate let main_startData:String = "class make to empty Phone"

/*: "You're going to delete your profile,messages, photos and matched friends PERMANENTLY and your account will be UNRECOVERABLE.Continue to delete your account? " :*/
fileprivate let main_labTitle:[UInt8] = [0x73,0x45,0x5f,0xd,0x58,0x4f,0xa,0x4d,0x45,0x43,0x44,0x4d,0xa,0x5e,0x45,0xa,0x4e,0x4f,0x46,0x4f,0x5e,0x4f,0xa,0x53,0x45,0x5f,0x58,0xa,0x5a,0x58,0x45,0x4c,0x43,0x46,0x4f,0x6,0x47,0x4f,0x59,0x59,0x4b,0x4d,0x4f,0x59,0x6,0xa,0x5a,0x42,0x45,0x5e,0x45,0x59,0xa,0x4b,0x44,0x4e,0xa,0x47,0x4b,0x5e,0x49,0x42,0x4f,0x4e,0xa,0x4c,0x58,0x43,0x4f,0x44,0x4e,0x59,0xa,0x7a,0x6f,0x78,0x67,0x6b,0x64,0x6f,0x64,0x7e,0x66,0x73,0xa,0x4b,0x44,0x4e,0xa,0x53,0x45,0x5f,0x58,0xa,0x4b,0x49,0x49,0x45,0x5f,0x44,0x5e,0xa,0x5d,0x43,0x46,0x46,0xa,0x48,0x4f,0xa,0x7f,0x64,0x78,0x6f,0x69,0x65,0x7c,0x6f,0x78,0x6b,0x68,0x66,0x6f,0x4,0x69,0x45,0x44,0x5e,0x43,0x44,0x5f,0x4f,0xa,0x5e,0x45,0xa,0x4e,0x4f,0x46,0x4f,0x5e,0x4f,0xa,0x53,0x45,0x5f,0x58,0xa,0x4b,0x49,0x49,0x45,0x5f,0x44,0x5e,0x15,0xa]

/*: "UNRECOVERABLE" :*/
fileprivate let noti_haveText:[Character] = ["U","N","R","E","C","O","V","E","R","A","B","L","E"]

/*: "Delete Account" :*/
fileprivate let user_largeName:[Character] = ["D","e","l","e","t","e"," ","A"]
fileprivate let kManagerStr:String = "ccounsize"

/*: "Cancel" :*/
fileprivate let appRefBottomName:[Character] = ["C","a","n","c","e","l"]

/*: "Delete" :*/
fileprivate let main_titlePath:[Character] = ["D","e","l","e","t","e"]

/*: " ( :*/
fileprivate let const_valueData:[Character] = [" ","("]

/*: s)" :*/
fileprivate let data_randomName:String = "user in click let models)"

/*: "Logout succeeded!" :*/
fileprivate let data_viewFormat:[Character] = ["L","o","g","o","u","t"," ","s","u","c","c","e","e","d","e","d","!"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EastWestDirectionRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/26.
//

//: import UIKit
import UIKit

//: enum SettingsUniversal: String {
enum WithKeyRepresentable: String {
    //: case Contact_information          = "Contact information"
    case Contact_information = "Contact information"
    //: case Notifications                = "Notifications"
    case Notifications
    //: case Social_Preferences           = "Social Preferences"
    case Social_Preferences = "Social Preferences"
}

//: enum SettingsUniversalType: String {
enum SwitchicialBidirectionalCollection: String {
    //: case Phone_Number          = "Phone Number"
    case Phone_Number = "Phone Number"
    //: case Email_Address         = "Email Address"
    case Email_Address = "Email Address"
    //: case Turnon_Notif          = "Turn on Notification"
    case Turnon_Notif = "Turn on Notification"
    //: case Same_gendered         = "Same-gendered messaging"
    case Same_gendered = "Same-gendered messaging"
    //: case Cupid                 = "Cupid messaging"
    case Cupid = "Cupid messaging"
    //: case Ranking               = "Ranking anonymous"
    case Ranking = "Ranking anonymous"
    //: case Automatic             = "Automatic message"
    case Automatic = "Automatic message"
    //: case SetPassword           = "Set New Password"
    case SetPassword = "Set New Password"
    //: case DeleteA               = "Delete Account"
    case DeleteA = "Delete Account"
}

//: class TalkingSettingsUniversalVC: TalkingBaseViewController {
class EastWestDirectionRecognizerDelegate: SizeViewController {
    //: fileprivate lazy var bag = DisposeBag()
    fileprivate lazy var bag = DisposeBag()
    //: var settingModel = TalkingSettingModel()
    var settingModel = FrameworkHandyJSON()

    //: var  type = SettingsUniversal.Contact_information
    var type = WithKeyRepresentable.Contact_information

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userEventModelFormat.map{angleBottom(lab: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
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
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.sizeColor()
        //: designView()
        anRecord()
        //: getSettingData()
        isothermalRemove()
    }

    // MARK: - Lazy load

    //: private lazy var DataSource: [SettingsUniversalType] = {
    private lazy var DataSource: [SwitchicialBidirectionalCollection] = {
        //: var array = [SettingsUniversalType]()
        var array = [SwitchicialBidirectionalCollection]()
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

    //: private lazy var DetailSource: [String] = {
    private lazy var DetailSource: [String] = {
        //: var array = ["", "Open then %@ will recommend users to you. A new chat will be made after a successful recommendation.".localizedArguments(AppName), "Open then Applyname will recommend users to you. Use your identity to greet each other.".localized, "Your avatar and nickname will not be displayed in the ranking.".localized]
        var array = ["", String(bytes: k_statusName.map{titleServer(disk: $0)}, encoding: .utf8)!.viewfinder(const_onFormat), String(bytes: mainImageData.map{modelSeat(kind: $0)}, encoding: .utf8)!.localized, String(bytes: show_customTitle.map{$0^219}, encoding: .utf8)!.localized]
        //: if PunctuateThen.share.loginUserMode.sex == "2" {
        if PunctuateThen.share.loginUserMode.sex == "2" {
            //: array[1] = "Open then %@ will recommend users to you. Use your identity to greet each other.".localizedArguments(AppName)
            array[1] = String(bytes: data_controlKey.map{makeColor(minimum: $0)}, encoding: .utf8)!.viewfinder(const_onFormat)
        }
        //: return array
        return array
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingSettingsUniversalVC {
extension EastWestDirectionRecognizerDelegate {
    //: func getSettingData() {
    func isothermalRemove() {
        //: let dict = Dictionary<String, Any>()
        let dict = [String: Any]()
        //: TalkingMeRequestTool.req_GetSetting(params: dict) { succeed, result, errorModel in
        TampReactiveCompatible.completion(params: dict) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: self.settingModel = JSONDeserializer<TalkingSettingModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil)!
                self.settingModel = JSONDeserializer<FrameworkHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil)!
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func setUnicersalView(type: SettingsUniversal) {
    func imageByDoing(type: WithKeyRepresentable) {
        //: self.type = type
        self.type = type
        //: self.title = type.rawValue.localized
        self.title = type.rawValue.localized
        //: switch type {
        switch type {
        //: case .Contact_information:
        case .Contact_information:
            //: if PunctuateThen.share.appConfigMode.enableSmsLogin {
            if PunctuateThen.share.appConfigMode.enableSmsLogin {
                //: DataSource.append(.Phone_Number)
                DataSource.append(.Phone_Number)
            }
            //: DataSource.append(.Email_Address)
            DataSource.append(.Email_Address)
            //: if (PunctuateThen.share.appConfigMode.enableSmsLogin &&
            if (PunctuateThen.share.appConfigMode.enableSmsLogin &&
                //: PunctuateThen.share.loginUserMode.mobile?.count ?? 0 > 0) ||
                PunctuateThen.share.loginUserMode.mobile?.count ?? 0 > 0) ||
                //: PunctuateThen.share.loginUserMode.email.count > 0 {
                PunctuateThen.share.loginUserMode.email.count > 0
            {
                //: DataSource.append(.SetPassword)
                DataSource.append(.SetPassword)
            }
            //: DataSource.append(.DeleteA)
            DataSource.append(.DeleteA)
        //: break
        //: case .Notifications:
        case .Notifications:
            //: DataSource.append(.Turnon_Notif)
            DataSource.append(.Turnon_Notif)
        //: break
        //: case .Social_Preferences:
        case .Social_Preferences:
            //: DataSource.append(.Same_gendered)
            DataSource.append(.Same_gendered)
            //: DataSource.append(.Cupid)
            DataSource.append(.Cupid)
            //: DataSource.append(.Ranking)
            DataSource.append(.Ranking)
            //: DataSource.append(.Automatic)
            DataSource.append(.Automatic)
            //: break
        }
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
    }

    /// 获取修改【手机号】密码验证码
    //: private func req_sendModifyPwdSms() {
    private func routeFile() {
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: TalkingLoginRequestTool.req_sendModifyPwdSms { succeed, result, errorModel in
        ComponentRequestTool.equal { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: guard succeed else { return }
            guard succeed else { return }
            //: RangePushManager.share.func__pushToSetNewPasswordVC(type: .PhoneLogin, content: PunctuateThen.share.loginUserMode.mobile ?? "", isNewPwd: false)
            RangePushManager.share.student(type: .PhoneLogin, content: PunctuateThen.share.loginUserMode.mobile ?? "", isNewPwd: false)
        }
    }

    /// 获取修改【邮箱】密码验证码
    //: private func req_sendModifyPwdEmail() {
    private func contriveAndEmail() {
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: TalkingLoginRequestTool.req_sendModifyPwdEmail { succeed, result, errorModel in
        ComponentRequestTool.appearEnable { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: guard succeed else { return }
            guard succeed else { return }
            //: RangePushManager.share.func__pushToSetNewPasswordVC(type: .EmailLogin, content: PunctuateThen.share.loginUserMode.email, isNewPwd: false)
            RangePushManager.share.student(type: .EmailLogin, content: PunctuateThen.share.loginUserMode.email, isNewPwd: false)
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingSettingsUniversalVC: UITableViewDelegate, UITableViewDataSource {
extension EastWestDirectionRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return DataSource.count
        return DataSource.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: switch type {
        switch type {
        //: case .Contact_information, .Notifications:
        case .Contact_information, .Notifications:
            //: return actualHeight(h: 50)
            return actualHeight(h: 50)
        //: case .Social_Preferences:
        case .Social_Preferences:
            //: if DataSource[indexPath.row] == .Same_gendered {
            if DataSource[indexPath.row] == .Same_gendered {
                //: return actualHeight(h: 50)
                return actualHeight(h: 50)
                //: }else if DataSource[indexPath.row] == .Cupid {
            } else if DataSource[indexPath.row] == .Cupid {
                //: if PunctuateThen.share.loginUserMode.sex == "2" {
                if PunctuateThen.share.loginUserMode.sex == "2" {
                    //: return actualHeight(h: 89)
                    return actualHeight(h: 89)
                    //: } else {
                } else {
                    //: return actualHeight(h: 109)
                    return actualHeight(h: 109)
                }
                //: }  else if (DataSource[indexPath.row] == .Ranking ||  DataSource[indexPath.row] == .Automatic) {
            } else if DataSource[indexPath.row] == .Ranking || DataSource[indexPath.row] == .Automatic {
                //: return actualHeight(h: 92)
                return actualHeight(h: 92)
            }
            //: return actualHeight(h: 50)
            return actualHeight(h: 50)
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: switch self.type {
        switch self.type {
        //: case .Contact_information:
        case .Contact_information:
            //: let cell: TalkingSettingCell = tableView.dequeueReusableCell(withIdentifier: TalkingSettingCell.className(), for: indexPath) as! TalkingSettingCell
            let cell: WithReactiveCompatible = tableView.dequeueReusableCell(withIdentifier: WithReactiveCompatible.className(), for: indexPath) as! WithReactiveCompatible

            //: cell.setCellMessage(titile: DataSource[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == DataSource.count-1 )
            cell.userShow(titile: DataSource[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == DataSource.count - 1)
            //: cell.titleBLB.textColor = UIColor.appTitleColor()
            cell.titleBLB.textColor = UIColor.toEvent()

            //: if DataSource[indexPath.row] == SettingsUniversalType.Phone_Number {
            if DataSource[indexPath.row] == SwitchicialBidirectionalCollection.Phone_Number {
                //: if PunctuateThen.share.loginUserMode.mobile?.count ?? 0 > 0 {
                if PunctuateThen.share.loginUserMode.mobile?.count ?? 0 > 0 {
                    //: cell.setCellDetails(detail: PunctuateThen.share.loginUserMode.mobile ?? "")
                    cell.event(detail: PunctuateThen.share.loginUserMode.mobile ?? "")
                    //: } else {
                } else {
                    //: cell.editImag.isHidden = false
                    cell.editImag.isHidden = false
                }
                //: cell.titleBLB.textColor = .appTitleColor()
                cell.titleBLB.textColor = .toEvent()
                //: } else if DataSource[indexPath.row] == SettingsUniversalType.Email_Address {
            } else if DataSource[indexPath.row] == SwitchicialBidirectionalCollection.Email_Address {
                //: if PunctuateThen.share.loginUserMode.email.count > 0 {
                if PunctuateThen.share.loginUserMode.email.count > 0 {
                    //: cell.setCellDetails(detail: PunctuateThen.share.loginUserMode.email )
                    cell.event(detail: PunctuateThen.share.loginUserMode.email)
                    //: } else {
                } else {
                    //: cell.editImag.isHidden = false
                    cell.editImag.isHidden = false
                }
                //: } else if DataSource[indexPath.row] == SettingsUniversalType.SetPassword {
            } else if DataSource[indexPath.row] == SwitchicialBidirectionalCollection.SetPassword {
                //: cell.editImag.isHidden = false
                cell.editImag.isHidden = false
                //: } else if DataSource[indexPath.row] == SettingsUniversalType.DeleteA {
            } else if DataSource[indexPath.row] == SwitchicialBidirectionalCollection.DeleteA {
                //: cell.editImag.isHidden = true
                cell.editImag.isHidden = true
                //: cell.titleBLB.textColor = UIColor.init(hex: "#FF2348")
                cell.titleBLB.textColor = UIColor(hex: (String(notiManagerAppStr.suffix(7))))
            }

            //: return cell
            return cell

        //: case .Notifications, .Social_Preferences:
        case .Notifications, .Social_Preferences:
            //: let cell: TalkingSettingNotifCell = tableView.dequeueReusableCell(withIdentifier: TalkingSettingNotifCell.className(), for: indexPath) as! TalkingSettingNotifCell
            let cell: VideoThen = tableView.dequeueReusableCell(withIdentifier: VideoThen.className(), for: indexPath) as! VideoThen

            //: cell.setCellMessage(titile: DataSource[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == DataSource.count-1 )
            cell.matchAdd(titile: DataSource[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == DataSource.count - 1)
            //: if self.type == .Social_Preferences {
            if self.type == .Social_Preferences {
                //: cell.setCellDetails(detail: DetailSource[indexPath.row])
                cell.deleteDetail(detail: DetailSource[indexPath.row])
            }
            //: if DataSource[indexPath.row] == .Turnon_Notif {
            if DataSource[indexPath.row] == .Turnon_Notif {
                //: UNUserNotificationCenter.current().getNotificationSettings { settings in
                UNUserNotificationCenter.current().getNotificationSettings { settings in
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: let result = settings.authorizationStatus == .authorized
                        let result = settings.authorizationStatus == .authorized
                        //: cell.setCellNotif(isShow: result ? 1 : -1)
                        cell.exhibitRequestShow(isShow: result ? 1 : -1)
                    }
                }
                //: } else if DataSource[indexPath.row] == .Cupid {
            } else if DataSource[indexPath.row] == .Cupid {
                //: cell.setCellNotif(isShow: self.settingModel.isCupid ?? 1)
                cell.exhibitRequestShow(isShow: self.settingModel.isCupid ?? 1)
                //: } else if DataSource[indexPath.row] == .Ranking {
            } else if DataSource[indexPath.row] == .Ranking {
                //: cell.setCellNotif(isShow: self.settingModel.isLeaderboardAnonymous ?? -1)
                cell.exhibitRequestShow(isShow: self.settingModel.isLeaderboardAnonymous ?? -1)
                //: } else if DataSource[indexPath.row] == .Same_gendered {
            } else if DataSource[indexPath.row] == .Same_gendered {
                //: cell.setCellNotif(isShow: self.settingModel.isSameGendered ?? -1)
                cell.exhibitRequestShow(isShow: self.settingModel.isSameGendered ?? -1)
                //: } else if DataSource[indexPath.row] == .Automatic {
            } else if DataSource[indexPath.row] == .Automatic {
                //: cell.setCellNotif(isShow: self.settingModel.autoGreetAuth ?? -1)
                cell.exhibitRequestShow(isShow: self.settingModel.autoGreetAuth ?? -1)
            }
            //: return cell
            return cell
        }
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if self.type == .Contact_information {
        if self.type == .Contact_information {
            //: if DataSource[indexPath.row].rawValue == SettingsUniversalType.Phone_Number.rawValue {
            if DataSource[indexPath.row].rawValue == SwitchicialBidirectionalCollection.Phone_Number.rawValue {
                //: let mobile = PunctuateThen.share.loginUserMode.mobile ?? ""
                let mobile = PunctuateThen.share.loginUserMode.mobile ?? ""
                //: if mobile.isEmptyString {
                if mobile.isEmptyString {
                    //: let vc = TalkingBindPhoneVC()
                    let vc = ProviderSearchPhoneVc()
                    //: navigationController?.pushViewController(vc, animated: true)
                    navigationController?.pushViewController(vc, animated: true)
                }
                //: } else if DataSource[indexPath.row].rawValue == SettingsUniversalType.Email_Address.rawValue {
            } else if DataSource[indexPath.row].rawValue == SwitchicialBidirectionalCollection.Email_Address.rawValue {
                //: if PunctuateThen.share.loginUserMode.email.count <= 0 {
                if PunctuateThen.share.loginUserMode.email.count <= 0 {
                    //: let vc = TalkingLoginBindEmailVC()
                    let vc = BackgroundEmailVc()
                    //: vc.isBack = true
                    vc.isBack = true
                    //: navigationController?.pushViewController(vc, animated: true)
                    navigationController?.pushViewController(vc, animated: true)
                }
                //: } else if DataSource[indexPath.row].rawValue == SettingsUniversalType.DeleteA.rawValue {
            } else if DataSource[indexPath.row].rawValue == SwitchicialBidirectionalCollection.DeleteA.rawValue {
                //: writeOff()
                streetwiseStar()
                //: } else if DataSource[indexPath.row].rawValue == SettingsUniversalType.SetPassword.rawValue {
            } else if DataSource[indexPath.row].rawValue == SwitchicialBidirectionalCollection.SetPassword.rawValue {
                //: let haveMobile = PunctuateThen.share.appConfigMode.enableSmsLogin && (PunctuateThen.share.loginUserMode.mobile?.count ?? 0 > 0)
                let haveMobile = PunctuateThen.share.appConfigMode.enableSmsLogin && (PunctuateThen.share.loginUserMode.mobile?.count ?? 0 > 0)
                //: let haveEmail = PunctuateThen.share.loginUserMode.email.count > 0
                let haveEmail = PunctuateThen.share.loginUserMode.email.count > 0
                //: if haveMobile, haveEmail {
                if haveMobile, haveEmail { // 手机号和邮箱都存在
                    //: let vc = TalkingMunuPopView(frame: self.view.frame)
                    let vc = SelectReactiveCompatible(frame: self.view.frame)
                    //: vc.title = "To set up a password, you need to verify the account, choose your verification method".localized
                    vc.title = String(bytes: user_levelMsg.reversed(), encoding: .utf8)!.localized
                    //: vc.titleFont = UIFont.pingfangRugularFont(fontSize: 12)
                    vc.titleFont = UIFont.recoverOf(fontSize: 12)
                    //: vc.titleColor = UIColor.appValueDetailColor()
                    vc.titleColor = UIColor.hockeyPlayer()
                    //: vc.cellTitleFont = UIFont.atomic(fontSize: 16)
                    vc.cellTitleFont = UIFont.atomic(fontSize: 16)
                    //: vc.hasCancel = false
                    vc.hasCancel = false
                    //: var list = ["Verified by Email".localized]
                    var list = [(String(show_nameData.suffix(7)) + String(show_intimateValue.prefix(4)) + " Email").localized]
                    //: if PunctuateThen.share.appConfigMode.enableSmsLogin {
                    if PunctuateThen.share.appConfigMode.enableSmsLogin {
                        //: list.insert("Verified by Phone".localized, at: 0)
                        list.insert((String(notiStopViewComponentStr.prefix(6)) + "ed by" + String(main_startData.suffix(6))).localized, at: 0)
                    }
                    //: vc.initwithList(cellTitleList: list)
                    vc.fullPhaseOfTheMoon(cellTitleList: list)
                    //: vc.munuBlock = { [weak self] index, str in
                    vc.munuBlock = { [weak self] _, str in
                        //: guard let self = self else { return }
                        guard let self = self else { return }
                        //: if str == "Verified by Phone".localized {
                        if str == (String(notiStopViewComponentStr.prefix(6)) + "ed by" + String(main_startData.suffix(6))).localized {
                            //: self.req_sendModifyPwdSms()
                            self.routeFile()
                            //: } else if str == "Verified by Email".localized {
                        } else if str == (String(show_nameData.suffix(7)) + String(show_intimateValue.prefix(4)) + " Email").localized {
                            //: self.req_sendModifyPwdEmail()
                            self.contriveAndEmail()
                        }
                    }

                    //: } else if haveMobile {
                } else if haveMobile {
                    //: req_sendModifyPwdSms()
                    routeFile()

                    //: } else if haveEmail {
                } else if haveEmail {
                    //: req_sendModifyPwdEmail()
                    contriveAndEmail()
                }
            }
        }
    }
}

//: extension TalkingSettingsUniversalVC {
extension EastWestDirectionRecognizerDelegate {
    /// 注销
    //: private func writeOff() {
    private func streetwiseStar() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard CustomPermissionTool.withGift() == false else { return }
        //: guard TalkingSocketManager.shared.workSpace == false else {
        guard WrittenRecordSocketDelegate.shared.workSpace == false else { // 音视频通话中
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.drawObserver(showMsg: mainKeyTransformMsg)
            //: return
            return
        }

        //: var seconds = 15
        var seconds = 15
        //: let timer: DispatchSourceTimer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.main)
        let timer: DispatchSourceTimer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.main)
        //: timer.schedule(deadline: .now(), repeating: 1.0)
        timer.schedule(deadline: .now(), repeating: 1.0)

        //: let str = "You're going to delete your profile,messages, photos and matched friends PERMANENTLY and your account will be UNRECOVERABLE.Continue to delete your account? ".localized
        let str = String(bytes: main_labTitle.map{$0^42}, encoding: .utf8)!.localized

        //: let range =  str.exMatchStrRange("UNRECOVERABLE")
        let range = str.adultMaleAfter((String(noti_haveText)))

        //: let string = NSMutableAttributedString.init(string: str )
        let string = NSMutableAttributedString(string: str)
        //: if range.count > 0 {
        if range.count > 0 {
            //: string.addAttribute(.foregroundColor, value: UIColor.msgTipsColor(), range: range.first!)
            string.addAttribute(.foregroundColor, value: UIColor.satisfy(), range: range.first!)
        }
        //: TalkingAlertShow.attribAlert(title: "Delete Account".localized, attributedMessage: string, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Delete".localized) {
        SizeReactiveCompatible.popGreet(title: (String(user_largeName) + kManagerStr.replacingOccurrences(of: "size", with: "t")).localized, attributedMessage: string, leftBtnTitle: (String(appRefBottomName)).localized, rightBtnTitle: (String(main_titlePath)).localized) {
            //: TalkingAlertShow.hideAlert()
            SizeReactiveCompatible.obstruct()
            //: timer.cancel()
            timer.cancel()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            SizeReactiveCompatible.obstruct()

            //: self.LockAccount()
            self.removeTo()
        }

        //: timer.setEventHandler {
        timer.setEventHandler {
            //: seconds -= 1
            seconds -= 1
            //: if seconds <= 0 {
            if seconds <= 0 {
                //: timer.cancel()
                timer.cancel()
                //: TalkingAlertShow.changeRightBtn(title: "Delete".localized, isTouch: true)
                SizeReactiveCompatible.surpriseReply(title: (String(main_titlePath)).localized, isTouch: true)
                //: } else {
            } else {
                //: TalkingAlertShow.changeRightBtn(title: "Delete".localized + " (\(seconds)s)", isTouch: false)
                SizeReactiveCompatible.surpriseReply(title: (String(main_titlePath)).localized + " (\(seconds)s)", isTouch: false)
            }
        }
        //: timer.resume()
        timer.resume()
    }

    //: private func LockAccount() {
    private func removeTo() {
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: TalkingMeRequestTool.req_LockAccount(params: [:]) { succeed, result, errorModel in
        TampReactiveCompatible.tillVideo(params: [:]) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: if succeed {
            if succeed {
                //: self.logoutTool()
                self.marginTool()
                //: self.func__showStatusBarSuccessMsg(showMsg: "Logout succeeded!".localized)
                self.occupant(showMsg: (String(data_viewFormat)).localized)
            }
        }
    }

    //: private func logoutTool() {
    private func marginTool() {
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
}

// MARK: - UI

//: extension TalkingSettingsUniversalVC {
extension EastWestDirectionRecognizerDelegate {
    //: private func designView() {
    private func anRecord() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingSettingCell.self, forCellReuseIdentifier: TalkingSettingCell.className())
        MainTable.register(WithReactiveCompatible.self, forCellReuseIdentifier: WithReactiveCompatible.className())
        //: MainTable.register(TalkingSettingNotifCell.self, forCellReuseIdentifier: TalkingSettingNotifCell.className())
        MainTable.register(VideoThen.self, forCellReuseIdentifier: VideoThen.className())
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.leading.trailing.bottom.equalTo(self.view)
            make.leading.trailing.bottom.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
