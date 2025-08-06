
//: Declare String Begin

/*: "Increase：" :*/
fileprivate let show_colorMessage:String = "Incretype cell"

/*: "Decrease：" :*/
fileprivate let notiGroupPathStr:String = "table view lastDecre"

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_capacityId:[UInt8] = [0x41,0x46,0x41,0x4c,0x0,0x3b,0x47,0x3c,0x3d,0x4a,0x12,0x1,0xf8,0x40,0x39,0x4b,0xf8,0x46,0x47,0x4c,0xf8,0x3a,0x3d,0x3d,0x46,0xf8,0x41,0x45,0x48,0x44,0x3d,0x45,0x3d,0x46,0x4c,0x3d,0x3c]

fileprivate func maleCenter(player num: UInt8) -> UInt8 {
    let value = Int(num) + 40
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "bg_talk_closed_tc" :*/
fileprivate let show_viewTopValue:String = "bg_talicon tag detail"
fileprivate let app_startId:String = "string section touch equal showk_cl"

/*: "bg_talk_closed_tc_intimate" :*/
fileprivate let showTodayName:String = "make lastbg_tal"
fileprivate let data_recordSizeMakeValue:[Character] = ["d","_","t","c","_","i","n","t","i","m","a","t","e"]

/*: "btn_intimate_close" :*/
fileprivate let app_upData:String = "btn_to render do group"
fileprivate let constDataMsg:String = "ate_ctitle touch status let"
fileprivate let dataFromId:String = "LOSE"

/*: "Giving gifts 、making calls and sending paid messages can increase intimacy~" :*/
fileprivate let const_plusTitle:[UInt8] = [0x5c,0x72,0x6d,0x72,0x75,0x7c,0x3b,0x7c,0x72,0x7d,0x6f,0x68,0x3b,0xf8,0x9b,0x9a,0x76,0x7a,0x70,0x72,0x75,0x7c,0x3b,0x78,0x7a,0x77,0x77,0x68,0x3b,0x7a,0x75,0x7f,0x3b,0x68,0x7e,0x75,0x7f,0x72,0x75,0x7c,0x3b,0x6b,0x7a,0x72,0x7f,0x3b,0x76,0x7e,0x68,0x68,0x7a,0x7c,0x7e,0x68,0x3b,0x78,0x7a,0x75,0x3b,0x72,0x75,0x78,0x69,0x7e,0x7a,0x68,0x7e,0x3b,0x72,0x75,0x6f,0x72,0x76,0x7a,0x78,0x62,0x65]

private func indexMake(recover num: UInt8) -> UInt8 {
    return num ^ 27
}

/*: "1 coin = 1 intimacy" :*/
fileprivate let noti_sexColorFormat:String = "1 cotemp inside show"
fileprivate let user_equalKey:String = "name create style1 in"
fileprivate let showLabToMessage:[Character] = ["t","i","m","a","c","y"]

/*: "If coins are not consumed within a certain period of time, the intimacy level will be reduced." :*/
fileprivate let app_stopId:[UInt8] = [0x48,0x67,0x21,0x62,0x6e,0x68,0x6f,0x72,0x21,0x60,0x73,0x64,0x21,0x6f,0x6e,0x75,0x21,0x62,0x6e,0x6f,0x72,0x74,0x6c,0x64,0x65,0x21,0x76,0x68,0x75,0x69,0x68,0x6f,0x21,0x60,0x21,0x62,0x64,0x73,0x75,0x60,0x68,0x6f,0x21,0x71,0x64,0x73,0x68,0x6e,0x65,0x21,0x6e,0x67,0x21,0x75,0x68,0x6c,0x64,0x2d,0x21,0x75,0x69,0x64,0x21,0x68,0x6f,0x75,0x68,0x6c,0x60,0x62,0x78,0x21,0x6d,0x64,0x77,0x64,0x6d,0x21,0x76,0x68,0x6d,0x6d,0x21,0x63,0x64,0x21,0x73,0x64,0x65,0x74,0x62,0x64,0x65,0x2f]

private func messageMode(add num: UInt8) -> UInt8 {
    return num ^ 1
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AspectViewDelegate.swift
//  SolarisNovaAtlasCore
//
//  Created by Charlotte on 2024/7/26.
//

//: import UIKit
import UIKit

/// 亲密度说明弹窗
//: class TalkingIntimateInstructionsPopUpView: UIView {
class AspectViewDelegate: UIView {
    //: var popView: TalkingPopView?
    var popView: UserModelReactiveCompatible?
    //: var pushType = ""
    var pushType = ""
    //: var headerData = ["Increase：".localized,"Decrease：".localized]
    var headerData = [(String(show_colorMessage.prefix(5)) + "ase：").localized, (String(notiGroupPathStr.suffix(5)) + "ase：").localized]

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.carryOpen()
        //: self.setupSubViewsConstraint()
        self.mediumFinish()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_capacityId.map{maleCenter(player: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "bg_talk_closed_tc")
        imag.image = UIImage.thoughtImageBundleSizeText(name: (String(show_viewTopValue.prefix(6)) + String(app_startId.suffix(4)) + "osed_tc"))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var topView: UIImageView = {
    private lazy var topView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "bg_talk_closed_tc_intimate")
        imag.image = UIImage.thoughtImageBundleSizeText(name: (String(showTodayName.suffix(6)) + "k_close" + String(data_recordSizeMakeValue)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var msgTableView: UITableView = {
    private lazy var msgTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = UIColor.init(red: 242/255.0, green: 110/255.0, blue: 184/255.0, alpha: 0.72)
        table.backgroundColor = UIColor(red: 242 / 255.0, green: 110 / 255.0, blue: 184 / 255.0, alpha: 0.72)
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.layer.cornerRadius = 6
        table.layer.cornerRadius = 6
        //: table.register(TalkingIntimateInstructionsPopUpCell.self, forCellReuseIdentifier: TalkingIntimateInstructionsPopUpCell.className())
        table.register(ClickUpCell.self, forCellReuseIdentifier: ClickUpCell.className())

        //: return table
        return table
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_intimate_close"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(app_upData.prefix(4)) + "intim" + String(constDataMsg.prefix(5)) + dataFromId.lowercased())), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(early), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingIntimateInstructionsPopUpView {
extension AspectViewDelegate {
    //: @objc private func closeBtnClick() {
    @objc private func early() {
        //: dismiss()
        sumExecuteFrom()
    }

    //: func show() {
    func pullUpShort() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = UserModelReactiveCompatible(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.style(view: self)
        //: popView?.showInView(view: PublisherReactiveCompatible.getWindow())
        popView?.hadith(view: PublisherReactiveCompatible.exceptAction())
    }

    //: @objc func dismiss() {
    @objc func sumExecuteFrom() {
        //: popView?.dismissView()
        popView?.conversation()
        //: popView = nil
        popView = nil
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingIntimateInstructionsPopUpView: UITableViewDelegate, UITableViewDataSource {
extension AspectViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 2
            return 2
            //: }else {
        } else {
            //: return 1
            return 1
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingIntimateInstructionsPopUpCell.className(), for: indexPath) as! TalkingIntimateInstructionsPopUpCell
        let cell = tableView.dequeueReusableCell(withIdentifier: ClickUpCell.className(), for: indexPath) as! ClickUpCell
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: if indexPath.row == 0 {
            if indexPath.row == 0 {
                //: cell.setCellData(msg: "Giving gifts 、making calls and sending paid messages can increase intimacy~".localized)
                cell.houseSquare(msg: String(bytes: const_plusTitle.map{indexMake(recover: $0)}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: cell.setCellData(msg: "1 coin = 1 intimacy".localized)
                cell.houseSquare(msg: (String(noti_sexColorFormat.prefix(4)) + "in = " + String(user_equalKey.suffix(4)) + String(showLabToMessage)).localized)
            }
            //: } else {
        } else {
            //: cell.setCellData(msg: "If coins are not consumed within a certain period of time, the intimacy level will be reduced.".localized)
            cell.houseSquare(msg: String(bytes: app_stopId.map{messageMode(add: $0)}, encoding: .utf8)!.localized)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 0 {
        if section == 0 {
            //: return 32
            return 32
            //: }else {
        } else {
            //: return 36
            return 36
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 32))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: 32))
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.atomic(fontSize: 16)
        titleLab.font = UIFont.atomic(fontSize: 16)
        //: titleLab.textColor = .white
        titleLab.textColor = .white
        //: titleLab.backgroundColor = .clear
        titleLab.backgroundColor = .clear
        //: titleLab.text = headerData[section]
        titleLab.text = headerData[section]
        //: view.addSubview(titleLab)
        view.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.bottom.equalTo(0)
            make.bottom.equalTo(0)
            //: if section == 0 {
            if section == 0 {
                //: make.top.equalTo(0)
                make.top.equalTo(0)
                //: }else {
            } else {
                //: make.top.equalTo(4)
                make.top.equalTo(4)
            }
        }

        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingIntimateInstructionsPopUpView {
extension AspectViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func carryOpen() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: self.addSubview(topView)
        self.addSubview(topView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
        //: contentView.addSubview(msgTableView)
        contentView.addSubview(msgTableView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func mediumFinish() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 301, height: 291))
            make.size.equalTo(CGSize(width: 301, height: 291))
        }

        //: msgTableView.snp.makeConstraints { make in
        msgTableView.snp.makeConstraints { make in
            //: make.top.equalTo(40)
            make.top.equalTo(40)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(contentView.snp.top).offset(-30)
            make.top.equalTo(contentView.snp.top).offset(-30)
            //: make.size.equalTo(CGSize.init(width: 107, height: 31))
            make.size.equalTo(CGSize(width: 107, height: 31))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
