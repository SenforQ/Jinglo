
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userRowUrl:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Photo greeting" :*/
fileprivate let constStyleStr:[Character] = ["P","h","o","t","o"," ","g"]
fileprivate let constViewStr:[Character] = ["r","e","e","t","i","n","g"]

/*: "icon_me_greetSetPhoto_select_nor" :*/
fileprivate let kTextSignMsg:[UInt8] = [0x72,0x6f,0x6e,0x5f,0x74,0x63,0x65,0x6c,0x65,0x73,0x5f,0x6f,0x74,0x6f,0x68,0x50,0x74,0x65,0x53,0x74,0x65,0x65,0x72,0x67,0x5f,0x65,0x6d,0x5f,0x6e,0x6f,0x63,0x69]

/*: "icon_me_greetSetPhoto_select_pre" :*/
fileprivate let show_reportMessage:[UInt8] = [0x65,0x72,0x70,0x5f,0x74,0x63,0x65,0x6c,0x65,0x73,0x5f,0x6f,0x74,0x6f,0x68,0x50,0x74,0x65,0x53,0x74,0x65,0x65,0x72,0x67,0x5f,0x65,0x6d,0x5f,0x6e,0x6f,0x63,0x69]

/*: "  Burn after reading" :*/
fileprivate let noti_downTitle:String = "data title path put view  Burn"
fileprivate let data_groupName:[Character] = [" "]
fileprivate let showInvitationMessage:[Character] = ["r","e","a","d","i","n","g"]

/*: "Finish" :*/
fileprivate let kVideoGiftHeightMsg:String = "bag style observer for afterFinish"

/*: "type" :*/
fileprivate let noti_toPath:String = "listype"

/*: "isBurn" :*/
fileprivate let k_viewTotalName:[Character] = ["i","s","B","u","r","n"]

/*: "list" :*/
fileprivate let noti_completeKey:[Character] = ["l","i","s","t"]

/*: "unlockGift" :*/
fileprivate let userTapName:String = "utolo"
fileprivate let appVoiceId:String = "color show lab case ifckGift"

/*: "giftId" :*/
fileprivate let notiPathData:String = "lab resume status else messagegiftId"

/*: "id" :*/
fileprivate let showCountData:String = "ifile"

/*: "content" :*/
fileprivate let userTitleValue:String = "conequalnt"

/*: "status" :*/
fileprivate let dataLayerKey:String = "angle"
fileprivate let kStatusBeStr:[Character] = ["t","a","t","u","s"]

/*: "photo" :*/
fileprivate let k_buttonPath:String = "photitle"

/*: "Delete Successfully" :*/
fileprivate let notiShareUrl:[Character] = ["D","e","l","e","t","e"," ","S","u","c","c","e","s","s","f","u","l"]
fileprivate let noti_jumpUrl:String = "rendery"

/*: "unlockGiftId" :*/
fileprivate let const_applicationMessage:[Character] = ["u","n","l","o","c","k","G","i","f","t","I","d"]

/*: "Upload a beautiful photo of the greeting" :*/
fileprivate let k_equalId:[UInt8] = [0xa6,0x83,0x9f,0x9c,0x92,0x97,0xd3,0x92,0xd3,0x91,0x96,0x92,0x86,0x87,0x9a,0x95,0x86,0x9f,0xd3,0x83,0x9b,0x9c,0x87,0x9c,0xd3,0x9c,0x95,0xd3,0x87,0x9b,0x96,0xd3,0x94,0x81,0x96,0x96,0x87,0x9a,0x9d,0x94]

private func serialView(data num: UInt8) -> UInt8 {
    return num ^ 243
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DigitiserViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/27.
//

//: import UIKit
import UIKit

//: class TalkingGreetPhotoVC: TalkingBaseViewController {
class DigitiserViewController: SizeViewController {
    //: var PhotoArray: [TalkingUserInfoGalleryModel] = []
    var PhotoArray: [FailModelType] = []
    //: private var giftDic = Dictionary<String, Any>()
    private var giftDic = [String: Any]()
    //: var seleteGiftId = ""  /// 选中的礼物ID
    var seleteGiftId = "" /// 选中的礼物ID
    //: var isBurn = 0
    var isBurn = 0 // 是否阅后即焚：1=是，0=否

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userRowUrl.reversed(), encoding: .utf8)!)
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
        //: self.title = "Photo greeting".localized
        self.title = (String(constStyleStr) + String(constViewStr)).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.sizeColor()
        //: setupSubviews()
        price()
        //: setupSubViewsConstraint()
        dba()
        //: bindInteraction()
        superior()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: table.register(TalkingEditPhotoCell.self, forCellReuseIdentifier: TalkingEditPhotoCell.className())
        table.register(StudyPhotoCell.self, forCellReuseIdentifier: StudyPhotoCell.className())
        //: table.register(TalkingGreetPhotoTableCell.self, forCellReuseIdentifier: TalkingGreetPhotoTableCell.className())
        table.register(PhotoReactiveCompatibleModel.self, forCellReuseIdentifier: PhotoReactiveCompatibleModel.className())
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

    //: lazy var seleteBtn: UIButton = {
    lazy var seleteBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_me_greetSetPhoto_select_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: String(bytes: kTextSignMsg.reversed(), encoding: .utf8)!), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_me_greetSetPhoto_select_pre"), for: .selected)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: String(bytes: show_reportMessage.reversed(), encoding: .utf8)!), for: .selected)
        //: btn.setTitle("  Burn after reading".localized, for: .normal)
        btn.setTitle((String(noti_downTitle.suffix(6)) + " after" + String(data_groupName) + String(showInvitationMessage)).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        btn.setTitleColor(UIColor.toEvent(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Medium, fontSize: 16)
        //: btn.addTarget(self, action: #selector(seleteBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(toGroup), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(kVideoGiftHeightMsg.suffix(6))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Medium, fontSize: 17)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.sinceNext(colors: UIColor.analogDigitalConverterColor(), size: CGSize(width: kQueryValue - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(less), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingGreetPhotoVC {
extension DigitiserViewController {
    //: func getPhotoList(isFreshAll: Bool) {
    func small(isFreshAll: Bool) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = 4
        dict[(noti_toPath.replacingOccurrences(of: "list", with: "t"))] = 4
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: TalkingMeRequestTool.req_GetGreetList(params: dict) {[weak self] succeed, result, errorModel in
        TampReactiveCompatible.progress(params: dict) { [weak self] succeed, result, _ in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: self.PhotoArray.removeAll()
                self.PhotoArray.removeAll()
                //: self.isBurn = dict["isBurn"] as? Int ?? 0
                self.isBurn = dict[(String(k_viewTotalName))] as? Int ?? 0
                //: self.seleteBtn.isSelected = self.isBurn > 0
                self.seleteBtn.isSelected = self.isBurn > 0
                //: let array: Array =  dict["list"] as? Array<Any> ?? Array.init()
                let array: Array = dict[(String(noti_completeKey))] as? [Any] ?? Array()
                //: let tempGiftDic = dict["unlockGift"] as? [String: Any] ?? Dictionary.init()
                let tempGiftDic = dict[(userTapName.replacingOccurrences(of: "to", with: "n") + String(appVoiceId.suffix(6)))] as? [String: Any] ?? Dictionary()
                //: if self.seleteGiftId.isEmpty {
                if self.seleteGiftId.isEmpty {
                    //: self.seleteGiftId = tempGiftDic["giftId"] as? String ?? ""
                    self.seleteGiftId = tempGiftDic[(String(notiPathData.suffix(6)))] as? String ?? ""
                    //: self.giftDic = tempGiftDic
                    self.giftDic = tempGiftDic
                }

                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: let dic  = array[i] as? Dictionary<String, Any>
                    let dic = array[i] as? [String: Any]
                    //: var model = TalkingUserInfoGalleryModel.init()
                    var model = FailModelType()
                    //: model.uid = dic?["id"] as? String ?? ""
                    model.uid = dic?["id"] as? String ?? ""
                    //: model.url = dic?["content"] as? String ?? ""
                    model.url = dic?[(userTitleValue.replacingOccurrences(of: "equal", with: "te"))] as? String ?? ""
                    //: model.status = dic?["status"] as? Int ?? 0
                    model.status = dic?[(dataLayerKey.replacingOccurrences(of: "angle", with: "s") + String(kStatusBeStr))] as? Int ?? 0
                    //: model.isLocal = false
                    model.isLocal = false
                    //: self.PhotoArray.append(model)
                    self.PhotoArray.append(model)
                }
                //: if isFreshAll {
                if isFreshAll {
                    //: self.MainTable.reloadData()
                    self.MainTable.reloadData()
                    //: }else {
                } else {
                    /// 防止刷新全部，把修改的礼物信息还原
                    //: self.MainTable.reloadSection(0, with: .none)
                    self.MainTable.reloadSection(0, with: .none)
                }
                //: self.examinefinishBtnStatus()
                self.imageStatus()
            }
        }
    }
}

// MARK: - Event

//: extension TalkingGreetPhotoVC {
extension DigitiserViewController {
    //: @objc func finishBtnClick() {
    @objc func less() {
        //: self.saveInfo()
        self.outsidePlace()
    }

    //: @objc func seleteBtnClick() {
    @objc func toGroup() {
        //: seleteBtn.isSelected = !seleteBtn.isSelected
        seleteBtn.isSelected = !seleteBtn.isSelected
        //: examinefinishBtnStatus()
        imageStatus()
    }

    //: func examinefinishBtnStatus() {
    func imageStatus() {
        //: if  self.PhotoArray.count > 0 && seleteGiftId.count > 0 {
        if self.PhotoArray.count > 0, seleteGiftId.count > 0 {
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
            //: }else {
        } else {
            //: self.finishBtn.isEnabled = false
            self.finishBtn.isEnabled = false
        }
    }
}

// MARK: - MoveThen

//: extension TalkingGreetPhotoVC: EditPhotoDelegate {
extension DigitiserViewController: MoveThen {
    /// 添加本地图片
    //: func addPhoto(_ icon: [UIImage]) {
    func nameUpTelephoto(_ icon: [UIImage]) {
        //: uploadPhoto(icon)
        need(icon)
    }

    /// 删除本地相册选择的图片
    //: func deletePhoto(_ icon: UIImage) {
    func exposure(_: UIImage) {}

    /// 删除后台相册的图片
    //: func deletePhotoWithUid(_ iconUid: String) {
    func mosaic(_ iconUid: String) {
        //: var seleteIndex = -1
        var seleteIndex = -1
        //: for i in 0..<PhotoArray.count {
        for i in 0 ..< PhotoArray.count {
            //: if iconUid == PhotoArray[i].uid {
            if iconUid == PhotoArray[i].uid {
                //: seleteIndex =  i
                seleteIndex = i
            }
        }
        //: if seleteIndex>=0 && seleteIndex<PhotoArray.count {
        if seleteIndex >= 0 && seleteIndex < PhotoArray.count {
            //: deletePhoto(index: seleteIndex)
            actionBy(index: seleteIndex)
        }
    }

    /// 上传相册
    //: func uploadPhoto(_ icon: [UIImage]) {
    func need(_ icon: [UIImage]) {
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: DispatchQueue.global().async {
        DispatchQueue.global().async {
            //: let sema = DispatchSemaphore(value: 0)
            let sema = DispatchSemaphore(value: 0)

            //: for i in 0..<icon.count {
            for i in 0 ..< icon.count {
                //: let resultData: NSData = icon[i].compressedImageData()! as NSData
                let resultData: NSData = icon[i].collectionIntervalimate()! as NSData
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["type"] = 4
                dict[(noti_toPath.replacingOccurrences(of: "list", with: "t"))] = 4
                //: dict["photo"] = resultData
                dict[(k_buttonPath.replacingOccurrences(of: "title", with: "to"))] = resultData

                //: TalkingMeRequestTool.req_UploadGreetAdd(params: dict) { succeed, result, errorModel in
                TampReactiveCompatible.addGreetParamsColorCurrentHide(params: dict) { succeed, _, _ in

                    //: sema.signal()
                    sema.signal()
                    //: if succeed {
                    if succeed {
                        //: }else {
                    } else {
                        //: ProgressHUD.dismiss()
                        DirectThen.cutWith()
                    }
                }
                //: sema.wait()
                sema.wait()
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                //: self.getPhotoList(isFreshAll: false)
                self.small(isFreshAll: false)
                //: self.examinefinishBtnStatus()
                self.imageStatus()
            }
        }
    }

    /// 删除相册
    //: func deletePhoto(index: Int) {
    func actionBy(index: Int) {
        //: let model: TalkingUserInfoGalleryModel = self.PhotoArray[index]
        let model: FailModelType = self.PhotoArray[index]
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["id"] = model.uid
        dict["id"] = model.uid
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: TalkingMeRequestTool.req_DeleteAudio(params: dict) { succeed, result, errorModel in
        TampReactiveCompatible.search(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: if succeed {
            if succeed {
                //: self.PhotoArray.remove(at: index)
                self.PhotoArray.remove(at: index)
                //: self.func__showStatusBarSuccessMsg(showMsg: "Delete Successfully".localized)
                self.occupant(showMsg: (String(notiShareUrl) + noti_jumpUrl.replacingOccurrences(of: "render", with: "l")).localized)
                //: self.examinefinishBtnStatus()
                self.imageStatus()
            }
            //: self.MainTable.reloadSection(0, with: .none)
            self.MainTable.reloadSection(0, with: .none)
        }
    }

    /// 修改信息
    //: func saveInfo() {
    func outsidePlace() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["unlockGiftId"] = seleteGiftId
        dict[(String(const_applicationMessage))] = seleteGiftId
        //: dict["isBurn"] = seleteBtn.isSelected ? 1:0
        dict[(String(k_viewTotalName))] = seleteBtn.isSelected ? 1 : 0
        //: TalkingMeRequestTool.req_UploadGreetExtraSetting(params: dict) { succeed, result, errorModel in
        TampReactiveCompatible.array(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: if succeed {
            if succeed {
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingGreetPhotoVC: UITableViewDelegate, UITableViewDataSource {
extension DigitiserViewController: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
            let sizewh = Int((kQueryValue - 30 - 12 * 2 - 9 * 2) / 3)
            //: let Y = 46+sizewh*3+18
            let Y = 46 + sizewh * 3 + 18
            //: let cellheiht = Y+12
            let cellheiht = Y + 12
            //: return CGFloat(cellheiht)
            return CGFloat(cellheiht)
            //: }else {
        } else {
            //: return 140
            return 140
        }
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 15
        return 15
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let identifier = TalkingEditPhotoCell.className()
            let identifier = StudyPhotoCell.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditPhotoCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? StudyPhotoCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditPhotoCell(style: .default, reuseIdentifier: identifier)
                cell = StudyPhotoCell(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.setTips(str: "Upload a beautiful photo of the greeting".localized)
            cell?.set(str: String(bytes: k_equalId.map{serialView(data: $0)}, encoding: .utf8)!.localized)
            //: cell?.backBottomOffer = 0
            cell?.backBottomOffer = 0
            //: if PhotoArray.count>0 {
            if PhotoArray.count > 0 {
                //: cell?.setPhoto(selete: PhotoArray)
                cell?.discount(selete: PhotoArray)
                //: }else {
            } else {
                //: cell?.resetPhoto()
                cell?.beyondRecordPhoto()
            }
            //: cell?.delegate = self
            cell?.delegate = self
            //: return cell!
            return cell!
            //: }else {
        } else {
            //: let identifier = TalkingGreetPhotoTableCell.className()
            let identifier = PhotoReactiveCompatibleModel.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingGreetPhotoTableCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? PhotoReactiveCompatibleModel
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingGreetPhotoTableCell(style: .default, reuseIdentifier: identifier)
                cell = PhotoReactiveCompatibleModel(style: .default, reuseIdentifier: identifier)
            }
            //: if self.giftDic.keys.isEmpty == false {
            if self.giftDic.keys.isEmpty == false {
                //: cell?.setGiftMsgLab(dic: self.giftDic)
                cell?.showDic(dic: self.giftDic)
            }
            //: cell?.seleteGiftBlock = { [weak self] giftId in
            cell?.seleteGiftBlock = { [weak self] giftId in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: self.seleteGiftId = giftId
                self.seleteGiftId = giftId
                //: self.examinefinishBtnStatus()
                self.imageStatus()
            }
            //: return cell!
            return cell!
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView.init()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }
}

// MARK: - Layout

//: extension TalkingGreetPhotoVC {
extension DigitiserViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func price() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: self.view.addSubview(seleteBtn)
        self.view.addSubview(seleteBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func dba() {
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-35)
            make.bottom.equalToSuperview().offset(-35)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-68)
            make.bottom.equalTo(finishBtn.snp.top).offset(-68)
        }
        //: seleteBtn.snp.makeConstraints { make in
        seleteBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(MainTable.snp.bottom).offset(21)
            make.bottom.equalTo(MainTable.snp.bottom).offset(21)
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func superior() {
        //: getPhotoList(isFreshAll: true)
        small(isFreshAll: true)
    }
}
