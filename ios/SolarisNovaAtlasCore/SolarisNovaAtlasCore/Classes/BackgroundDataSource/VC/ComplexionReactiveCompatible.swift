
//: Declare String Begin

/*: "Follow" :*/
fileprivate let constToValue:String = "equal lab count name ifFollow"

/*: "Tip: Can't earn points if you follow each other~" :*/
fileprivate let kPathText:[UInt8] = [0x64,0x79,0x80,0x4a,0x30,0x53,0x71,0x7e,0x37,0x84,0x30,0x75,0x71,0x82,0x7e,0x30,0x80,0x7f,0x79,0x7e,0x84,0x83,0x30,0x79,0x76,0x30,0x89,0x7f,0x85,0x30,0x76,0x7f,0x7c,0x7c,0x7f,0x87,0x30,0x75,0x71,0x73,0x78,0x30,0x7f,0x84,0x78,0x75,0x82,0x8e]

fileprivate func imageTouch(object num: UInt8) -> UInt8 {
    let value = Int(num) - 16
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Tip:" :*/
fileprivate let notiLastData:[Character] = ["T","i","p",":"]

/*: "Favorite each other" :*/
fileprivate let app_contentFormat:String = "table"
fileprivate let mainLabelName:String = "AVORI"
fileprivate let dataScaleText:String = "self standard self falsech other"

/*: " chat will be free" :*/
fileprivate let user_listName:[Character] = [" ","c","h","a","t"," ","w","i","l","l"," ","b","e"," ","f","r","e","e"]

/*: "targetUid" :*/
fileprivate let noti_lengthName:String = "left equal array manager equaltargetUid"

/*: "type" :*/
fileprivate let noti_standardMessage:String = "addype"

/*: "attentionType" :*/
fileprivate let mainLabFormat:[Character] = ["a","t","t","e","n"]
fileprivate let userComponentTitle:[Character] = ["t","i","o","n","T","y","p","e"]

/*: "limit" :*/
fileprivate let main_nameText:String = "cellimit"

/*: "20" :*/
fileprivate let constNameFillMessage:[Character] = ["2","0"]

/*: "page" :*/
fileprivate let notiKeyData:[Character] = ["p","a","g","e"]

/*: "You've got no favourite yet." :*/
fileprivate let noti_kitTitle:String = "You\'ve"
fileprivate let data_logMsg:String = "else heightno fav"
fileprivate let notiUpMsg:String = "image varte y"
fileprivate let kNumberimateStr:String = "et.var to any item"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ComplexionReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import JXPagingView
import JXPagingView
//: import UIKit
import UIKit

//: class TalkingAttentionVC: TalkingBaseViewController {
class ComplexionReactiveCompatible: SizeViewController {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingAttentionModel] = []
    var DataSource: [DataHandyJSON] = []

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Follow".localized
        self.title = (String(constToValue.suffix(6))).localized
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: designView()
        designAction()
        //: reqData()
        toSize()
    }

    // MARK: - Lazy load

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: let view = EmptyView()
        let view = EmptyView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.addHeaderRefresh { [weak self] in
        table.join { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.equalModel()
        }
        //: table.addFooterRefresh { [weak self] in
        table.distant { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.annotate()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bottomView: UIView = {
    lazy var bottomView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor(red: 138/255.0, green: 121/255.0, blue: 249/255.0, alpha: 0.2)
        view.backgroundColor = UIColor(red: 138 / 255.0, green: 121 / 255.0, blue: 249 / 255.0, alpha: 0.2)
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .clickLarge(type: .Regular, fontSize: 15)
        //: label.textColor = UIColor.appThemeColor()
        label.textColor = UIColor.readRemove()
        //: if PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue {
        if PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue {
            //: label.text = "Tip: Can't earn points if you follow each other~".localized
            label.text = String(bytes: kPathText.map{imageTouch(object: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Tip:\"Favorite each other\" chat will be free".localized
            label.text = getText()
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: view.addSubview(label)
        view.addSubview(label)
        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.top.equalTo(view).offset(4)
            make.top.equalTo(view).offset(4)
            //: make.bottom.equalTo(view.snp.bottom).offset(-4)
            make.bottom.equalTo(view.snp.bottom).offset(-4)
            //: make.leading.equalTo(view).offset(15)
            make.leading.equalTo(view).offset(15)
            //: make.trailing.equalTo(view.snp.trailing).offset(-15)
            make.trailing.equalTo(view.snp.trailing).offset(-15)
        }

        //: return view
        return view
        //: }()
    }()
    
    func getText() -> String {
        return (String(notiLastData)) + "\"" + (app_contentFormat.replacingOccurrences(of: "table", with: "F") + mainLabelName.lowercased() + "te ea" + String(dataScaleText.suffix(8))) + "\"" + (String(user_listName)).localized
    }
}

// MARK: - Load Data

//: extension TalkingAttentionVC {
extension ComplexionReactiveCompatible {
    //: func reqData() {
    func toSize() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = PunctuateThen.share.loginUserMode.userID
        dict[(String(noti_lengthName.suffix(9)))] = PunctuateThen.share.loginUserMode.userID
        //: dict["type"] = "1"
        dict[(noti_standardMessage.replacingOccurrences(of: "add", with: "t"))] = "1"
        //: dict["attentionType"] = "1"
        dict[(String(mainLabFormat) + String(userComponentTitle))] = "1"
        //: dict["limit"] = "20"
        dict[(main_nameText.replacingOccurrences(of: "cell", with: "l"))] = "20"
        //: dict["page"] = String(pageIndex)
        dict[(String(notiKeyData))] = String(pageIndex)

        //: SomebodyRequestTool.req_atationList(params: dict) { succeed, result, errorModel in
        SomebodyRequestTool.cancelValue(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.sizeFlush()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 && self.pageIndex > 0 {
                if array.count == 0, self.pageIndex > 0 {
                    //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var dataArr: [TalkingAttentionModel] = []
                var dataArr: [DataHandyJSON] = []
                //: if let datas = Array<TalkingAttentionModel>.deserialize(from: array as? Array) {
                if let datas = Array<DataHandyJSON>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingAttentionModel])!)
                    dataArr.append(contentsOf: (datas as? [DataHandyJSON])!)
                }
                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.DataSource = dataArr
                    self.DataSource = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.DataSource.append(contentsOf: dataArr)
                    self.DataSource.append(contentsOf: dataArr)
                }

                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func headerRefresh() {
    func equalModel() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        toSize()
    }

    //: func footerRefresh() {
    func annotate() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        toSize()
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingAttentionVC: JXPagingViewListViewDelegate {
extension ComplexionReactiveCompatible: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.MainTable
        return self.MainTable
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAttentionVC: UITableViewDelegate, UITableViewDataSource {
extension ComplexionReactiveCompatible: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.DataSource.count
        return self.DataSource.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = TalkingAttentionCell.className()
        let identifier = NameAttentionCell.className()
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingAttentionCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? NameAttentionCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingAttentionCell(style: .default, reuseIdentifier: identifier)
            cell = NameAttentionCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingAttentionModel = self.DataSource[indexPath.row]
        let model: DataHandyJSON = self.DataSource[indexPath.row]
        //: cell?.setCell(model: model, index: indexPath, Atype: .attention)
        cell?.whole(model: model, index: indexPath, Atype: .attention)
        //: cell?.delegate = self
        cell?.delegate = self

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}
}

// MARK: - ClickReactiveCompatible

//: extension TalkingAttentionVC: AttentionDelegate {
extension ComplexionReactiveCompatible: ClickReactiveCompatible {
    //: func cancelAtationSeleteIndex(_ index: IndexPath) {
    func subjectMatter(_ index: IndexPath) {
        //: self.DataSource.remove(at: index.row)
        self.DataSource.remove(at: index.row)
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
    }

    //: func belikeAtationSeleteIndex(_ index: IndexPath) {
    func socialTableTo(_: IndexPath) {}
}

// MARK: - UI

//: extension TalkingAttentionVC {
extension ComplexionReactiveCompatible {
    //: private func designView() {
    private func designAction() {
        //: var style = EmptyStyle()
        var style = BareViewEmptyStyle()
        //: style.TipsTitle = "You've got no favourite yet.".localized
        style.TipsTitle = (noti_kitTitle + " got " + String(data_logMsg.suffix(6)) + "ouri" + String(notiUpMsg.suffix(4)) + String(kNumberimateStr.prefix(3))).localized
        //: emptyView = EmptyView.init(frame: self.view.frame, style: style)
        emptyView = EmptyView(frame: self.view.frame, style: style)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.emptyBlock = {
        emptyView.emptyBlock = {
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
        //: self.view.addSubview(bottomView)
        self.view.addSubview(bottomView)
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-(KDeviceIsIphoneX ? 34 + 49-44  : 49))
            make.bottom.equalTo(self.view.snp.bottom).offset(-(dataAttributeMessage ? 34 + 49 - 44 : 49))
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(54)
            make.height.equalTo(54)
        }
        //: bottomView.isHidden = PunctuateThen.share.appStatus != AppSkinStatus.normal.rawValue
        bottomView.isHidden = PunctuateThen.share.appStatus != HiddenHashableRepresentation.normal.rawValue

        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingAttentionCell.self, forCellReuseIdentifier: TalkingAttentionCell.className())
        MainTable.register(NameAttentionCell.self, forCellReuseIdentifier: NameAttentionCell.className())
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(bottomView.snp.top)
            make.bottom.equalTo(bottomView.snp.top)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }

        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }
}
