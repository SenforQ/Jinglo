
//: Declare String Begin

/*: "Fans" :*/
fileprivate let appWithName:String = "Fansrange recover height"

/*: "Tip: Can't earn points if you follow each other~" :*/
fileprivate let showBladePath:[UInt8] = [0xf3,0xce,0xd7,0x9d,0x87,0xe4,0xc6,0xc9,0x80,0xd3,0x87,0xc2,0xc6,0xd5,0xc9,0x87,0xd7,0xc8,0xce,0xc9,0xd3,0xd4,0x87,0xce,0xc1,0x87,0xde,0xc8,0xd2,0x87,0xc1,0xc8,0xcb,0xcb,0xc8,0xd0,0x87,0xc2,0xc6,0xc4,0xcf,0x87,0xc8,0xd3,0xcf,0xc2,0xd5,0xd9]

private func effectTab(click num: UInt8) -> UInt8 {
    return num ^ 167
}

/*: "Tip:" :*/
fileprivate let dataCornerRawName:[Character] = ["T","i","p",":"]

/*: "Favorite each other" :*/
fileprivate let data_appName:[Character] = ["F","a","v","o","r","i","t","e"," ","e","a","c","h"]
fileprivate let k_slideId:[Character] = [" ","o","t","h","e","r"]

/*: " chat will be free" :*/
fileprivate let k_equalContent:String = " chat wview button"
fileprivate let const_imageModeKey:String = "share"
fileprivate let show_dateFormat:[Character] = ["l","l"," ","b","e"," ","f","r","e","e"]

/*: "targetUid" :*/
fileprivate let dataViewOperationPath:String = "task"
fileprivate let mainManagerSendValue:String = "rgetUidview false var hidden index"

/*: "type" :*/
fileprivate let notiCountData:String = "typerror"

/*: "limit" :*/
fileprivate let dataMakeMessage:String = "LIMIT"

/*: "20" :*/
fileprivate let constFrameUrl:String = "block0"

/*: "page" :*/
fileprivate let userSearchId:[Character] = ["p","a","g","e"]

/*: "You've got no Be liked yet." :*/
fileprivate let show_filterCornerLabKey:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"," ","n","o"," ","B","e"," ","l","i"]
fileprivate let appParaPath:String = "ked yet.equal strength hidden if error"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SendViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import JXPagingView
import JXPagingView
//: import UIKit
import UIKit

//: class TalkingBeAttentionVC: TalkingBaseViewController {
class SendViewDelegate: SizeViewController {
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
        //: self.title = "Fans"
        self.title = (String(appWithName.prefix(4)))
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: designView()
        lumbarVertebra()
        //: reqData()
        equalDropView()
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
            self.calendar()
        }
        //: table.addFooterRefresh { [weak self] in
        table.distant { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.mediumRefresh()
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
            label.text = String(bytes: showBladePath.map{effectTab(click: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Tip:\"Favorite each other\" chat will be free".localized
            label.text = (String(dataCornerRawName)) + "\"" + (String(data_appName) + String(k_slideId)) + "\"" + (String(k_equalContent.prefix(7)) + const_imageModeKey.replacingOccurrences(of: "share", with: "i") + String(show_dateFormat)).localized
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
}

// MARK: - Load Data

//: extension TalkingBeAttentionVC {
extension SendViewDelegate {
    //: func reqData() {
    func equalDropView() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = PunctuateThen.share.loginUserMode.userID
        dict[(dataViewOperationPath.replacingOccurrences(of: "task", with: "ta") + String(mainManagerSendValue.prefix(7)))] = PunctuateThen.share.loginUserMode.userID
        //: dict["type"] = "2"
        dict[(notiCountData.replacingOccurrences(of: "error", with: "e"))] = "2"
        //: dict["limit"] = "20"
        dict[(dataMakeMessage.lowercased())] = "20"
        //: dict["page"] = String(pageIndex)
        dict[(String(userSearchId))] = String(pageIndex)

        //: SomebodyRequestTool.req_atationList(params: dict) { succeed, result, errorModel in
        SomebodyRequestTool.cancelValue(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.sizeFlush()
            //: if succeed {
            if succeed {
                //: let array: Array = result as! Array<Any>
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
    func calendar() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        equalDropView()
    }

    //: func footerRefresh() {
    func mediumRefresh() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        equalDropView()
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingBeAttentionVC: JXPagingViewListViewDelegate {
extension SendViewDelegate: JXPagingViewListViewDelegate {
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

//: extension TalkingBeAttentionVC: UITableViewDelegate, UITableViewDataSource {
extension SendViewDelegate: UITableViewDelegate, UITableViewDataSource {
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
        //: cell?.setCell(model: model, index: indexPath, Atype: .beLike)
        cell?.whole(model: model, index: indexPath, Atype: .beLike)
        //: cell?.delegate = self
        cell?.delegate = self

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}
}

// MARK: - ClickReactiveCompatible

//: extension TalkingBeAttentionVC: AttentionDelegate {
extension SendViewDelegate: ClickReactiveCompatible {
    //: func cancelAtationSeleteIndex(_ index: IndexPath) {
    func subjectMatter(_: IndexPath) {}

    //: func belikeAtationSeleteIndex(_ index: IndexPath) {
    func socialTableTo(_ index: IndexPath) {
        //: var model = self.DataSource[index.row]
        var model = self.DataSource[index.row]
        //: model.mutualAtt = !model.mutualAtt!
        model.mutualAtt = !model.mutualAtt!
        //: self.DataSource[index.row] = model
        self.DataSource[index.row] = model
    }
}

// MARK: - UI

//: extension TalkingBeAttentionVC {
extension SendViewDelegate {
    //: private func designView() {
    private func lumbarVertebra() {
        //: var style = EmptyStyle()
        var style = BareViewEmptyStyle()
        //: style.TipsTitle = "You've got no Be liked yet.".localized
        style.TipsTitle = (String(show_filterCornerLabKey) + String(appParaPath.prefix(8))).localized
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
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-(KDeviceIsIphoneX ? 34 + 49 - 44 : 49))
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
