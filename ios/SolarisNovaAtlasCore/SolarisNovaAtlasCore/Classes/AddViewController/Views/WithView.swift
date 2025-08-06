
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showPathKey:[UInt8] = [0x29,0x2e,0x29,0x34,0x68,0x23,0x2f,0x24,0x25,0x32,0x7a,0x69,0x60,0x28,0x21,0x33,0x60,0x2e,0x2f,0x34,0x60,0x22,0x25,0x25,0x2e,0x60,0x29,0x2d,0x30,0x2c,0x25,0x2d,0x25,0x2e,0x34,0x25,0x24]

private func managerFrom(location num: UInt8) -> UInt8 {
    return num ^ 64
}

/*: "icon_livetc_warn" :*/
fileprivate let showFirstFormat:String = "gesture self thought if infoicon_"
fileprivate let userTitleFormat:[Character] = ["l","i","v"]
fileprivate let show_exceptId:String = "background number right in nameetc_warn"

/*: "System notification" :*/
fileprivate let const_acceptFormat:[Character] = ["S","y","s","t","e","m"," "]
fileprivate let dataInfluenceValue:[Character] = ["n","o","t","i","f","i"]
fileprivate let notiCornerData:[Character] = ["c","a","t","i","o","n"]

/*: "Upload Now" :*/
fileprivate let notiMakeId:String = "Uploastring let"
fileprivate let main_userMatchTitle:[Character] = ["d"," ","N","o","w"]

/*: "btn_me_program_photo_delete" :*/
fileprivate let appViewMsg:String = "btn_wait false true"
fileprivate let data_rawInputPath:String = "popam"
fileprivate let dataEqualUrl:String = "_photo_dview self"
fileprivate let mainInfoMsg:String = "ELETE"

/*: "content" :*/
fileprivate let data_toId:[Character] = ["c","o","n","t","e","n","t"]

/*: "jumpKey" :*/
fileprivate let constViewUrl:String = "jumpKeylab quit let true path"

/*: "uploadUserHeaderPic" :*/
fileprivate let data_makeFormat:[Character] = ["u","p","l","o","a","d"]
fileprivate let data_appName:String = "max"
fileprivate let data_inputActualLetMessage:[Character] = ["s","e","r","H","e","a","d","e","r","P","i","c"]

/*: "truePersonAuth" :*/
fileprivate let constCountName:String = "model make self make vartruePe"
fileprivate let appWithData:String = "time moment app high normalrsonAuth"

/*: "headPic" :*/
fileprivate let constMakeUrl:String = "key"
fileprivate let const_equalValue:[Character] = ["e","a","d","P","i","c"]

/*: "Modify the success" :*/
fileprivate let k_priceTitle:[Character] = ["M","o","d","i","f","y"," ","t","h","e"," "]
fileprivate let const_acceptText:[Character] = ["s","u","c","c","e","s","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/23.
//

//: import UIKit
import UIKit

/// 真人认证被拒,头像审核提示弹窗

//: class TalkingAttestationRefusePopUpView: UIView {
class WithView: UIView {
    //: var popView: TalkingPopView?
    var popView: UserModelReactiveCompatible?
    //: var pushType = ""
    var pushType = ""

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.showRender()
        //: self.setupSubViewsConstraint()
        self.eachClear()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showPathKey.map{managerFrom(location: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "icon_livetc_warn")
        imag.image = UIImage.thoughtImageBundleSizeText(name: (String(showFirstFormat.suffix(5)) + String(userTitleFormat) + String(show_exceptId.suffix(8))))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var title: UILabel = {
    private lazy var title: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lb.font = UIFont.clickLarge(type: .Medium, fontSize: 18)
        //: lb.text = "System notification".localized
        lb.text = (String(const_acceptFormat) + String(dataInfluenceValue) + String(notiCornerData)).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var mesageLB: UILabel = {
    private lazy var mesageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.clickLarge(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.sinceNext(colors: UIColor.analogDigitalConverterColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Upload Now".localized, for: .normal)
        btn.setTitle((String(notiMakeId.prefix(5)) + String(main_userMatchTitle)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.atomic(fontSize: 18)
        btn.titleLabel?.font = UIFont.atomic(fontSize: 18)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(lessClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(appViewMsg.prefix(4)) + "me_pro" + data_rawInputPath.replacingOccurrences(of: "pop", with: "gr") + String(dataEqualUrl.prefix(8)) + mainInfoMsg.lowercased())), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(actionOff), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingAttestationRefusePopUpView {
extension WithView {
    //: func setViewData(dit: [String: String]) {
    func incomeParallelize(dit: [String: String]) {
        //: mesageLB.text = dit["content"]
        mesageLB.text = dit[(String(data_toId))]
        //: pushType = dit["jumpKey"] ?? ""
        pushType = dit[(String(constViewUrl.prefix(7)))] ?? ""
    }

    //: @objc private func finishBtnClick() {
    @objc private func lessClick() {
        //: if pushType == "uploadUserHeaderPic" {
        if pushType == (String(data_makeFormat) + data_appName.replacingOccurrences(of: "max", with: "U") + String(data_inputActualLetMessage)) {
            //: updatePhotoButtonClick()
            holdFast()
            //: } else if pushType == "truePersonAuth" {
        } else if pushType == (String(constCountName.suffix(6)) + String(appWithData.suffix(8))) {
            //: PunctuateThen.share.loginUserMode.isTPAuth = "3"
            PunctuateThen.share.loginUserMode.isTPAuth = "3"
            //: RangePushManager.share.func__pushUserVerifyController(toast: nil)
            RangePushManager.share.controller(toast: nil)
            //: dismiss()
            ofSendDismiss()
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func actionOff() {
        //: dismiss()
        ofSendDismiss()
    }

    //: func show() {
    func listPublish() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = UserModelReactiveCompatible(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.style(view: self)
        //: popView?.showInView(view: PublisherReactiveCompatible.getWindow())
        popView?.hadith(view: PublisherReactiveCompatible.exceptAction())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func ofSendDismiss() {
        //: popView?.dismissView()
        popView?.conversation()
        //: popView = nil
        popView = nil
    }

    /// 更新photo
    //: private func updatePhotoButtonClick() {
    private func holdFast() {
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
                            self.dismissVideo(img: image)
                        }
                        //: return
                }
                //: vc.imagePickerControllerDidCancelHandle = { [weak self] in
                vc.imagePickerControllerDidCancelHandle = { [weak self] in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: self.dismiss()
                    self.ofSendDismiss()
                }
                //: } else {
            } else {
                //: self.dismiss()
                self.ofSendDismiss()
            }
        }
    }

    //: private func req_updateInfo(img: UIImage) {
    private func dismissVideo(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.collectionIntervalimate()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(constMakeUrl.replacingOccurrences(of: "key", with: "h") + String(const_equalValue)): resultData]
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        TampReactiveCompatible.listGift(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dismiss()
            self.ofSendDismiss()
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
            self.occupant(showMsg: (String(k_priceTitle) + String(const_acceptText)).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: PunctuateThen.share.loginUserMode.headPic = data["headPic"] as? String
            PunctuateThen.share.loginUserMode.headPic = data[(constMakeUrl.replacingOccurrences(of: "key", with: "h") + String(const_equalValue))] as? String
            //: PunctuateThen.share.loginUserMode.headPicStatus = 0
            PunctuateThen.share.loginUserMode.headPicStatus = 0
        }
    }
}

// MARK: - Layout

//: extension TalkingAttestationRefusePopUpView {
extension WithView {
    // 添加视图
    //: private func setupSubviews() {
    private func showRender() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(title)
        contentView.addSubview(title)
        //: contentView.addSubview(mesageLB)
        contentView.addSubview(mesageLB)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func eachClear() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 350)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 350)))
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.size.equalTo(actualWidth(w: 93))
            make.size.equalTo(actualWidth(w: 93))
        }
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topIcon.snp.bottom).offset(21)
            make.top.equalTo(topIcon.snp.bottom).offset(21)
        }
        //: mesageLB.snp.makeConstraints { make in
        mesageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(21)
            make.leading.equalTo(21)
            //: make.trailing.equalTo(-21)
            make.trailing.equalTo(-21)
            //: make.top.equalTo(title.snp.bottom).offset(10)
            make.top.equalTo(title.snp.bottom).offset(10)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
