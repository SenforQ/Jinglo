
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kScaleLoadFormat:[UInt8] = [0x99,0x9e,0x99,0x84,0xd8,0x93,0x9f,0x94,0x95,0x82,0xca,0xd9,0xd0,0x98,0x91,0x83,0xd0,0x9e,0x9f,0x84,0xd0,0x92,0x95,0x95,0x9e,0xd0,0x99,0x9d,0x80,0x9c,0x95,0x9d,0x95,0x9e,0x84,0x95,0x94]

/*: "Price Settings" :*/
fileprivate let kLeadingData:String = "raw lab let menu voicePric"
fileprivate let appMomentHeadContent:String = "nthought"

/*: "5.00" :*/
fileprivate let kDataViewTitle:String = "5.00"

/*: "30" :*/
fileprivate let app_extraStr:String = "30"

/*: "20" :*/
fileprivate let main_centerKey:String = "table0"

/*: "Chat price settings" :*/
fileprivate let const_headId:String = "of out var textChat "
fileprivate let noti_nameLabFormat:String = "let equal view view self settings"

/*: "Video call price settings" :*/
fileprivate let mainViewText:String = "Video gift in true"
fileprivate let user_centerUrl:String = "frame height tab let pri"
fileprivate let dataManagerVideoKey:[Character] = ["c","e"," ","s","e","t","t","i","n","g","s"]

/*: "Voice call price settings" :*/
fileprivate let user_fromStr:[Character] = ["V","o","i","c","e"," ","c","a","l","l"," ","p","r","i","c","e"," ","s","e","t","t","i"]
fileprivate let userTrackTitle:[Character] = ["n","g","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CountimateViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/15.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TalkingFemalePriceSetVC: TalkingBaseViewController {
class CountimateViewDelegate: SizeViewController {
    // MARK: - 属性声明 & 生命周期方法

    //: lazy var messageArray: [ChatPriceModel] = []
    lazy var messageArray: [StartTransformable] = []
    //: lazy var videoArray: [ChatPriceModel] = []
    lazy var videoArray: [StartTransformable] = []
    //: lazy var voiceArray: [ChatPriceModel] = []
    lazy var voiceArray: [StartTransformable] = []

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kScaleLoadFormat.map{$0^240}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
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

        //: self.hideNavi = false
        self.hideNavi = false
        //: self.title = "Price Settings".localized
        self.title = (String(kLeadingData.suffix(4)) + "e Setti" + appMomentHeadContent.replacingOccurrences(of: "thought", with: "gs")).localized

        //: self.setupSubviews()
        self.giftSubviews()
        //: self.setupSubViewsConstraint()
        self.appBlock()
        //: self.bindInteraction()
        self.bigness()
        //: self.setupData()
        self.sustenance()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var mainTableView = UITableView.init(frame: .zero, style: .plain).then {
    lazy var mainTableView = UITableView(frame: .zero, style: .plain).then {
        //: $0.backgroundColor = UIColor.appBgColor()
        $0.backgroundColor = UIColor.sizeColor()
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: $0.register(TalkingFemalePriceSetCell.self, forCellReuseIdentifier: TalkingFemalePriceSetCell.className())
        $0.register(ToThen.self, forCellReuseIdentifier: ToThen.className())
        //: view.addSubview($0)
        view.addSubview($0)
        //: $0.snp.makeConstraints { make in
        $0.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
    }
}

// MARK: data

//: extension TalkingFemalePriceSetVC {
extension CountimateViewDelegate {
    //: private func setupData() {
    private func sustenance() {
        //: for tempModel in PunctuateThen.share.appUserConfigMode.chatPriceSettings {
        for tempModel in PunctuateThen.share.appUserConfigMode.chatPriceSettings {
            //: if tempModel.price == Int(Double(PunctuateThen.share.loginUserMode.messagePrice ?? "5.00")!) {
            if tempModel.price == Int(Double(PunctuateThen.share.loginUserMode.messagePrice ?? (kDataViewTitle.capitalized))!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: messageArray.append(tempModel)
            messageArray.append(tempModel)
        }
        //: for tempModel in PunctuateThen.share.appUserConfigMode.videoPriceSettings {
        for tempModel in PunctuateThen.share.appUserConfigMode.videoPriceSettings {
            //: if tempModel.price == Int(Double(PunctuateThen.share.loginUserMode.videoPrice ?? "30")!) {
            if tempModel.price == Int(Double(PunctuateThen.share.loginUserMode.videoPrice ?? "30")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: videoArray.append(tempModel)
            videoArray.append(tempModel)
        }
        //: for tempModel in PunctuateThen.share.appUserConfigMode.voicePriceSettings {
        for tempModel in PunctuateThen.share.appUserConfigMode.voicePriceSettings {
            //: if tempModel.price == Int(Double(PunctuateThen.share.loginUserMode.voicePrice ?? "20")!) {
            if tempModel.price == Int(Double(PunctuateThen.share.loginUserMode.voicePrice ?? "20")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: voiceArray.append(tempModel)
            voiceArray.append(tempModel)
        }
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingFemalePriceSetVC: UITableViewDelegate, UITableViewDataSource {
extension CountimateViewDelegate: UITableViewDelegate, UITableViewDataSource {
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
        //: return 127
        return 127
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 45
        return 45
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingFemalePriceSetCell.className(), for: indexPath) as! TalkingFemalePriceSetCell
        let cell = tableView.dequeueReusableCell(withIdentifier: ToThen.className(), for: indexPath) as! ToThen
        //: var price = 0
        var price = 0
        //: var level = 0
        var level = 0
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: for model in messageArray {
            for model in messageArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 1:
        case 1:
            //: for model in videoArray {
            for model in videoArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 2:
        case 2:
            //: for model in voiceArray {
            for model in voiceArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: cell.setCellData(index: indexPath.section, price: price, leve: level)
        cell.inventoryItem(index: indexPath.section, price: price, leve: level)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headerView = UIView.init(frame: CGRect(x: 0.0, y: 0.0, width: ScreenWidth, height: 45))
        let headerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: kQueryValue, height: 45))
        //: headerView.backgroundColor = UIColor.appBgColor()
        headerView.backgroundColor = UIColor.sizeColor()

        //: let titleLab = UILabel.init(frame: CGRect(x: 15, y: 16, width: ScreenWidth-30, height: 20))
        let titleLab = UILabel(frame: CGRect(x: 15, y: 16, width: kQueryValue - 30, height: 20))
        //: switch section {
        switch section {
        //: case 0:
        case 0:
            //: titleLab.text = "Chat price settings".localized
            titleLab.text = (String(const_headId.suffix(5)) + "price" + String(noti_nameLabFormat.suffix(9))).localized
        //: break
        //: case 1:
        case 1:
            //: titleLab.text = "Video call price settings".localized
            titleLab.text = (String(mainViewText.prefix(6)) + "call" + String(user_centerUrl.suffix(4)) + String(dataManagerVideoKey)).localized
        //: break
        //: case 2:
        case 2:
            //: titleLab.text = "Voice call price settings".localized
            titleLab.text = (String(user_fromStr) + String(userTrackTitle)).localized
        //: break
        //: default:
        default:
            //: break
            break
        }

        //: titleLab.textColor = .appValueDetailColor()
        titleLab.textColor = .hockeyPlayer()
        //: titleLab.font = .pingfangFont(type: .Regular, fontSize: 16)
        titleLab.font = .clickLarge(type: .Regular, fontSize: 16)
        //: headerView.addSubview(titleLab)
        headerView.addSubview(titleLab)
        //: return headerView
        return headerView
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let vc = TalkingFemaleChatSetView.init(frame: self.view.frame)
        let vc = TagView(frame: self.view.frame)
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: vc.dataArray = messageArray
            vc.dataArray = messageArray
        //: break
        //: case 1:
        case 1:
            //: vc.dataArray = videoArray
            vc.dataArray = videoArray
        //: break
        //: case 2:
        case 2:
            //: vc.dataArray = voiceArray
            vc.dataArray = voiceArray
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: vc.showType = indexPath.section
        vc.showType = indexPath.section
        //: vc.showView()
        vc.attention()
        //: vc.seletePriceBlock = {[weak self] (seletemodel) in
        vc.seletePriceBlock = { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.mainTableView.reloadData()
            self.mainTableView.reloadData()
        }
    }
}

// MARK: - Request & 数据处理

//: extension TalkingFemalePriceSetVC {
extension CountimateViewDelegate {}

// MARK: - Public Event

//: extension TalkingFemalePriceSetVC {
extension CountimateViewDelegate {}

// MARK: - Privete Event

//: extension TalkingFemalePriceSetVC {
extension CountimateViewDelegate {}

// MARK: - Delegate

//: extension TalkingFemalePriceSetVC {
extension CountimateViewDelegate {}

// MARK: - Layout

//: extension TalkingFemalePriceSetVC{
extension CountimateViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func giftSubviews() {
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func appBlock() {}

    // 添加事件
    //: private func bindInteraction() {
    private func bigness() {}
}
