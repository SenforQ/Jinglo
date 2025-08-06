
//: Declare String Begin

/*: "Beautify Settings" :*/
fileprivate let const_managerToolMsg:String = "any view if section numberBeaut"
fileprivate let show_sharedPicFormat:String = "action timeSettings"

/*: "icon_me_videoSet_beauty" :*/
fileprivate let noti_fatalMessage:[Character] = ["i","c","o","n","_","m","e","_","v","i","d","e","o","S","e","t","_","b","e"]
fileprivate let dataRawPath:String = "autplay"

/*: "Video Settings" :*/
fileprivate let noti_modeAtStr:[Character] = ["V","i","d","e","o"]
fileprivate let show_withId:String = "main equal leading selected Sett"

/*: "Enter " :*/
fileprivate let constTrackData:[Character] = ["E","n","t","e","r"," "]

/*: "Settings" :*/
fileprivate let user_liveMsg:String = "Settingstitle new cell frame user"

/*: " and open " :*/
fileprivate let userDataValue:[Character] = [" ","a","n","d"," ","o"]
fileprivate let userToItemViewUrl:String = "text any colorpen "

/*: "Camera" :*/
fileprivate let notiViewText:String = "as thinCamera"

/*: " permission to use this function normally" :*/
fileprivate let showStatusPath:[UInt8] = [0x4f,0x1f,0xa,0x1d,0x2,0x6,0x1c,0x1c,0x6,0x0,0x1,0x4f,0x1b,0x0,0x4f,0x1a,0x1c,0xa,0x4f,0x1b,0x7,0x6,0x1c,0x4f,0x9,0x1a,0x1,0xc,0x1b,0x6,0x0,0x1,0x4f,0x1,0x0,0x1d,0x2,0xe,0x3,0x3,0x16]

/*: "Cancel" :*/
fileprivate let notiTotalEmptyStr:[Character] = ["C"]
fileprivate let app_succeedStr:String = "ancerrorl"

/*: "Purple means turn on the call invitation, grey means turn off the call invitation." :*/
fileprivate let appScaleName:[UInt8] = [0xb1,0xd6,0xd3,0xd1,0xcd,0xc6,0x81,0xce,0xc6,0xc2,0xcf,0xd4,0x81,0xd5,0xd6,0xd3,0xcf,0x81,0xd0,0xcf,0x81,0xd5,0xc9,0xc6,0x81,0xc4,0xc2,0xcd,0xcd,0x81,0xca,0xcf,0xd7,0xca,0xd5,0xc2,0xd5,0xca,0xd0,0xcf,0x8d,0x81,0xc8,0xd3,0xc6,0xda,0x81,0xce,0xc6,0xc2,0xcf,0xd4,0x81,0xd5,0xd6,0xd3,0xcf,0x81,0xd0,0xc7,0xc7,0x81,0xd5,0xc9,0xc6,0x81,0xc4,0xc2,0xcd,0xcd,0x81,0xca,0xcf,0xd7,0xca,0xd5,0xc2,0xd5,0xca,0xd0,0xcf,0x8f]

fileprivate func viewServer(make num: UInt8) -> UInt8 {
    let value = Int(num) + 159
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GiftViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/25.
//

//: import UIKit
import UIKit

//: class TalkingVideoSettingsVC: TalkingBaseViewController {
class GiftViewDelegate: SizeViewController {
    // MARK: - life cycle

    //: private var headerData = [("Beautify Settings", "icon_me_videoSet_beauty"),
    private var headerData = [((String(const_managerToolMsg.suffix(5)) + "ify " + String(show_sharedPicFormat.suffix(8))), (String(noti_fatalMessage) + dataRawPath.replacingOccurrences(of: "play", with: "y"))),
                              //: ("", ""),
                              ("", ""),
                              //: ("", "")]
                              ("", "")]

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.sizeColor()
        //: self.title = "Video Settings".localized
        self.title = (String(noti_modeAtStr) + String(show_withId.suffix(5)) + "ings").localized
        //: self.setupSubviews()
        self.read()
        //: self.setupSubViewsConstraint()
        self.trackWith()
    }

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: .zero, style: .grouped)
        let table = UITableView(frame: .zero, style: .grouped)
        //: table.backgroundColor = UIColor.appBgColor()
        table.backgroundColor = UIColor.sizeColor()
        //: table.register(TalkingSettingReceiveVideoCell.self, forCellReuseIdentifier: TalkingSettingReceiveVideoCell.className())
        table.register(IngatheringReactiveCompatible.self, forCellReuseIdentifier: IngatheringReactiveCompatible.className())
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: return table
        return table
        //: }()
    }()
}

// MARK: - private methods

//: extension TalkingVideoSettingsVC {
extension GiftViewDelegate {
    
    private func getString() -> String {
        return (String(constTrackData)) + "\"" + (String(user_liveMsg.prefix(8))) + "\"" + (String(userDataValue) + String(userToItemViewUrl.suffix(4))) + "\"" + (String(notiViewText.suffix(6))) + "\"" + String(bytes: showStatusPath.map{$0^111}, encoding: .utf8)!.localized
    }
    
    //: func judgeCameraAuthorization() {
    func flashCameraToAction() {
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
                SizeReactiveCompatible.exceptHeader(title: nil, message: self.getString(), leftBtnTitle: (String(notiTotalEmptyStr) + app_succeedStr.replacingOccurrences(of: "error", with: "e")).localized, rightBtnTitle: (String(user_liveMsg.prefix(8))).localized) {
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
                        //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                        UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingVideoSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension GiftViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerData.count
        return headerData.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 0
            return 0
            //: } else if section == 1 {
        } else if section == 1 {
            //: return 2
            return 2
            //: } else if section == 2 {
        } else if section == 2 {
            //: return 1
            return 1
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 1 || indexPath.section == 2 {
        if indexPath.section == 1 || indexPath.section == 2 {
            //: return 65
            return 65
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if (section == 0 && SenseTime_Use) {
        if section == 0 && const_useId {
            //: return 75
            return 75
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        //: if section == 1 {
        if section == 1 {
            //: return actualWidth(w: 50.0)
            return actualWidth(w: 50.0)
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 1 || indexPath.section == 2 {
        if indexPath.section == 1 || indexPath.section == 2 {
            //: let cell: TalkingSettingReceiveVideoCell = tableView.dequeueReusableCell(withIdentifier: TalkingSettingReceiveVideoCell.className(), for: indexPath) as! TalkingSettingReceiveVideoCell
            let cell: IngatheringReactiveCompatible = tableView.dequeueReusableCell(withIdentifier: IngatheringReactiveCompatible.className(), for: indexPath) as! IngatheringReactiveCompatible
            //: if indexPath.section == 1 {
            if indexPath.section == 1 {
                //: if indexPath.row == 0 {
                if indexPath.row == 0 {
                    //: cell.refreshCell(type: .video)
                    cell.outList(type: .video)
                    //: } else if indexPath.row == 1 {
                } else if indexPath.row == 1 {
                    //: cell.refreshCell(type: .voice)
                    cell.outList(type: .voice)
                }
                //: } else if indexPath.section == 2 {
            } else if indexPath.section == 2 {
                //: cell.refreshCell(type: .randomVideo)
                cell.outList(type: .randomVideo)
            }
            //: return cell
            return cell
        }

        //: return UITableViewCell()
        return UITableViewCell()
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: guard (section == 0 && SenseTime_Use) else { return nil }
        guard section == 0 && const_useId else { return nil }
        //: let headeView: TalkingVideoSettingHeaderCell = TalkingVideoSettingHeaderCell.init(style: .default, reuseIdentifier: nil)
        let headeView = UserAvailableThen(style: .default, reuseIdentifier: nil)
        //: let data = self.headerData[section]
        let data = self.headerData[section]
        //: headeView.setViewData(title: data.0, icon: data.1)
        headeView.wayOfLife(title: data.0, icon: data.1)
        //: if section == 0 {
        if section == 0 {
            //: headeView.setTips(isHidden: true)
            headeView.premium(isHidden: true)
        }
        //: headeView.touchBlock = { [weak self] in
        headeView.touchBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if section == 0 && SenseTime_Use {
            if section == 0 && const_useId {
                //: self.judgeCameraAuthorization()
                self.flashCameraToAction()
            }
        }
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection section: Int) -> UIView? {
        //: guard section == 1 else { return UIView() }
        guard section == 1 else { return UIView() }
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: actualWidth(w: 50.0)))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: actualWidth(w: 50.0)))
        //: view.backgroundColor = UIColor.appBgColor()
        view.backgroundColor = UIColor.sizeColor()
        //: let title = UILabel()
        let title = UILabel()
        //: title.backgroundColor = UIColor.clear
        title.backgroundColor = UIColor.clear
        //: title.font = UIFont.pingfangRugularFont(fontSize: 14)
        title.font = UIFont.recoverOf(fontSize: 14)
        //: title.textColor = UIColor.appValueDetailColor()
        title.textColor = UIColor.hockeyPlayer()
        //: title.text = "Purple means turn on the call invitation, grey means turn off the call invitation.".localized
        title.text = String(bytes: appScaleName.map{viewServer(make: $0)}, encoding: .utf8)!.localized
        //: title.numberOfLines = 0
        title.numberOfLines = 0
        //: title.textAlignment = .center
        title.textAlignment = .center
        //: view.addSubview(title)
        view.addSubview(title)
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingVideoSettingsVC {
extension GiftViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func read() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func trackWith() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
