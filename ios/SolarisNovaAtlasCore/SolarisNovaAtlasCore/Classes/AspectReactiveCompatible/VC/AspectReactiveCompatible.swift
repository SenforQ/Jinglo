
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kToFormat:[UInt8] = [0xc5,0xca,0xc5,0xd0,0x84,0xbf,0xcb,0xc0,0xc1,0xce,0x96,0x85,0x7c,0xc4,0xbd,0xcf,0x7c,0xca,0xcb,0xd0,0x7c,0xbe,0xc1,0xc1,0xca,0x7c,0xc5,0xc9,0xcc,0xc8,0xc1,0xc9,0xc1,0xca,0xd0,0xc1,0xc0]

fileprivate func marginalCost(collection num: UInt8) -> UInt8 {
    let value = Int(num) - 92
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Greeting Message Settings" :*/
fileprivate let userQuantityTitle:String = "month color mode frame buttonGree"
fileprivate let notiExtraName:String = " Messainformation black add view bottom"
fileprivate let app_textDataUrl:String = "tinarrays"

/*: "Voice greeting" :*/
fileprivate let mainColorMakeMsg:String = "string file var self flagVoice"
fileprivate let user_imageSharedStr:String = "evoicein"
fileprivate let show_randomName:String = "label"

/*: "icon_me_greet_vioce" :*/
fileprivate let constFormatFrameName:[Character] = ["i","c","o","n","_","m","e","_","g","r","e","e","t","_","v","i","o","c","e"]

/*: "Text greeting" :*/
fileprivate let const_enableMsg:[Character] = ["T","e","x","t"," ","g","r","e","e"]
fileprivate let kModelPath:[Character] = ["t","i","n","g"]

/*: "icon_me_greet_text" :*/
fileprivate let app_labName:[Character] = ["i","c","o","n","_","m"]
fileprivate let app_indexShowMsg:String = "e_grekind array user make"

/*: "Photo greeting" :*/
fileprivate let noti_coverEqualStr:[Character] = ["P","h","o","t","o"," "]
fileprivate let data_rangeText:String = "grdata"
fileprivate let const_addValue:String = "ETING"

/*: "icon_me_greet_photo" :*/
fileprivate let kFillValue:[Character] = ["i","c","o","n","_","m","e","_","g","r","e","e","t","_","p","h","o","t","o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AspectReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/9.
//

//: import UIKit
import UIKit

//: class TalkingAutoGreetSettingVC: TalkingBaseViewController {
class AspectReactiveCompatible: SizeViewController {
    //: var settingModel = TalkingSettingModel()
    var settingModel = FrameworkHandyJSON()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kToFormat.map{marginalCost(collection: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: getSettingData()
        collectWithMetadataData()
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
        //: self.title = "Greeting Message Settings".localized
        self.title = (String(userQuantityTitle.suffix(4)) + "ting" + String(notiExtraName.prefix(6)) + "ge Set" + app_textDataUrl.replacingOccurrences(of: "array", with: "g")).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.sizeColor()
        //: setupSubviews()
        subviewsRequest()
        //: setupSubViewsConstraint()
        filtrate()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle - app_tableNoHeightName), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: table.register(TalkingGreetingSetTableCell.self, forCellReuseIdentifier: TalkingGreetingSetTableCell.className())
        table.register(PositionViewCell.self, forCellReuseIdentifier: PositionViewCell.className())
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

// MARK: - Request & 数据处理

//: extension TalkingAutoGreetSettingVC {
extension AspectReactiveCompatible {
    //: func getSettingData() {
    func collectWithMetadataData() {
        //: let dict = Dictionary<String, Any>()
        let dict = [String: Any]()
        //: TalkingMeRequestTool.req_GetGreetSetting(params: dict) { succeed, result, errorModel in
        TampReactiveCompatible.listLive(params: dict) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: self.settingModel = JSONDeserializer<TalkingSettingModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil)!
                self.settingModel = JSONDeserializer<FrameworkHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil)!
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAutoGreetSettingVC: UITableViewDelegate, UITableViewDataSource {
extension AspectReactiveCompatible: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 3
        return 3
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return actualHeight(h: 50)
        return actualHeight(h: 50)
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 15
        return 15
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.1
        return 0.1
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell: TalkingGreetingSetTableCell = tableView.dequeueReusableCell(withIdentifier: TalkingGreetingSetTableCell.className(), for: indexPath) as! TalkingGreetingSetTableCell
        let cell: PositionViewCell = tableView.dequeueReusableCell(withIdentifier: PositionViewCell.className(), for: indexPath) as! PositionViewCell

        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: cell.setCellMessage(titile: "Voice greeting".localized, iconStr: "icon_me_greet_vioce", isShowDet: self.settingModel.audioIsSet != 0)
            cell.executeShowView(titile: (String(mainColorMakeMsg.suffix(5)) + " gre" + user_imageSharedStr.replacingOccurrences(of: "voice", with: "t") + show_randomName.replacingOccurrences(of: "label", with: "g")).localized, iconStr: (String(constFormatFrameName)), isShowDet: self.settingModel.audioIsSet != 0)

            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: cell.setCellMessage(titile: "Text greeting".localized, iconStr: "icon_me_greet_text", isShowDet: self.settingModel.textIsSet != 0)
            cell.executeShowView(titile: (String(const_enableMsg) + String(kModelPath)).localized, iconStr: (String(app_labName) + String(app_indexShowMsg.prefix(5)) + "et_text"), isShowDet: self.settingModel.textIsSet != 0)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: cell.setCellMessage(titile: "Photo greeting".localized, iconStr: "icon_me_greet_photo", isShowDet: self.settingModel.intimatePhotoIsSet != 0)
            cell.executeShowView(titile: (String(noti_coverEqualStr) + data_rangeText.replacingOccurrences(of: "data", with: "e") + const_addValue.lowercased()).localized, iconStr: (String(kFillValue)), isShowDet: self.settingModel.intimatePhotoIsSet != 0)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let vc = TalkingGreetAudioVC.init()
            let vc = StartViewController()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: let vc = TalkingGreetTextVC.init()
            let vc = FieldReactiveCompatible()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: let vc = TalkingGreetPhotoVC.init()
            let vc = DigitiserViewController()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 15))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: 15))
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView.init()
        return UIView()
    }
}

// MARK: - Layout

//: extension TalkingAutoGreetSettingVC {
extension AspectReactiveCompatible {
    //: private func setupSubviews() {
    private func subviewsRequest() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    //: private func setupSubViewsConstraint() {
    private func filtrate() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
