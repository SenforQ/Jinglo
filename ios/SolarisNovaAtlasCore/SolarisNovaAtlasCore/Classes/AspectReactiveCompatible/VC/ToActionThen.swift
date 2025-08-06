
//: Declare String Begin

/*: "nil" :*/
fileprivate let kEqualMsg:String = "linel"

/*: "Edit profiles" :*/
fileprivate let dataBackMsg:[Character] = ["E","d","i","t"," ","p","r","o"]
fileprivate let const_nameMessage:String = "filreleases"

/*: "Done" :*/
fileprivate let userImageId:String = "to to key effect viewDone"

/*: "#999999" :*/
fileprivate let main_addUrl:[Character] = ["#","9","9","9","9","9","9"]

/*: "uid" :*/
fileprivate let dataCornerBirthLetValue:[Character] = ["u","i","d"]

/*: "Save the change?" :*/
fileprivate let showImageMessage:String = "if cellSave "
fileprivate let notiInnerHiddenValue:String = "title any manager appearancethe ch"

/*: "Cancel" :*/
fileprivate let userDataValue:[Character] = ["C","a","n","c","e","l"]

/*: "Save" :*/
fileprivate let showShadowPath:String = "Savekind var text button add"

/*: "nickname" :*/
fileprivate let data_toMsg:[Character] = ["n","i","c","k","n","a","m","e"]

/*: "birthday" :*/
fileprivate let noti_valueSizeRegularId:String = "bmaketh"
fileprivate let main_clearMsg:String = "daat"

/*: "desc" :*/
fileprivate let data_equalTitle:String = "descreate"

/*: "Modify the success" :*/
fileprivate let userPicDailyData:String = "Modifysub center number var"
fileprivate let mainIconListTitleData:String = "CCESS"

/*: "pic" :*/
fileprivate let mainAddValue:String = "pofc"

/*: "[ :*/
fileprivate let k_needId:String = "["

/*: ]" :*/
fileprivate let data_skinPath:String = "]"

/*: "pids" :*/
fileprivate let notiMakeDataMessage:String = "ptos"

/*: "aboutMe" :*/
fileprivate let notiSaveTopKey:String = "var equalaboutMe"

/*: "interest" :*/
fileprivate let show_appFormat:String = "INTER"
fileprivate let kCancelMsg:[Character] = ["e","s","t"]

/*: "tagIds" :*/
fileprivate let user_videoEqualUrl:String = "price gender frame momenttagIds"

/*: "category" :*/
fileprivate let showTempMessage:String = "changea"
fileprivate let const_viaValue:String = "tmodelory"

/*: "An error occurred, please try again" :*/
fileprivate let user_sizeTitle:[UInt8] = [0xcb,0xe4,0xaa,0xef,0xf8,0xf8,0xe5,0xf8,0xaa,0xe5,0xe9,0xe9,0xff,0xf8,0xf8,0xef,0xee,0xa6,0xaa,0xfa,0xe6,0xef,0xeb,0xf9,0xef,0xaa,0xfe,0xf8,0xf3,0xaa,0xeb,0xed,0xeb,0xe3,0xe4]

/*: "imgUrl" :*/
fileprivate let showDataAddPath:String = "let close path table indeximgUrl"

/*: "videoUrl" :*/
fileprivate let constLoadModeId:String = "videoUrback he detail false"
fileprivate let dataTitleName:[Character] = ["l"]

/*: "Video cover submitted successfully" :*/
fileprivate let data_sourceMessage:[UInt8] = [0x79,0x6c,0x6c,0x75,0x66,0x73,0x73,0x65,0x63,0x63,0x75,0x73,0x20,0x64,0x65,0x74,0x74,0x69,0x6d,0x62,0x75,0x73,0x20,0x72,0x65,0x76,0x6f,0x63,0x20,0x6f,0x65,0x64,0x69,0x56]

/*: "video_url" :*/
fileprivate let main_dataPath:String = "name headvideo_"
fileprivate let kDeadlineName:String = "urlive"

/*: "img_url" :*/
fileprivate let noti_matchName:[Character] = ["i","m","g","_","u","r","l"]

/*: "status" :*/
fileprivate let const_handleName:[Character] = ["s","t","a","t","u"]
fileprivate let app_dataValue:String = "since"

/*: "UITableViewCell" :*/
fileprivate let appMakeMCostTitle:String = "UITabself player"
fileprivate let notiLabelName:[Character] = ["C","e","l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToActionThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingEditProfilesVC: TalkingBaseViewController {
class ToActionThen: SizeViewController {
    //: var seleteAboutme: [UserSeleteTagModel] = []
    var seleteAboutme: [HiddenHandyJSON] = []
    //: var seleteInters: [UserSeleteTagModel] = []
    var seleteInters: [HiddenHandyJSON] = []

    //: var isdeleteAboutme = false
    var isdeleteAboutme = false
    //: var isdeleteInters = false
    var isdeleteInters = false

    //: var isTips = false
    var isTips = false

    //: var PhotoArray: [TalkingUserInfoGalleryModel] = []
    var PhotoArray: [FailModelType] = []
    //: var seletePhotoArray: [UIImage] = []
    var seletePhotoArray: [UIImage] = []
    //: var DeletePhotoArray: [String] = []
    var DeletePhotoArray: [String] = []

    //: var nameStr: String = ""
    var nameStr: String = ""
    //: var birthday: String = ""
    var birthday: String = ""
    //: var signStr: String = "nil"
    var signStr: String = (kEqualMsg.replacingOccurrences(of: "line", with: "ni"))

    //: private var VideoIconPath = ""
    private var VideoIconPath = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: private var videoStatus = -3
    private var videoStatus = -3 // 视频审核状态：0待审核 1审核通过 -1审核拒绝 -3未上传
    //: private var isChangeVideo = false
    private var isChangeVideo = false

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = false
        self.hideNavi = false
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.sizeColor()
        //: self.title = "Edit profiles".localized
        self.title = (String(dataBackMsg) + const_nameMessage.replacingOccurrences(of: "release", with: "e")).localized

        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        //: btn.setTitle("Done".localized, for: .normal)
        btn.setTitle((String(userImageId.suffix(4))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.init(hex: "#999999"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(main_addUrl))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Medium, fontSize: 15)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pointDoingPost), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem=item
        self.navigationItem.rightBarButtonItem = item

        //: seleteAboutme = PunctuateThen.share.loginUserMode.aboutMe!
        seleteAboutme = PunctuateThen.share.loginUserMode.aboutMe!
        //: seleteInters = PunctuateThen.share.loginUserMode.interest!
        seleteInters = PunctuateThen.share.loginUserMode.interest!
        //: designView()
        icon()
        //: GetGallery()
        makeGallery()
        //: getVideoInfo()
        sign()

        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardShowBeHidden(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(be(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
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

    //: deinit {
    deinit {
        //: ProgressHUD.dismiss()
        DirectThen.cutWith()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: return table
        return table
        //: }()
    }()
}

// MARK: - Laod data

//: extension TalkingEditProfilesVC {
extension ToActionThen {
    //: func GetGallery() {
    func makeGallery() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["uid"] = PunctuateThen.share.loginUserMode.userID
        dict[(String(dataCornerBirthLetValue))] = PunctuateThen.share.loginUserMode.userID
        //: TalkingMeRequestTool.req_GalleryByUid(params: dict) { succeed, result, errorModel in
        TampReactiveCompatible.after(params: dict) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count>0 {
                if array.count > 0 {
                    //: self.PhotoArray.removeAll()
                    self.PhotoArray.removeAll()
                }
                //: if let datas = Array<TalkingUserInfoGalleryModel>.deserialize(from: array as? Array) {
                if let datas = Array<FailModelType>.deserialize(from: array as? Array) {
                    //: self.PhotoArray.append(contentsOf: (datas as? [TalkingUserInfoGalleryModel])!)
                    self.PhotoArray.append(contentsOf: (datas as? [FailModelType])!)
                }
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: override func naviPopback() {
    override func untilNavi() {
        //: for i in MainTable.visibleCells {
        for i in MainTable.visibleCells {
            //: if i.reuseIdentifier == TalkingEditNameCell.className() {
            if i.reuseIdentifier == ModelWithViewCell.className() {
                //: let namecell: TalkingEditNameCell = i as! TalkingEditNameCell
                let namecell: ModelWithViewCell = i as! ModelWithViewCell
                //: namecell.nameTF.resignFirstResponder()
                namecell.nameTF.resignFirstResponder()
            }
            //: if i.reuseIdentifier == TalkingEditSignCell.className() {
            if i.reuseIdentifier == AddThen.className() {
                //: let namecell: TalkingEditSignCell = i as! TalkingEditSignCell
                let namecell: AddThen = i as! AddThen
                //: namecell.textView.resignFirstResponder()
                namecell.textView.resignFirstResponder()
            }
        }
        //: if (nameStr.count > 0&&PunctuateThen.share.loginUserMode.nickname != nameStr)||( birthday.count > 0&&PunctuateThen.share.loginUserMode.birthday != self.birthday)||(signStr != "nil" && PunctuateThen.share.loginUserMode.signature != signStr)||self.seletePhotoArray.count>0||self.DeletePhotoArray.count>0||isdeleteAboutme||isdeleteInters || isChangeVideo {
        if (nameStr.count > 0 && PunctuateThen.share.loginUserMode.nickname != nameStr) || (birthday.count > 0 && PunctuateThen.share.loginUserMode.birthday != self.birthday) || (signStr != (kEqualMsg.replacingOccurrences(of: "line", with: "ni")) && PunctuateThen.share.loginUserMode.signature != signStr) || self.seletePhotoArray.count > 0 || self.DeletePhotoArray.count > 0 || isdeleteAboutme || isdeleteInters || isChangeVideo {
            //: let config = ShowAlertConfig()
            let config = CurtilageAlertConfig()
            //: config.alignment = .center
            config.alignment = .center
            //: TalkingAlertShow.customAlert(message: "Save the change?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Save".localized, leftBlock: { [weak self] in
            SizeReactiveCompatible.buttonEnter(message: (String(showImageMessage.suffix(5)) + String(notiInnerHiddenValue.suffix(6)) + "ange?").localized, leftBtnTitle: (String(userDataValue)).localized, rightBtnTitle: (String(showShadowPath.prefix(4))).localized, leftBlock: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: TalkingAlertShow.hideAlert()
                SizeReactiveCompatible.obstruct()
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)

                //: }, rightBlock: { [weak self] in
            }, rightBlock: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: TalkingAlertShow.hideAlert()
                SizeReactiveCompatible.obstruct()
                //: self.uploadTool(isBack: true)
                self.custom(isBack: true)
                //: }, config: config)
            }, config: config)
            //: } else {
        } else {
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
        }
    }

    //: @objc func doneBtnClick() {
    @objc func pointDoingPost() {
        //: uploadTool(isBack: false)
        custom(isBack: false)
    }

    //: func uploadTool(isBack: Bool) {
    func custom(isBack: Bool) {
        //: for i in MainTable.visibleCells {
        for i in MainTable.visibleCells {
            //: if i.reuseIdentifier == TalkingEditNameCell.className() {
            if i.reuseIdentifier == ModelWithViewCell.className() {
                //: let namecell: TalkingEditNameCell = i as! TalkingEditNameCell
                let namecell: ModelWithViewCell = i as! ModelWithViewCell
                //: namecell.nameTF.resignFirstResponder()
                namecell.nameTF.resignFirstResponder()
            }
            //: if i.reuseIdentifier == TalkingEditSignCell.className() {
            if i.reuseIdentifier == AddThen.className() {
                //: let namecell: TalkingEditSignCell = i as! TalkingEditSignCell
                let namecell: AddThen = i as! AddThen
                //: namecell.textView.resignFirstResponder()
                namecell.textView.resignFirstResponder()
            }
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()

        //: if nameStr.count > 0 && PunctuateThen.share.loginUserMode.nickname != nameStr {
        if nameStr.count > 0, PunctuateThen.share.loginUserMode.nickname != nameStr {
            //: dict["nickname"] = nameStr
            dict[(String(data_toMsg))] = nameStr
        }
        //: if birthday.count > 0 && PunctuateThen.share.loginUserMode.birthday != birthday {
        if birthday.count > 0, PunctuateThen.share.loginUserMode.birthday != birthday {
            //: dict["birthday"] = birthday
            dict[(noti_valueSizeRegularId.replacingOccurrences(of: "make", with: "ir") + main_clearMsg.replacingOccurrences(of: "at", with: "y"))] = birthday
        }
        //: if signStr != "nil" && PunctuateThen.share.loginUserMode.signature != signStr {
        if signStr != (kEqualMsg.replacingOccurrences(of: "line", with: "ni")), PunctuateThen.share.loginUserMode.signature != signStr {
            //: dict["desc"] = signStr
            dict[(data_equalTitle.replacingOccurrences(of: "create", with: "c"))] = signStr
        }

        //: photoAndTagTool(BackT: isBack, isTips: dict.count == 0)
        photo(BackT: isBack, isTips: dict.count == 0)

        //: if VideoIconPath.count>1 && videoPath.count>1 && isChangeVideo == true && PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue {
        if VideoIconPath.count > 1, videoPath.count > 1, isChangeVideo == true, PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue {
            //: uploadVideo()
            withImage()
        }

        //: if dict.count == 0 {
        if dict.count == 0 {
            //: return
            return
        }

        //: ProgressHUD.show()
        DirectThen.levelHandle()

        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        TampReactiveCompatible.listGift(params: dict) { [weak self] succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
                self.occupant(showMsg: (String(userPicDailyData.prefix(6)) + " the su" + mainIconListTitleData.lowercased()).localized)

                //: if self.nameStr.count > 0 {
                if self.nameStr.count > 0 {
                    //: PunctuateThen.share.loginUserMode.nickname = self.nameStr
                    PunctuateThen.share.loginUserMode.nickname = self.nameStr
                }
                //: if self.birthday.count > 0 {
                if self.birthday.count > 0 {
                    //: PunctuateThen.share.loginUserMode.birthday = self.birthday
                    PunctuateThen.share.loginUserMode.birthday = self.birthday
                }
                //: PunctuateThen.share.loginUserMode.signature = self.signStr
                PunctuateThen.share.loginUserMode.signature = self.signStr

                //: if isBack {
                if isBack {
                    //: self.navigationController?.popViewController(animated: true)
                    self.navigationController?.popViewController(animated: true)
                }

                //: } else {
            } else {
                //: if errorModel?.errorCode != 100 {
                if errorModel?.errorCode != 100 {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                    self.drawObserver(showMsg: errorModel!.errorMsg)
                }
            }
        }
    }

    //: func photoAndTagTool(BackT: Bool, isTips: Bool) {
    func photo(BackT: Bool, isTips: Bool) {
        //: self.isTips = isTips
        self.isTips = isTips
        //: if self.DeletePhotoArray.count>0 {
        if self.DeletePhotoArray.count > 0 {
            // 先删再加
            //: deletePhoto()
            edit()
            //: } else {
        } else {
            //: if self.seletePhotoArray.count>0 {
            if self.seletePhotoArray.count > 0 {
                //: uploadPhoto()
                withPhoto()
            }
        }

        //: if isdeleteAboutme {
        if isdeleteAboutme {
            //: deleteTag(type: 1)
            heap(type: 1)
        }
        //: if isdeleteInters {
        if isdeleteInters {
            //: deleteTag(type: 2)
            heap(type: 2)
        }
        //: if BackT {
        if BackT {
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
        }
    }

    /// 上传相册
    //: func uploadPhoto() {
    func withPhoto() {
        //: for i in 0..<seletePhotoArray.count {
        for i in 0 ..< seletePhotoArray.count {
            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: let resultData: NSData = seletePhotoArray[i].compressedImageData()! as NSData
            let resultData: NSData = seletePhotoArray[i].collectionIntervalimate()! as NSData
            //: dict["pic"] = resultData
            dict[(mainAddValue.replacingOccurrences(of: "of", with: "i"))] = resultData
            //: ProgressHUD.show()
            DirectThen.levelHandle()
            //: TalkingMeRequestTool.req_UploadPic(params: dict) { [weak self] succeed, result, errorModel in
            TampReactiveCompatible.nearService(params: dict) { [weak self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                DirectThen.cutWith()
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if succeed {
                if succeed {
                    //: if  self.isTips {
                    if self.isTips {
                        //: self.isTips = false
                        self.isTips = false
                        //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
                        self.occupant(showMsg: (String(userPicDailyData.prefix(6)) + " the su" + mainIconListTitleData.lowercased()).localized)
                    }
                    //: self.seletePhotoArray.removeAll()
                    self.seletePhotoArray.removeAll()
                    //: self.GetGallery()
                    self.makeGallery()
                }
            }
        }
    }

    /// 删除相册
    //: func deletePhoto() {
    func edit() {
        //: var str = DeletePhotoArray.joined(separator: ",")
        var str = DeletePhotoArray.joined(separator: ",")
        //: str = "[\(str)]"
        str = "[\(str)]"
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["pids"] = str
        dict[(notiMakeDataMessage.replacingOccurrences(of: "to", with: "id"))] = str
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: TalkingMeRequestTool.req_DeletePic(params: dict) { [weak self] succeed, result, errorModel in
        TampReactiveCompatible.viewExecuteOf(params: dict) { [weak self] succeed, _, _ in

            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if self.seletePhotoArray.count>0 {
            if self.seletePhotoArray.count > 0 {
                //: self.uploadPhoto()
                self.withPhoto()
                //: } else {
            } else {
                //: ProgressHUD.dismiss()
                DirectThen.cutWith()
            }
            //: if succeed {
            if succeed {
                //: if  self.isTips {
                if self.isTips {
                    //: self.isTips = false
                    self.isTips = false
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
                    self.occupant(showMsg: (String(userPicDailyData.prefix(6)) + " the su" + mainIconListTitleData.lowercased()).localized)
                }

                //: self.DeletePhotoArray.removeAll()
                self.DeletePhotoArray.removeAll()
                //: self.GetGallery()
                self.makeGallery()
            }
        }
    }

    /// 修改tag
    //: func deleteTag(type: Int) {
    func heap(type: Int) {
        //: var array: [UserSeleteTagModel] = []
        var array: [HiddenHandyJSON] = []
        //: var category = ""
        var category = ""
        //: if type==1 {
        if type == 1 {
            //: array=seleteAboutme
            array = seleteAboutme
            //: category="aboutMe"
            category = (String(notiSaveTopKey.suffix(7)))
            //: } else {
        } else {
            //: array=seleteInters
            array = seleteInters
            //: category="interest"
            category = (show_appFormat.lowercased() + String(kCancelMsg))
        }
        //: var str = ""
        var str = ""
        //: for i in 0..<array.count {
        for i in 0 ..< array.count {
            //: let model = array[i]
            let model = array[i]
            //: str += model.tag_id!
            str += model.tag_id!
            //: if i<array.count-1 {
            if i < array.count - 1 {
                //: str += ","
                str += ","
            }
        }
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["tagIds"] = str
        dict[(String(user_videoEqualUrl.suffix(6)))] = str
        //: dict["category"] = category
        dict[(showTempMessage.replacingOccurrences(of: "change", with: "c") + const_viaValue.replacingOccurrences(of: "model", with: "eg"))] = category
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: TalkingMeRequestTool.req_EditTag(params: dict) { [weak self] succeed, result, errorModel in
        TampReactiveCompatible.face(params: dict) { [weak self] succeed, _, _ in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: if  self.isTips {
                if self.isTips {
                    //: self.isTips = false
                    self.isTips = false
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
                    self.occupant(showMsg: (String(userPicDailyData.prefix(6)) + " the su" + mainIconListTitleData.lowercased()).localized)
                }
                //: if type==1 {
                if type == 1 {
                    //: self.isdeleteAboutme = false
                    self.isdeleteAboutme = false
                    //: PunctuateThen.share.loginUserMode.aboutMe = self.seleteAboutme
                    PunctuateThen.share.loginUserMode.aboutMe = self.seleteAboutme
                    //: } else {
                } else {
                    //: self.isdeleteInters = false
                    self.isdeleteInters = false
                    //: PunctuateThen.share.loginUserMode.interest = self.seleteInters
                    PunctuateThen.share.loginUserMode.interest = self.seleteInters
                }
            }
        }
    }

    /// 上传视频
    //: func uploadVideo() {
    func withImage() {
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: TalkingMomentVideoManager.shared.cos_uploadVideo(type: 2, coverPath: self.VideoIconPath, videoPath: self.videoPath) { coverUrl, videoUrl, succeed in
        ClickBuildListener.shared.numberry(type: 2, coverPath: self.VideoIconPath, videoPath: self.videoPath) { coverUrl, videoUrl, succeed in
            //: guard succeed else {
            guard succeed else {
                //: ProgressHUD.dismiss()
                DirectThen.cutWith()
                //: self.func__showStatusBarErrorMsg(showMsg: "An error occurred, please try again".localized)
                self.drawObserver(showMsg: String(bytes: user_sizeTitle.map{$0^138}, encoding: .utf8)!.localized)
                //: return
                return
            }

            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["imgUrl"] = coverUrl
            dict[(String(showDataAddPath.suffix(6)))] = coverUrl
            //: dict["videoUrl"] = videoUrl
            dict[(String(constLoadModeId.prefix(7)) + String(dataTitleName))] = videoUrl

            //: TalkingMeRequestTool.uploadVideoUserEdit(params: dict) { [weak self] succeed, result, errorModel in
            TampReactiveCompatible.visualCommunication(params: dict) { [weak self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                DirectThen.cutWith()
                //: guard let self = self else { return }
                guard let self = self else { return }

                //: guard succeed else {
                guard succeed else {
                    //: self.func__showStatusBarErrorMsg(showMsg: "An error occurred, please try again".localized)
                    self.drawObserver(showMsg: String(bytes: user_sizeTitle.map{$0^138}, encoding: .utf8)!.localized)
                    //: return
                    return
                }
                //: self.VideoIconPath = ""
                self.VideoIconPath = ""
                //: self.videoPath = ""
                self.videoPath = ""
                //: self.isChangeVideo = false
                self.isChangeVideo = false
                //: self.videoStatus = 0
                self.videoStatus = 0
                //: self.func__showStatusBarSuccessMsg(showMsg: "Video cover submitted successfully".localized)
                self.occupant(showMsg: String(bytes: data_sourceMessage.reversed(), encoding: .utf8)!.localized)
                //: for i in self.MainTable.visibleCells {
                for i in self.MainTable.visibleCells {
                    //: if i.reuseIdentifier == TalkingEditVideoCell.className() {
                    if i.reuseIdentifier == StyleReactiveCompatible.className() {
                        //: let videocell: TalkingEditVideoCell = i as! TalkingEditVideoCell
                        let videocell: StyleReactiveCompatible = i as! StyleReactiveCompatible
                        //: videocell.upDateCellView(videoPlayPath: dict["videoUrl"] as! String)
                        videocell.container(videoPlayPath: dict[(String(constLoadModeId.prefix(7)) + String(dataTitleName))] as! String)
                        //: videocell.setVideoStatusLB(status: self.videoStatus)
                        videocell.user(status: self.videoStatus)
                    }
                }
            }
        }
    }

    //: func getVideoInfo() {
    func sign() {
        //: TalkingMeRequestTool.getUploadVideoInfo { [weak self] succeed, result, errorModel in
        TampReactiveCompatible.map { [weak self] succeed, result, _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {return}
                guard let dict = result as? [String: Any] else { return }
                //: self.videoPath = dict["video_url"] as! String
                self.videoPath = dict[(String(main_dataPath.suffix(6)) + kDeadlineName.replacingOccurrences(of: "live", with: "l"))] as! String
                //: self.VideoIconPath = dict["img_url"] as! String
                self.VideoIconPath = dict[(String(noti_matchName))] as! String
                //: self.videoStatus = dict["status"] as? Int ?? -3
                self.videoStatus = dict[(String(const_handleName) + app_dataValue.replacingOccurrences(of: "since", with: "s"))] as? Int ?? -3
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }
}

// MARK: - Event

//: extension TalkingEditProfilesVC {
extension ToActionThen {
    //: @objc func keyboardShowBeHidden(notification: NSNotification) {
    @objc func be(notification: NSNotification) {
        //: let info = notification.userInfo
        let info = notification.userInfo
        //: let keyBoardHeight = (info![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.size.height
        let keyBoardHeight = (info![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.size.height

        //: for i in MainTable.visibleCells {
        for i in MainTable.visibleCells {
            //: if i.reuseIdentifier == TalkingEditNameCell.className() {
            if i.reuseIdentifier == ModelWithViewCell.className() {
                //: let namecell: TalkingEditNameCell = i as! TalkingEditNameCell
                let namecell: ModelWithViewCell = i as! ModelWithViewCell
                //: if namecell.nameTF.isFirstResponder {
                if namecell.nameTF.isFirstResponder {
                    //: MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY-keyBoardHeight), animated: true)
                    MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY - keyBoardHeight), animated: true)
                }
            }
            //: if i.reuseIdentifier == TalkingEditSignCell.className() {
            if i.reuseIdentifier == AddThen.className() {
                //: let namecell: TalkingEditSignCell = i as! TalkingEditSignCell
                let namecell: AddThen = i as! AddThen
                //: if namecell.textView.isFirstResponder {
                if namecell.textView.isFirstResponder {
                    //: MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY-keyBoardHeight), animated: true)
                    MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY - keyBoardHeight), animated: true)
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingEditProfilesVC: UITableViewDelegate, UITableViewDataSource {
extension ToActionThen: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 7
        return 7
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
            //: if PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue {
            if PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue {
                //: return 226
                return 226
            }
            //: return 0
            return 0

            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
            let sizewh = Int((kQueryValue - 30 - 12 * 2 - 9 * 2) / 3)
            //: let Y = 46+sizewh*3+18
            let Y = 46 + sizewh * 3 + 18
            //: let cellheiht = Y+12+26+15
            let cellheiht = Y + 12 + 26 + 15
            //: return CGFloat(cellheiht)
            return CGFloat(cellheiht)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: return 107+15
            return 107 + 15
            //: } else if indexPath.section == 3 {
        } else if indexPath.section == 3 {
            //: return 64
            return 64
            //: } else if indexPath.section == 4 {
        } else if indexPath.section == 4 {
            //: return 176
            return 176
            //: } else if indexPath.section == 5 || indexPath.section == 6 {
        } else if indexPath.section == 5 || indexPath.section == 6 {
            //: if indexPath.section == 5 && seleteAboutme.count>0 {
            if indexPath.section == 5 && seleteAboutme.count > 0 {
                //: return self.computeCellheight(type: 1)+64
                return self.addType(type: 1) + 64
                //: } else if indexPath.section == 6 && seleteInters.count>0 {
            } else if indexPath.section == 6 && seleteInters.count > 0 {
                //: return self.computeCellheight(type: 2)+64
                return self.addType(type: 2) + 64
            }
            //: return 64
            return 64
        }
        //: return 56
        return 56
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 56
        return 56
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 0.1
        return 0.1
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.1
        return 0.1
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let identifier = TalkingEditVideoCell.className()
            let identifier = StyleReactiveCompatible.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditVideoCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? StyleReactiveCompatible
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditVideoCell(style: .default, reuseIdentifier: identifier)
                cell = StyleReactiveCompatible(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.setVideoStatusLB(status: self.videoStatus)
            cell?.user(status: self.videoStatus)
            //: if VideoIconPath.count>1 && videoPath.count>1 {
            if VideoIconPath.count > 1 && videoPath.count > 1 {
                //: cell?.setCellView(iconPath: VideoIconPath)
                cell?.viewContent(iconPath: VideoIconPath)
                //: cell?.upDateCellView(videoPlayPath: videoPath)
                cell?.container(videoPlayPath: videoPath)
            }
            //: cell?.seleteBlock = { [weak self] imagPath, VideoPath in
            cell?.seleteBlock = { [weak self] imagPath, VideoPath in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.VideoIconPath = imagPath
                self.VideoIconPath = imagPath
                //: self.videoPath = VideoPath
                self.videoPath = VideoPath
                //: self.isChangeVideo = true
                self.isChangeVideo = true
            }
            //: cell?.deleteBlock = { [weak self] in
            cell?.deleteBlock = { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.VideoIconPath = ""
                self.VideoIconPath = ""
                //: self.videoPath = ""
                self.videoPath = ""
                //: self.isChangeVideo = false
                self.isChangeVideo = false
            }
            //: return cell!
            return cell!

            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: let identifier = TalkingEditPhotoCell.className()
            let identifier = StudyPhotoCell.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditPhotoCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? StudyPhotoCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditPhotoCell(style: .default, reuseIdentifier: identifier)
                cell = StudyPhotoCell(style: .default, reuseIdentifier: identifier)
            }
            //: if PhotoArray.count>0 {
            if PhotoArray.count > 0 {
                //: cell?.setPhoto(selete: PhotoArray)
                cell?.discount(selete: PhotoArray)
                //: } else {
            } else {
                //: cell?.resetPhoto()
                cell?.beyondRecordPhoto()
            }
            //: cell?.delegate = self
            cell?.delegate = self
            //: return cell!
            return cell!
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: let identifier = TalkingEditNameCell.className()
            let identifier = ModelWithViewCell.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditNameCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? ModelWithViewCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditNameCell(style: .default, reuseIdentifier: identifier)
                cell = ModelWithViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.nameBlock = { [weak self] name in
            cell?.nameBlock = { [weak self] name in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.nameStr = name
                self.nameStr = name
            }
            //: return cell!
            return cell!
            //: } else if indexPath.section == 3 {
        } else if indexPath.section == 3 {
            //: let identifier = TalkingEditBirthdayCell.className()
            let identifier = CorruptThen.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditBirthdayCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? CorruptThen
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditBirthdayCell(style: .default, reuseIdentifier: identifier)
                cell = CorruptThen(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.birthdayBlock = { [weak self] day in
            cell?.birthdayBlock = { [weak self] day in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.birthday = day
                self.birthday = day
            }
            //: return cell!
            return cell!
            //: } else if indexPath.section == 4 {
        } else if indexPath.section == 4 {
            //: let identifier = TalkingEditSignCell.className()
            let identifier = AddThen.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditSignCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? AddThen
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditSignCell(style: .default, reuseIdentifier: identifier)
                cell = AddThen(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.signBlock = { [weak self] sign in
            cell?.signBlock = { [weak self] sign in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.signStr = sign
                self.signStr = sign
            }

            //: return cell!
            return cell!
            //: } else if indexPath.section == 5 || indexPath.section == 6 {
        } else if indexPath.section == 5 || indexPath.section == 6 {
            //: let identifier = TalkingEditAboutMeCell.className()
            let identifier = FileReactiveCompatible.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditAboutMeCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? FileReactiveCompatible
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditAboutMeCell(style: .default, reuseIdentifier: identifier)
                cell = FileReactiveCompatible(style: .default, reuseIdentifier: identifier)
            }
            //: if indexPath.section == 5 {
            if indexPath.section == 5 {
                //: cell!.tagtype = .AboutMe
                cell!.tagtype = .AboutMe
                //: } else {
            } else {
                //: cell!.tagtype = .Interests
                cell!.tagtype = .Interests
            }
            //: cell?.setTitle()
            cell?.bar()
            //: if seleteAboutme.count>0 && indexPath.section == 5 {
            if seleteAboutme.count > 0 && indexPath.section == 5 {
                //: cell?.setMessage(seleteAboutme)
                cell?.messageSet(seleteAboutme)
            }
            //: if seleteInters.count>0 && indexPath.section == 6 {
            if seleteInters.count > 0 && indexPath.section == 6 {
                //: cell?.setMessage(seleteInters)
                cell?.messageSet(seleteInters)
            }
            //: cell?.editBtnBlock = { [weak self] in
            cell?.editBtnBlock = { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: let vc = TalkingEditTagVC.init()
                let vc = LayerPhotoLayoutDelegate()
                //: vc.delegate = self
                vc.delegate = self
                //: if indexPath.section == 5 {
                if indexPath.section == 5 {
                    //: vc.tagtype = .AboutMe
                    vc.tagtype = .AboutMe
                    //: } else {
                } else {
                    //: vc.tagtype = .Interests
                    vc.tagtype = .Interests
                }
                //: self.navigationController!.pushViewController(vc, animated: true)
                self.navigationController!.pushViewController(vc, animated: true)
            }
            //: cell?.deleteBlock = { [weak self] tag in
            cell?.deleteBlock = { [weak self] tag in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if indexPath.section == 5 {
                if indexPath.section == 5 {
                    //: if  self.seleteAboutme.contains(where: { $0.equals(compareTo: tag)}) {
                    if self.seleteAboutme.contains(where: { $0.publish(compareTo: tag) }) {
                        //: self.seleteAboutme.removeAll(where: {$0.equals(compareTo: tag)})
                        self.seleteAboutme.removeAll(where: { $0.publish(compareTo: tag) })
                        //: self.isdeleteAboutme = true
                        self.isdeleteAboutme = true
                    }
                    //: } else {
                } else {
                    //: if  self.seleteInters.contains(where: { $0.equals(compareTo: tag)}) {
                    if self.seleteInters.contains(where: { $0.publish(compareTo: tag) }) {
                        //: self.seleteInters.removeAll(where: {$0.equals(compareTo: tag)})
                        self.seleteInters.removeAll(where: { $0.publish(compareTo: tag) })
                        //: self.isdeleteInters = true
                        self.isdeleteInters = true
                    }
                }
            }
            //: return cell!
            return cell!
            //: } else {
        } else {
            //: let identifier = "UITableViewCell"
            let identifier = (String(appMakeMCostTitle.prefix(5)) + "leView" + String(notiLabelName))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            //: if cell == nil {
            if cell == nil {
                //: cell = UITableViewCell(style: .default, reuseIdentifier: identifier)
                cell = UITableViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: return cell!
            return cell!
        }
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}

    //: func computeCellheight(type: Int) -> CGFloat {
    func addType(type: Int) -> CGFloat {
        //: let itemSpacing = CGFloat(8)
        let itemSpacing = CGFloat(8)
        //: var contentWidthInRow = CGFloat(0)
        var contentWidthInRow = CGFloat(0)
        //: var array = Array<UserSeleteTagModel>()
        var array = [HiddenHandyJSON]()
        //: if type == 1 {
        if type == 1 {
            //: array = self.seleteAboutme
            array = self.seleteAboutme
            //: } else {
        } else {
            //: array = self.seleteInters
            array = self.seleteInters
        }
        //: var contentHeightInRow = CGFloat(30)
        var contentHeightInRow = CGFloat(30)

        //: for item in array {
        for item in array {
            //: var tag_name = ""
            var tag_name = ""
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
            if LayerAddrTool.share.interfaceLang == TrademarkVoiceMixedBagTextConvertible.ar.rawValue {
                //: tag_name = item.tag_name_ar
                tag_name = item.tag_name_ar
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
            } else if LayerAddrTool.share.interfaceLang == TrademarkVoiceMixedBagTextConvertible.es.rawValue {
                //: tag_name = item.tag_name_es
                tag_name = item.tag_name_es
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            } else if LayerAddrTool.share.interfaceLang == TrademarkVoiceMixedBagTextConvertible.pt.rawValue {
                //: tag_name = item.tag_name_pt
                tag_name = item.tag_name_pt
            }
            //: if tag_name.count <= 0 {
            if tag_name.count <= 0 {
                //: tag_name = item.tag_name
                tag_name = item.tag_name
            }
            //: let rect = (tag_name as NSString).boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.pingfangFont(type: .Regular, fontSize: 15)], context: nil)
            let rect = (tag_name as NSString).boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.clickLarge(type: .Regular, fontSize: 15)], context: nil)
            //: let tagWidth = rect.width + 30
            let tagWidth = rect.width + 30
            //: if contentWidthInRow + tagWidth + itemSpacing > ScreenWidth-54 {
            if contentWidthInRow + tagWidth + itemSpacing > kQueryValue - 54 {
                // 需要换行
                //: contentHeightInRow += (10 + 30)
                contentHeightInRow += (10 + 30)
                //: contentWidthInRow = itemSpacing
                contentWidthInRow = itemSpacing
                //: } else {
            } else {
                //: contentWidthInRow += (tagWidth+itemSpacing)
                contentWidthInRow += (tagWidth + itemSpacing)
            }
        }
        //: if array.count == 10 {
        if array.count == 10 {
            //: contentHeightInRow += 40
            contentHeightInRow += 40
        }
        //: return contentHeightInRow + 12
        return contentHeightInRow + 12
    }
}

// MARK: - OrdinalReactiveCompatible

//: extension TalkingEditProfilesVC: EditTagDelegate {
extension ToActionThen: OrdinalReactiveCompatible {
    //: func freshSeleteTag() {
    func valueBy() {
        //: seleteAboutme =  PunctuateThen.share.loginUserMode.aboutMe!
        seleteAboutme = PunctuateThen.share.loginUserMode.aboutMe!
        //: seleteInters =  PunctuateThen.share.loginUserMode.interest!
        seleteInters = PunctuateThen.share.loginUserMode.interest!
        //: self.MainTable .reloadData()
        self.MainTable.reloadData()
    }
}

// MARK: - MoveThen

//: extension TalkingEditProfilesVC: EditPhotoDelegate {
extension ToActionThen: MoveThen {
    /// 添加本地图片
    //: func addPhoto(_ icon: [UIImage]) {
    func nameUpTelephoto(_ icon: [UIImage]) {
        //: for i in icon {
        for i in icon {
            //: self.seletePhotoArray.append(i)
            self.seletePhotoArray.append(i)
            //: var model = TalkingUserInfoGalleryModel.init()
            var model = FailModelType()
            //: model.imagePic = i
            model.imagePic = i
            //: model.isLocal = true
            model.isLocal = true
            //: PhotoArray.append(model)
            PhotoArray.append(model)
        }
    }

    /// 删除本地相册选择的图片
    //: func deletePhoto(_ icon: UIImage) {
    func exposure(_ icon: UIImage) {
        //: if  seletePhotoArray.contains(where: {$0 == icon}) {
        if seletePhotoArray.contains(where: { $0 == icon }) {
            //: seletePhotoArray.removeAll(where: {$0 == icon})
            seletePhotoArray.removeAll(where: { $0 == icon })
        }
        //: var seleteIndex = -1
        var seleteIndex = -1
        //: for i in 0..<PhotoArray.count {
        for i in 0 ..< PhotoArray.count {
            //: if icon == PhotoArray[i].imagePic {
            if icon == PhotoArray[i].imagePic {
                //: seleteIndex =  i
                seleteIndex = i
                //: break
                break
            }
        }
        //: if seleteIndex>=0 && seleteIndex<PhotoArray.count {
        if seleteIndex >= 0 && seleteIndex < PhotoArray.count {
            //: PhotoArray.remove(at: seleteIndex)
            PhotoArray.remove(at: seleteIndex)
            //: self.MainTable.reloadData()
            self.MainTable.reloadData()
        }
    }

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
                //: self.DeletePhotoArray.append(iconUid)
                self.DeletePhotoArray.append(iconUid)
            }
        }
        //: if seleteIndex>=0 && seleteIndex<PhotoArray.count {
        if seleteIndex >= 0 && seleteIndex < PhotoArray.count {
            //: PhotoArray.remove(at: seleteIndex)
            PhotoArray.remove(at: seleteIndex)
            //: self.MainTable.reloadData()
            self.MainTable.reloadData()
        }
    }
}

// MARK: - UI

//: extension TalkingEditProfilesVC {
extension ToActionThen {
    //: private func designView() {
    private func icon() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingEditVideoCell.self, forCellReuseIdentifier: TalkingEditVideoCell.className())
        MainTable.register(StyleReactiveCompatible.self, forCellReuseIdentifier: StyleReactiveCompatible.className())
        //: MainTable.register(TalkingEditPhotoCell.self, forCellReuseIdentifier: TalkingEditPhotoCell.className())
        MainTable.register(StudyPhotoCell.self, forCellReuseIdentifier: StudyPhotoCell.className())
        //: MainTable.register(TalkingEditNameCell.self, forCellReuseIdentifier: TalkingEditNameCell.className())
        MainTable.register(ModelWithViewCell.self, forCellReuseIdentifier: ModelWithViewCell.className())
        //: MainTable.register(TalkingEditBirthdayCell.self, forCellReuseIdentifier: TalkingEditBirthdayCell.className())
        MainTable.register(CorruptThen.self, forCellReuseIdentifier: CorruptThen.className())
        //: MainTable.register(TalkingEditSignCell.self, forCellReuseIdentifier: TalkingEditSignCell.className())
        MainTable.register(AddThen.self, forCellReuseIdentifier: AddThen.className())
        //: MainTable.register(TalkingEditAboutMeCell.self, forCellReuseIdentifier: TalkingEditAboutMeCell.className())
        MainTable.register(FileReactiveCompatible.self, forCellReuseIdentifier: FileReactiveCompatible.className())
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalTo(self.view)
            make.leading.trailing.bottom.equalTo(self.view)
            //: make.top.equalTo(self.view).offset(20)
            make.top.equalTo(self.view).offset(20)
        }
    }
}
