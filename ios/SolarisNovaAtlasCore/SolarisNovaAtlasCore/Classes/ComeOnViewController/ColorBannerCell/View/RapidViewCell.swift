
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appSucceedId:[UInt8] = [0x45,0x42,0x45,0x58,0x4,0x4f,0x43,0x48,0x49,0x5e,0x16,0x5,0xc,0x44,0x4d,0x5f,0xc,0x42,0x43,0x58,0xc,0x4e,0x49,0x49,0x42,0xc,0x45,0x41,0x5c,0x40,0x49,0x41,0x49,0x42,0x58,0x49,0x48]

/*: "bg_message_top" :*/
fileprivate let userObserverTitle:String = "count me rightbg_messa"
fileprivate let userKeyPathUrl:[Character] = ["g","e","_","t","o","p"]

/*: "img_me_edit_photo_default" :*/
fileprivate let mainActionTitle:String = "image make cell managerimg_m"
fileprivate let app_makeStr:String = "share view app self viewt_phot"
fileprivate let dataCurrentStr:String = "user"

/*: "icon_lounge" :*/
fileprivate let appAddMessage:String = "color row type case sharedicon_lo"
fileprivate let constTimeErrData:String = "unmoree"

/*: "#777777" :*/
fileprivate let main_playerPath:String = "#7"
fileprivate let notiComponentStr:String = "77777"

/*: "btn_me_copy" :*/
fileprivate let dataShowFormat:String = "btn_mmodel open"
fileprivate let constComparableData:[Character] = ["e"]
fileprivate let showSizeText:String = "_copymodel time collection"

/*: "btn_me_verify" :*/
fileprivate let const_bottomContent:[Character] = ["b","t","n","_","m","e","_","v","e","r","i","f","y"]

/*: "btn_me_new_edit" :*/
fileprivate let constResultTitle:[Character] = ["b","t","n","_","m","e","_","n","e","w","_","e","d","i"]
fileprivate let noti_nameViewData:String = "enter"

/*: "Followers" :*/
fileprivate let appResignTitle:String = "self of returnFo"
fileprivate let show_effectData:String = "LLOWERS"

/*: "Following" :*/
fileprivate let appTopValue:[Character] = ["F","o","l","l","o","w","i","n","g"]

/*: "#D8D8D8" :*/
fileprivate let kMiniName:String = "#D8D8D8player hide push let interaction"

/*: "#FF506D" :*/
fileprivate let user_labUpUrl:String = "make day#FF506D"

/*: "Reviewing" :*/
fileprivate let notiActualMessage:[Character] = ["R","e","v","i","e","w","i","n","g"]

/*: "headPic" :*/
fileprivate let user_lineUrl:[Character] = ["h","e","a","d","P"]
fileprivate let noti_dataName:[Character] = ["i","c"]

/*: "Modify the success" :*/
fileprivate let dataLevelManagerTitle:String = "Modiflet yet"
fileprivate let appLabelKey:String = "view cookie content roote su"
fileprivate let show_upAtContent:String = "raw"

/*: "UID:" :*/
fileprivate let app_viewName:[Character] = ["U","I","D",":"]

/*: "btn_me_verifed" :*/
fileprivate let notiSourceFormat:String = "do self data blockbtn_m"
fileprivate let mainPresentKey:[Character] = ["i","f","e","d"]

/*: "UID Copied" :*/
fileprivate let mainErrorName:String = "list iconUID Co"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RapidViewCell.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTopCell: UITableViewCell {
class RapidViewCell: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        titleMessageError()
        //: setupSubViewsConstraint()
        estimatedOfBackground()
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appSucceedId.map{$0^44}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.BundleImageNamed(name: "bg_message_top"))
        let imag = UIImageView(image: UIImage.thoughtImageBundleSizeText(name: (String(userObserverTitle.suffix(8)) + String(userKeyPathUrl))))
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var whiteBgView: UIView = {
    private lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 10
        v.layer.cornerRadius = 10
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var iconImag: UIButton = {
    private lazy var iconImag: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "img_me_edit_photo_default"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(mainActionTitle.suffix(5)) + "e_edi" + String(app_makeStr.suffix(6)) + "o_defaul" + dataCurrentStr.replacingOccurrences(of: "user", with: "t"))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.layer.cornerRadius = 69/2
        btn.layer.cornerRadius = 69 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(updatePhotoButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(overdoClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var iconBorder: UIButton = {
    private lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var nameLB: UILabel = {
    private lazy var nameLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 18)
        lb.font = UIFont.clickLarge(type: .Semibold, fontSize: 18)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.toEvent()
        //: lb.text = ""
        lb.text = ""
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_lounge")
        img.image = UIImage.thoughtImageBundleSizeText(name: (String(appAddMessage.suffix(7)) + constTimeErrData.replacingOccurrences(of: "more", with: "g")))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var idBtn: TalkingButton = {
    private lazy var idBtn: StartImageButton = {
        //: let btn = TalkingButton.init()
        let btn = StartImageButton()
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setTitleColor(UIColor.init(hex: "#777777"), for: .normal)
        btn.setTitleColor(UIColor(hex: (main_playerPath.capitalized + notiComponentStr.capitalized)), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Regular, fontSize: 14)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_me_copy"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(dataShowFormat.prefix(5)) + String(constComparableData) + String(showSizeText.prefix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(copyBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(startClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var verifyBtn: UIButton = {
    private lazy var verifyBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_me_verify"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(const_bottomContent))), for: .normal)
        //: btn.addTarget(self, action: #selector(verifyBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sumerfoil), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var editImag: UIImageView = {
    private lazy var editImag: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.BundleImageNamed(name: "btn_me_new_edit"))
        let imag = UIImageView(image: UIImage.thoughtImageBundleSizeText(name: (String(constResultTitle) + noti_nameViewData.replacingOccurrences(of: "enter", with: "t"))))
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var editPushBtn: UIButton = {
    private lazy var editPushBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(editBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(outPathButton), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var followersBtn: UIButton = {
    private lazy var followersBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(followersBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(rowClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var followersLab: UILabel = {
    private lazy var followersLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .hockeyPlayer()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Followers".localized
        lab.text = (String(appResignTitle.suffix(2)) + show_effectData.lowercased()).localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.recoverOf(fontSize: 14)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followersNum: UILabel = {
    private lazy var followersNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .toEvent()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.atomic(fontSize: 15)
        lab.font = UIFont.atomic(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingBtn: UIButton = {
    private lazy var followingBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(followingBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(waterWashed), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var followingLab: UILabel = {
    private lazy var followingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .hockeyPlayer()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Following".localized
        lab.text = (String(appTopValue)).localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.recoverOf(fontSize: 14)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingNum: UILabel = {
    private lazy var followingNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .toEvent()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.atomic(fontSize: 15)
        lab.font = UIFont.atomic(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var line: UIView = {
    private lazy var line: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#D8D8D8")
        v.backgroundColor = UIColor(hex: (String(kMiniName.prefix(7))))
        //: v.layer.cornerRadius = 1
        v.layer.cornerRadius = 1
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var statusLB: UILabel = {
    private lazy var statusLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 12)
        lb.font = UIFont.clickLarge(type: .Medium, fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: (String(user_labUpUrl.suffix(7))))
        //: lb.text = "Reviewing".localized
        lb.text = (String(notiActualMessage)).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMeTopCell {
extension RapidViewCell {
    /// 更新个人资料
    //: private func req_updateInfo(img: UIImage) {
    private func modifyWithFactoid(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.collectionIntervalimate()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(user_lineUrl) + String(noti_dataName)): resultData]
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        TampReactiveCompatible.listGift(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: guard succeed else {
            guard succeed else {
                //: if errorModel?.errorCode != 100 {
                if errorModel?.errorCode != 100 {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                    self.drawObserver(showMsg: errorModel!.errorMsg)
                }
                //: return
                return
            }

            //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
            self.occupant(showMsg: (String(dataLevelManagerTitle.prefix(5)) + "y th" + String(appLabelKey.suffix(4)) + "cces" + show_upAtContent.replacingOccurrences(of: "raw", with: "s")).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: PunctuateThen.share.loginUserMode.headPic = data["headPic"] as? String
            PunctuateThen.share.loginUserMode.headPic = data[(String(user_lineUrl) + String(noti_dataName))] as? String
            //: statusLB.isHidden = false
            statusLB.isHidden = false
            //: PunctuateThen.share.loginUserMode.headPicStatus = 0
            PunctuateThen.share.loginUserMode.headPicStatus = 0
            //: self.iconImag.setUrlImage(urlStr: PunctuateThen.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
            self.iconImag.blockHalf(urlStr: PunctuateThen.share.loginUserMode.headPic ?? (String(mainActionTitle.suffix(5)) + "e_edi" + String(app_makeStr.suffix(6)) + "o_defaul" + dataCurrentStr.replacingOccurrences(of: "user", with: "t")))
        }
    }
}

// MARK: - Event

//: extension TalkingMeTopCell {
extension RapidViewCell {
    /// 更新数据
    //: func setViewData() {
    func requestAt() {
        //: iconImag.setUrlImage(urlStr: PunctuateThen.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
        iconImag.blockHalf(urlStr: PunctuateThen.share.loginUserMode.headPic ?? (String(mainActionTitle.suffix(5)) + "e_edi" + String(app_makeStr.suffix(6)) + "o_defaul" + dataCurrentStr.replacingOccurrences(of: "user", with: "t")))
        //: iconBorder.setHeadFrameUrlImage(urlStr: PunctuateThen.share.loginUserMode.headPicFrame)
        iconBorder.glassesByStr(urlStr: PunctuateThen.share.loginUserMode.headPicFrame)
        //: nameLB.textColor = PunctuateThen.share.loginUserMode.loungePlus ? .userVipColor():.appTitleColor()
        nameLB.textColor = PunctuateThen.share.loginUserMode.loungePlus ? .utiliserColor() : .toEvent()
        //: nameLB.text = PunctuateThen.share.loginUserMode.nickname
        nameLB.text = PunctuateThen.share.loginUserMode.nickname
        //: loungeImgV.isHidden = !PunctuateThen.share.loginUserMode.loungePlus
        loungeImgV.isHidden = !PunctuateThen.share.loginUserMode.loungePlus
        //: idBtn.setTitle("UID:" + PunctuateThen.share.loginUserMode.userID, for: .normal)
        idBtn.setTitle((String(app_viewName)) + PunctuateThen.share.loginUserMode.userID, for: .normal)
        //: if PunctuateThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if PunctuateThen.share.loginUserMode.isTPAuth == AuthColumnConvertible.isSuccessed.rawValue {
            //: verifyBtn.setImage(UIImage.BundleImageNamed(name: "btn_me_verifed"), for: .normal)
            verifyBtn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(notiSourceFormat.suffix(5)) + "e_ver" + String(mainPresentKey))), for: .normal)
            //: } else {
        } else {
            //: verifyBtn.setImage(UIImage.BundleImageNamed(name: "btn_me_verify"), for: .normal)
            verifyBtn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(const_bottomContent))), for: .normal)
        }
        //: statusLB.isHidden = (PunctuateThen.share.loginUserMode.headPicStatus != HeadePicStatus.isOnGoing.rawValue)
        statusLB.isHidden = (PunctuateThen.share.loginUserMode.headPicStatus != SmartStrideable.isOnGoing.rawValue)
        //: followersNum.text = PunctuateThen.share.loginUserMode.fansNum ?? "0"
        followersNum.text = PunctuateThen.share.loginUserMode.fansNum ?? "0"
        //: followingNum.text = PunctuateThen.share.loginUserMode.attentionNum ?? "0"
        followingNum.text = PunctuateThen.share.loginUserMode.attentionNum ?? "0"
    }

    /// copy Id
    //: @objc private func copyBtnClick() {
    @objc private func startClick() {
        //: let paste = UIPasteboard.general
        let paste = UIPasteboard.general
        //: paste.string = PunctuateThen.share.loginUserMode.userID
        paste.string = PunctuateThen.share.loginUserMode.userID
        //: self.func__showStatusBarSuccessMsg(showMsg: "UID Copied".localized)
        self.occupant(showMsg: (String(mainErrorName.suffix(6)) + "pied").localized)
    }

    /// 更新photo
    //: @objc private func updatePhotoButtonClick() {
    @objc private func overdoClick() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        CustomPermissionTool.videoOf(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = DirectReactiveCompatible.sizeUponTelecasting(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.occurrentWith()?.present(vc, animated: true)
                //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
                vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                                 //: assets: Array<Any>?,
                                                                 _: [Any]?,
                                                                 //: isSelectOriginalPhoto: Bool?)  in
                                                                 _: Bool?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: if photos!.count > 0 {
                        if photos!.count > 0 {
                            //: let image: UIImage = photos?[0] ?? UIImage()
                            let image: UIImage = photos?[0] ?? UIImage()
                            // 上传头像
                            //: self.req_updateInfo(img: image)
                            self.modifyWithFactoid(img: image)
                        }
                        //: return
                }
            }
        }
    }

    /// 真人认证
    //: @objc private func verifyBtnClick() {
    @objc private func sumerfoil() {
        // 先判断上传的头像是否通过，再判断真人认证状态
//        if PunctuateThen.share.loginUserMode.headPicStatus == SmartStrideable.unknown.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Please finish uploading your avatar first")
//        } else if PunctuateThen.share.loginUserMode.headPicStatus == SmartStrideable.isOnGoing.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Avatar is under reviewing")
//        } else {
//            isTPAuthTool()
//        }
        //: isTPAuthTool()
        afoot()
    }

    //: private func isTPAuthTool() {
    private func afoot() {
        //: if PunctuateThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if PunctuateThen.share.loginUserMode.isTPAuth == AuthColumnConvertible.isSuccessed.rawValue {
            //: return
            return
                //: } else if PunctuateThen.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if PunctuateThen.share.loginUserMode.isTPAuth == AuthColumnConvertible.unknown.rawValue {
            //: RangePushManager.share.func__pushUserVerifyController(toast: nil)
            RangePushManager.share.controller(toast: nil)
            //: } else if PunctuateThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if PunctuateThen.share.loginUserMode.isTPAuth == AuthColumnConvertible.isOnGoing.rawValue {
            //: let vc = TalkingFinalVerificationVC()
            let vc = TopViewController()
            //: RangePushManager.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            RangePushManager.share.retrieve()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: RangePushManager.share.func__pushUserVerifyController(toast: nil)
            RangePushManager.share.controller(toast: nil)
        }
    }

    /// 编辑个人资料
    //: @objc private func editBtnClick() {
    @objc private func outPathButton() {
        //: RangePushManager.share.func__pushToUserDetailVC(uid: PunctuateThen.share.loginUid)
        RangePushManager.share.clickOfUid(uid: PunctuateThen.share.loginUid)
    }

    /// followers
    //: @objc private func followersBtnClick() {
    @objc private func rowClick() {
        //: let vc = TalkingFavouriteViewController()
        let vc = OriginFavouriteControllerViewThen()
        //: vc.currentIndex = 0
        vc.currentIndex = 0
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.occurrentWith()?.navigationController?.pushViewController(vc, animated: true)
    }

    /// following
    //: @objc private func followingBtnClick() {
    @objc private func waterWashed() {
        //: let vc = TalkingFavouriteViewController()
        let vc = OriginFavouriteControllerViewThen()
        //: vc.currentIndex = 1
        vc.currentIndex = 1
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.occurrentWith()?.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingMeTopCell {
extension RapidViewCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func titleMessageError() {
        //: self.contentView.addSubview(bgImgView)
        self.contentView.addSubview(bgImgView)
        //: bgImgView.addSubview(whiteBgView)
        bgImgView.addSubview(whiteBgView)
        //: whiteBgView.addSubview(iconImag)
        whiteBgView.addSubview(iconImag)
        //: whiteBgView.addSubview(iconBorder)
        whiteBgView.addSubview(iconBorder)
        //: whiteBgView.addSubview(nameLB)
        whiteBgView.addSubview(nameLB)
        //: whiteBgView.addSubview(loungeImgV)
        whiteBgView.addSubview(loungeImgV)
        //: whiteBgView.addSubview(idBtn)
        whiteBgView.addSubview(idBtn)
        //: whiteBgView.addSubview(verifyBtn)
        whiteBgView.addSubview(verifyBtn)
        //: whiteBgView.addSubview(editImag)
        whiteBgView.addSubview(editImag)
        //: whiteBgView.addSubview(editPushBtn)
        whiteBgView.addSubview(editPushBtn)
        //: whiteBgView.addSubview(followersBtn)
        whiteBgView.addSubview(followersBtn)
        //: whiteBgView.addSubview(statusLB)
        whiteBgView.addSubview(statusLB)
        //: followersBtn.addSubview(followersLab)
        followersBtn.addSubview(followersLab)
        //: followersBtn.addSubview(followersNum)
        followersBtn.addSubview(followersNum)
        //: whiteBgView.addSubview(followingBtn)
        whiteBgView.addSubview(followingBtn)
        //: followingBtn.addSubview(followingLab)
        followingBtn.addSubview(followingLab)
        //: followingBtn.addSubview(followingNum)
        followingBtn.addSubview(followingNum)
        //: whiteBgView.addSubview(line)
        whiteBgView.addSubview(line)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func estimatedOfBackground() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
            //: make.height.equalTo(StatusBarHeight+181)
            make.height.equalTo(constLiveErrorMessage + 181)
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(StatusBarHeight+9)
            make.top.equalTo(constLiveErrorMessage + 9)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(160)
            make.height.equalTo(160)
        }

        //: iconImag.snp.makeConstraints { make in
        iconImag.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview().offset(12)
            make.leading.top.equalToSuperview().offset(12)
            //: make.width.height.equalTo(69)
            make.width.height.equalTo(69)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview().offset(7)
            make.leading.top.equalToSuperview().offset(7)
            //: make.width.height.equalTo(80)
            make.width.height.equalTo(80)
        }
        //: statusLB.snp.makeConstraints { make in
        statusLB.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.top).offset(-7)
            make.top.equalTo(iconImag.snp.top).offset(-7)
            //: make.centerX.equalTo(iconImag)
            make.centerX.equalTo(iconImag)
            //: make.size.equalTo(CGSize.init(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }

        //: nameLB.snp.makeConstraints { make in
        nameLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImag.snp.trailing).offset(10)
            make.leading.equalTo(iconImag.snp.trailing).offset(10)
            //: make.top.equalTo(iconImag)
            make.top.equalTo(iconImag)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(kQueryValue / 2)
        }

        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB.snp.trailing).offset(4)
            make.leading.equalTo(nameLB.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLB)
            make.centerY.equalTo(nameLB)
            //: make.size.equalTo(CGSize(width: 20, height: 20))
            make.size.equalTo(CGSize(width: 20, height: 20))
        }

        //: idBtn.snp.makeConstraints { make in
        idBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImag.snp.trailing).offset(12)
            make.leading.equalTo(iconImag.snp.trailing).offset(12)
            //: make.top.equalTo(nameLB.snp.bottom).offset(8)
            make.top.equalTo(nameLB.snp.bottom).offset(8)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }

        //: verifyBtn.snp.makeConstraints { make in
        verifyBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB)
            make.leading.equalTo(nameLB)
            //: make.top.equalTo(idBtn.snp.bottom).offset(8)
            make.top.equalTo(idBtn.snp.bottom).offset(8)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }

        //: editImag.snp.makeConstraints { make in
        editImag.snp.makeConstraints { make in
            //: make.centerY.equalTo(iconImag)
            make.centerY.equalTo(iconImag)
            //: make.trailing.equalToSuperview().offset(-16)
            make.trailing.equalToSuperview().offset(-16)
            //: make.width.equalTo(6)
            make.width.equalTo(6)
            //: make.height.equalTo(11)
            make.height.equalTo(11)
        }
        //: editPushBtn.snp.makeConstraints { make in
        editPushBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(editImag)
            make.centerY.equalTo(editImag)
            //: make.trailing.equalToSuperview().offset(-10)
            make.trailing.equalToSuperview().offset(-10)
            //: make.width.height.equalTo(60)
            make.width.height.equalTo(60)
        }

        //: followersBtn.snp.makeConstraints { make in
        followersBtn.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.bottom)
            make.top.equalTo(iconImag.snp.bottom)
            //: make.leading.bottom.equalToSuperview()
            make.leading.bottom.equalToSuperview()
            //: make.trailing.equalTo(whiteBgView.snp.centerX)
            make.trailing.equalTo(whiteBgView.snp.centerX)
        }
        //: followersLab.snp.makeConstraints { make in
        followersLab.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(25)
            make.top.equalToSuperview().offset(25)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: followersNum.snp.makeConstraints { make in
        followersNum.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }

        //: followingBtn.snp.makeConstraints { make in
        followingBtn.snp.makeConstraints { make in
            //: make.top.equalTo(followersBtn)
            make.top.equalTo(followersBtn)
            //: make.trailing.bottom.equalToSuperview()
            make.trailing.bottom.equalToSuperview()
            //: make.leading.equalTo(whiteBgView.snp.centerX)
            make.leading.equalTo(whiteBgView.snp.centerX)
        }
        //: followingLab.snp.makeConstraints { make in
        followingLab.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(25)
            make.top.equalToSuperview().offset(25)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: followingNum.snp.makeConstraints { make in
        followingNum.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }

        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.bottom).offset(32)
            make.top.equalTo(iconImag.snp.bottom).offset(32)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 2, height: 27))
            make.size.equalTo(CGSize(width: 2, height: 27))
        }
    }
}
