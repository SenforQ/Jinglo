
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_toFormat:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "There's no posts yet." :*/
fileprivate let notiAppFormat:String = "Therlet model var lab"
fileprivate let user_detailId:String = "cell cell self privateo post"
fileprivate let const_itemStr:String = "greet for types yet."

/*: "uid" :*/
fileprivate let appStartFieldMakeFormat:[Character] = ["u","i","d"]

/*: "page" :*/
fileprivate let kSeekMessage:String = "pamakee"

/*: "list" :*/
fileprivate let showSkinLockMsg:String = "limodel"

/*: "nickname" :*/
fileprivate let main_whiteIndexText:[Character] = ["n","i","c","k","n","a","m","e"]

/*: "age" :*/
fileprivate let k_upTitle:String = "agtitle"

/*: "sex" :*/
fileprivate let constViewText:String = "hiddenx"

/*: "isTPAuth" :*/
fileprivate let main_rawItemContent:String = "isTPAuthself fatal gallery title for"

/*: "headPic" :*/
fileprivate let user_valueContent:String = "toe"
fileprivate let notiOnFormat:[Character] = ["a","d","P","i","c"]

/*: "pinCount" :*/
fileprivate let dataFilterTitle:String = "pinCountcell effect list size with"

/*: "model" :*/
fileprivate let mainWillTitle:[Character] = ["m","o","d","e","l"]

/*: "Unpin from profile" :*/
fileprivate let app_bitPicTitle:String = "Unpin end if color"
fileprivate let app_screenWithTitle:String = " profileself from appear text"

/*: "Delete Post" :*/
fileprivate let kMIndexPath:[Character] = ["D","e","l","e","t","e"," ","P","o","s","t"]

/*: "Pin to profile" :*/
fileprivate let app_pathDataMakeMessage:[Character] = ["P","i","n"," ","t","o"," ","p","r","o","f","i"]
fileprivate let constDateMsg:String = "loade"

/*: "id" :*/
fileprivate let noti_styleId:[Character] = ["i","d"]

/*: "momentId" :*/
fileprivate let const_kitId:String = "momenview"
fileprivate let constIndexStr:[Character] = ["I","d"]

/*: "status" :*/
fileprivate let constLiveName:String = "poptatupop"

/*: "Your post has been pinned" :*/
fileprivate let mainFromContent:String = "equal barYour "
fileprivate let data_nameKey:String = " hasaspect player gift leading"
fileprivate let main_reasonStr:[Character] = [" "]
fileprivate let user_sizeNextId:String = "pinnepost"

/*: "Your post has been Unpinned" :*/
fileprivate let noti_labelStr:String = "location last return showYour "
fileprivate let noti_textMsg:String = "s let screen"
fileprivate let dataNameMsg:String = "app data if type tempbeen "

/*: "Posts" :*/
fileprivate let notiCellData:[Character] = ["P","o","s","t","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RecordRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/22.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingUserMomentVC: TalkingBaseViewController {
class RecordRecognizerDelegate: SizeViewController {
    //: var uid = ""
    var uid = ""
    //: var pageIndex = 0
    var pageIndex = 0
    //: var disposeBag = DisposeBag()
    var disposeBag = DisposeBag()
    //: var dataSourceArr: [TalkingMomentModel] = []
    var dataSourceArr: [ViewMeasurable] = []

    //: init(uid: String) {
    init(uid: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.uid = uid
        self.uid = uid
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_toFormat.reversed(), encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        equalStopSubviews()
        //: setupSubViewsConstraint()
        itemTo()
        //: bindInteraction()
        menu()
        //: reqData()
        end()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
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
        //: table.showsVerticalScrollIndicator = true
        table.showsVerticalScrollIndicator = true
        //: table.estimatedRowHeight = 0
        table.estimatedRowHeight = 0
        //: table.estimatedSectionFooterHeight = 0
        table.estimatedSectionFooterHeight = 0
        //: table.estimatedSectionHeaderHeight = 0
        table.estimatedSectionHeaderHeight = 0
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: return table
        return table
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = BareViewEmptyStyle()
        //: style.TipsTitle = "There's no posts yet."
        style.TipsTitle = (String(notiAppFormat.prefix(4)) + "e\'s n" + String(user_detailId.suffix(6)) + String(const_itemStr.suffix(6)))
        //: let view = EmptyView.init(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingUserMomentVC {
extension RecordRecognizerDelegate {
    //: func reqData() {
    func end() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["uid"] = uid
        dict[(String(appStartFieldMakeFormat))] = uid
        //: dict["page"] = pageIndex
        dict[(kSeekMessage.replacingOccurrences(of: "make", with: "g"))] = pageIndex
        //: TalkingMomentRequestTool.req_UserMomentList(params: dict) { succeed, result, errorModel in
        StartReactiveCompatible.popOut(params: dict) { succeed, result, errorModel in

            //: self.mainTableView.endRefresh()
            self.mainTableView.sizeFlush()
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: if self.pageIndex > 0 {
                    if self.pageIndex > 0 {
                        //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                        self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    }
                    //: return
                    return
                }

                //: guard let array = dict["list"] as? Array<Any> else {
                guard let array = dict[(showSkinLockMsg.replacingOccurrences(of: "model", with: "st"))] as? [Any] else {
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    //: return
                    return
                }
                //: var dataArr: [TalkingMomentModel] = []
                var dataArr: [ViewMeasurable] = []
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<ViewMeasurable>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.nickname = dict["nickname"] as? String
                        model.nickname = dict[(String(main_whiteIndexText))] as? String
                        //: model.age = dict["age"] as? Int
                        model.age = dict[(k_upTitle.replacingOccurrences(of: "title", with: "e"))] as? Int
                        //: model.sex = dict["sex"] as? String
                        model.sex = dict[(constViewText.replacingOccurrences(of: "hidden", with: "se"))] as? String
                        //: model.uid = dict["uid"] as? String
                        model.uid = dict[(String(appStartFieldMakeFormat))] as? String
                        //: model.isTPAuth = dict["isTPAuth"] as? Bool ?? false
                        model.isTPAuth = dict[(String(main_rawItemContent.prefix(8)))] as? Bool ?? false
                        //: model.headPic = dict["headPic"] as? String
                        model.headPic = dict[(user_valueContent.replacingOccurrences(of: "to", with: "h") + String(notiOnFormat))] as? String
                        //: model.pinCount = dict["pinCount"] as! Int
                        model.pinCount = dict[(String(dataFilterTitle.prefix(8)))] as! Int
                        //: model.caculateItemHeight()
                        model.backPost()
                        //: if model.uid == PunctuateThen.share.loginUserMode.userID {
                        if model.uid == PunctuateThen.share.loginUserMode.userID {
                            //: model.isUserDetail = true
                            model.isUserDetail = true
                        }
                        //: dataArr.append(model)
                        dataArr.append(model)
                    }
                }

                //: if dataArr.count < 20 {
                if dataArr.count < 20 { // 不足一页，隐藏更多
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                }

                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataSourceArr = dataArr
                    self.dataSourceArr = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.dataSourceArr.append(contentsOf: dataArr)
                    self.dataSourceArr.append(contentsOf: dataArr)
                }

                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                self.drawObserver(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingUserMomentVC {
extension RecordRecognizerDelegate {
    //: func headerRefresh() {
    func logCorner() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        end()
    }

    //: func footerRefresh() {
    func full() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        end()
    }

    //: @objc func updateLikeNumber(notification: NSNotification) -> Void {
    @objc func insertDetail(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: var model: TalkingMomentModel = userinfo["model"] as! TalkingMomentModel
        var model: ViewMeasurable = userinfo[(String(mainWillTitle))] as! ViewMeasurable
        //: if model.uid == PunctuateThen.share.loginUserMode.userID {
        if model.uid == PunctuateThen.share.loginUserMode.userID {
            //: model.isUserDetail = true
            model.isUserDetail = true
        }
        //: for i in 0..<self.dataSourceArr.count {
        for i in 0 ..< self.dataSourceArr.count {
            //: let tmodel = self.dataSourceArr[i]
            let tmodel = self.dataSourceArr[i]
            //: if model.mid == tmodel.mid {
            if model.mid == tmodel.mid {
                //: self.dataSourceArr[i] = model
                self.dataSourceArr[i] = model
                //: self.mainTableView.reloadRows(at: [IndexPath.init(row: i, section: 0)], with: .none)
                self.mainTableView.reloadRows(at: [IndexPath(row: i, section: 0)], with: .none)
                //: return
                return
            }
        }
    }

    //: func deleteCell(model: TalkingMomentModel, index: Int) {
    func giftTo(model: ViewMeasurable, index: Int) {
        //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
        let vc = SelectReactiveCompatible(frame: self.view.frame)

        //: if model.pinCount<3 {
        if model.pinCount < 3 {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.fullPhaseOfTheMoon(cellTitleList: [(String(app_bitPicTitle.prefix(6)) + "from" + String(app_screenWithTitle.prefix(8))).localized, (String(kMIndexPath)).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Pin to profile".localized, "Delete Post".localized])
                vc.fullPhaseOfTheMoon(cellTitleList: [(String(app_pathDataMakeMessage) + constDateMsg.replacingOccurrences(of: "load", with: "l")).localized, (String(kMIndexPath)).localized])
            }
            //: } else {
        } else {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.fullPhaseOfTheMoon(cellTitleList: [(String(app_bitPicTitle.prefix(6)) + "from" + String(app_screenWithTitle.prefix(8))).localized, (String(kMIndexPath)).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Delete Post".localized])
                vc.fullPhaseOfTheMoon(cellTitleList: [(String(kMIndexPath)).localized])
            }
        }

        //: vc.munuBlock = { [weak self] index, str in
        vc.munuBlock = { [weak self] index, str in
            //: guard let self = self else {return}
            guard let self = self else { return }

            //: if str == "Unpin from profile".localized {
            if str == (String(app_bitPicTitle.prefix(6)) + "from" + String(app_screenWithTitle.prefix(8))).localized {
                //: self.topMoment(isTop: 0, model: model)
                self.communication(isTop: 0, model: model)
                //: } else if str == "Pin to profile".localized {
            } else if str == (String(app_pathDataMakeMessage) + constDateMsg.replacingOccurrences(of: "load", with: "l")).localized {
                //: self.topMoment(isTop: 1, model: model)
                self.communication(isTop: 1, model: model)
                //: } else if str == "Delete Post".localized {
            } else if str == (String(kMIndexPath)).localized {
                //: ProgressHUD.show()
                DirectThen.levelHandle()
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["id"] = model.mid
                dict["id"] = model.mid
                //: TalkingMomentRequestTool.req_DeleteMoment(params: dict) { succeed, result, errorModel in
                StartReactiveCompatible.addBe(params: dict) { succeed, _, errorModel in
                    //: ProgressHUD.dismiss()
                    DirectThen.cutWith()
                    //: if succeed {
                    if succeed {
                        //: if index<self.dataSourceArr.count {
                        if index < self.dataSourceArr.count {
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.mainTableView.mj_header?.beginRefreshing()
                            self.mainTableView.mj_header?.beginRefreshing()
                            //: } else if self.dataSourceArr.count == 1 {
                        } else if self.dataSourceArr.count == 1 {
                            //: self.dataSourceArr.removeAll()
                            self.dataSourceArr.removeAll()
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.view.addSubview(self.emptyView)
                            self.view.addSubview(self.emptyView)
                        }
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.drawObserver(showMsg: errorModel!.errorMsg)
                    }
                }
            }
        }
    }

    //: func topMoment(isTop: Int, model: TalkingMomentModel) {
    func communication(isTop: Int, model: ViewMeasurable) {
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = model.mid
        dict[(const_kitId.replacingOccurrences(of: "view", with: "t") + String(constIndexStr))] = model.mid
        //: dict["status"] = isTop
        dict[(constLiveName.replacingOccurrences(of: "pop", with: "s"))] = isTop
        //: TalkingMomentRequestTool.req_TopMoment(params: dict) { succeed, result, errorModel in
        StartReactiveCompatible.viewAwake(params: dict) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: if succeed {
            if succeed {
                //: let str = isTop==1 ? "Your post has been pinned".localized : "Your post has been Unpinned".localized
                let str = self.getTopString(isTop: isTop)
                //: self.func__showStatusBarSuccessMsg(showMsg: str)
                self.occupant(showMsg: str)
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
                //: self.mainTableView.mj_header?.beginRefreshing()
                self.mainTableView.mj_header?.beginRefreshing()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.drawObserver(showMsg: errorModel!.errorMsg)
            }
        }
    }
    
    func getTopString(isTop: Int) -> String {
        let str = isTop == 1 ? (String(mainFromContent.suffix(5)) + "post" + String(data_nameKey.prefix(4)) + " been" + String(main_reasonStr) + user_sizeNextId.replacingOccurrences(of: "post", with: "d")).localized : (String(noti_labelStr.suffix(5)) + "post ha" + String(noti_textMsg.prefix(2)) + String(dataNameMsg.suffix(5)) + "Unpinned").localized
        return str
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingUserMomentVC: UITableViewDelegate, UITableViewDataSource {
extension RecordRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.dataSourceArr.count
        return self.dataSourceArr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: return model.itemHeight ?? 56
        return model.itemHeight ?? 56
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = TalkingMomentItemCell(style: .default, reuseIdentifier: TalkingMomentItemCell.className(), isMyHost: true)
        let cell = EqualItemCell(style: .default, reuseIdentifier: EqualItemCell.className(), isMyHost: true)
        //: let model: TalkingMomentModel = self.dataSourceArr[indexPath.row]
        let model: ViewMeasurable = self.dataSourceArr[indexPath.row]
        //: cell.configCell(model: model)
        cell.afterTarget(model: model)
        //: cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
        cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.deleteCell(model: model, index: indexPath.row)
            self.giftTo(model: model, index: indexPath.row)
            //: }).disposed(by: cell.cellDisposeBag )
        }).disposed(by: cell.cellDisposeBag)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, willDisplay _: UITableViewCell, forRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: let vc =  TalkingMomentDetailVC.init(model: model)
        let vc = MomentOfTruthFullMoonVerityViewController(model: model)
        //: vc.delegete = { [weak self] in
        vc.delegete = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if indexPath.row<self.dataSourceArr.count {
            if indexPath.row < self.dataSourceArr.count {
                //: self.dataSourceArr.remove(at: indexPath.row)
                self.dataSourceArr.remove(at: indexPath.row)
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
            }
        }
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingUserMomentVC {
extension RecordRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func equalStopSubviews() {
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.sizeColor()
        //: self.title = "Posts".localized
        self.title = (String(notiCellData)).localized
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)

        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: mainTableView.register(TalkingMomentItemCell.self, forCellReuseIdentifier: TalkingMomentItemCell.className())
        mainTableView.register(EqualItemCell.self, forCellReuseIdentifier: EqualItemCell.className())
        //: mainTableView.dataSource = self
        mainTableView.dataSource = self
        //: mainTableView.delegate = self
        mainTableView.delegate = self
        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func itemTo() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func menu() {
        //: mainTableView.addHeaderRefresh { [weak self] in
        mainTableView.join { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.logCorner()
        }
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.distant { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.full()
        }

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateLikeNumber(notification:)), name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(insertDetail(notification:)), name: data_countMsg, object: nil)
    }
}
