
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainStreamUrl:[UInt8] = [0xcb,0xd0,0xcb,0xd6,0x8a,0xc5,0xd1,0xc6,0xc7,0xd4,0x9c,0x8b,0x82,0xca,0xc3,0xd5,0x82,0xd0,0xd1,0xd6,0x82,0xc4,0xc7,0xc7,0xd0,0x82,0xcb,0xcf,0xd2,0xce,0xc7,0xcf,0xc7,0xd0,0xd6,0xc7,0xc6]

fileprivate func ofView(show num: UInt8) -> UInt8 {
    let value = Int(num) - 98
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Personal information" :*/
fileprivate let notiModelMsg:[Character] = ["P","e","r"]
fileprivate let noti_shareId:[Character] = ["s","o","n","a","l"," ","i","n","f","o","r","m","a","t","i","o","n"]

/*: _ :*/
fileprivate let noti_angleText:[Character] = ["_"]

/*: "male" :*/
fileprivate let data_clickStartMessage:[UInt8] = [0x65,0x6c,0x61,0x6d]

/*: "female" :*/
fileprivate let appPushKey:String = "equal"
fileprivate let data_indicatorTitle:String = "clearmalclear"

/*: "newHeadPic" :*/
fileprivate let notiImageViewPath:String = "newHefield model from bottom"
fileprivate let user_tingContent:[Character] = ["a","d","P","i","c"]

/*: "invite_code" :*/
fileprivate let notiPermissionData:String = "empty anyinvite_c"
fileprivate let showPopName:[Character] = ["o","d","e"]

/*: "codeFillType" :*/
fileprivate let appEqualStyleFormat:String = "coleading"
fileprivate let noti_liveSuccessKey:String = "Typeview type view class"

/*: "RegisterSuccess" :*/
fileprivate let mainModelMessage:String = "last let elseRegis"
fileprivate let const_dataId:String = "terScolor time frame"
fileprivate let mainManagerStr:String = "rowcess"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HeadControllerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoVC: TalkingBaseViewController {
class HeadControllerDelegate: SizeViewController {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()
    //: var params = [String: Any]()
    var params = [String: Any]()
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainStreamUrl.map{ofView(show: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        outContainer(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(notiModelMsg) + String(noti_shareId)).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.sizeBy()
        //: self.setupSubViewsConstraint()
        self.setup()
        //: self.bindInteraction()
        self.objectSend()
        //: addTapGestureRecognizer()
        acceptAdd()

        //: func__checkFinishBtnState()
        motion()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var editInfoView: TalkingLoginEditPhotoView = {
    lazy var editInfoView: FourthBackgroundThen = {
        //: let infoView = TalkingLoginEditPhotoView.init()
        let infoView = FourthBackgroundThen()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditPhotoVC {
extension HeadControllerDelegate {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func untilNavi() {
        //: super.naviPopback()
        super.untilNavi()
        // 埋点
        //: let eventID = "\(click_registration_information2_backBTN)_\(PunctuateThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(show_replaceBottomText)_\(PunctuateThen.share.userFillInfoMode.sex == TopComparable.male.rawValue ? String(bytes: data_clickStartMessage.reversed(), encoding: .utf8)! : (appPushKey.replacingOccurrences(of: "equal", with: "f") + data_indicatorTitle.replacingOccurrences(of: "clear", with: "e")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        const_screenFormat.occurrenceIn(eventID: eventID)
    }

    /// next事件
    //: func commitControlAction() {
    func targetShared() {
        // 埋点
        //: let eventID = "\(click_registration_information2_nextBTN)_\(PunctuateThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(show_viewHalfFormat)_\(PunctuateThen.share.userFillInfoMode.sex == TopComparable.male.rawValue ? String(bytes: data_clickStartMessage.reversed(), encoding: .utf8)! : (appPushKey.replacingOccurrences(of: "equal", with: "f") + data_indicatorTitle.replacingOccurrences(of: "clear", with: "e")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        const_screenFormat.occurrenceIn(eventID: eventID)

        //: if PunctuateThen.share.userFillInfoMode.headImage != nil {
        if PunctuateThen.share.userFillInfoMode.headImage != nil {
            //: let image = PunctuateThen.share.userFillInfoMode.headImage!
            let image = PunctuateThen.share.userFillInfoMode.headImage!
            //: params["newHeadPic"] = image.jpegData(compressionQuality: 1)
            params[(String(notiImageViewPath.prefix(5)) + String(user_tingContent))] = image.jpegData(compressionQuality: 1)
        }
        //: if PunctuateThen.share.userFillInfoMode.inviteCode.count > 0 {
        if PunctuateThen.share.userFillInfoMode.inviteCode.count > 0 {
            //: params["invite_code"] = PunctuateThen.share.userFillInfoMode.inviteCode
            params[(String(notiPermissionData.suffix(8)) + String(showPopName))] = PunctuateThen.share.userFillInfoMode.inviteCode

            //: } else {
        } else {
            //: let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey)
            let inviteCode = UserDefaults.standard.string(forKey: kPositionStr)
            //: if inviteCode?.count ?? 0 > 1 {
            if inviteCode?.count ?? 0 > 1 {
                //: params["invite_code"] = inviteCode
                params[(String(notiPermissionData.suffix(8)) + String(showPopName))] = inviteCode
                //: params["codeFillType"] = 1
                params[(appEqualStyleFormat.replacingOccurrences(of: "leading", with: "de") + "Fill" + String(noti_liveSuccessKey.prefix(4)))] = 1
            }
        }

        //: if PunctuateThen.share.userFillInfoMode.sex == "1" {
        if PunctuateThen.share.userFillInfoMode.sex == "1" {
            //: view.endEditing(true)
            view.endEditing(true)
            //: ProgressHUD.show()
            DirectThen.levelHandle()
            //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
            ComponentRequestTool.view(params: params) { succeed, result, _ in
                //: ProgressHUD.dismiss()
                DirectThen.cutWith()
                //: if succeed {
                if succeed {
                    // 发送通知
                    //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                    NotificationCenter.default.post(name: notiEnvironmentPath, object: nil, userInfo: result as! [String: Any])
                    // 注册成功埋点
                    //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                    ExamineThen.share.sendData(key: (String(mainModelMessage.suffix(5)) + String(const_dataId.prefix(4)) + mainManagerStr.replacingOccurrences(of: "row", with: "uc")))
                    //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                    PanStartAnalyticsManager.share.windowContent(name: (String(mainModelMessage.suffix(5)) + String(const_dataId.prefix(4)) + mainManagerStr.replacingOccurrences(of: "row", with: "uc")))

                    //: if PunctuateThen.share.loginUserMode.remindBindEmail == true {
                    if PunctuateThen.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                        //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            //: RangePushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                            RangePushManager.share.magnitudeSharedDorsalVertebra(isShowBack: false)
                        }
                    }
                }
            }
            //: } else {
        } else {
            //: let VC = TalkingLoginEditAuthAndVideoVC.init()
            let VC = DrunkReactiveCompatible()
            //: VC.params = params
            VC.params = params
            //: self.currentViewController()?.navigationController?.pushViewController(VC, animated: true)
            self.occurrentWith()?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    //: func func__checkFinishBtnState() {
    func motion() {
        //: let headImg = PunctuateThen.share.userFillInfoMode.headImage ?? nil
        let headImg = PunctuateThen.share.userFillInfoMode.headImage ?? nil
        //: editInfoView.commitButton.isEnabled = headImg != nil
        editInfoView.commitButton.isEnabled = headImg != nil
    }
}

// MARK: - Delegate

//: extension TalkingLoginEditPhotoVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension HeadControllerDelegate: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: private func func__choicePhotos() {
    private func everyData() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) {  (isOpen: Bool) in
        CustomPermissionTool.videoOf(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = DirectReactiveCompatible.sizeUponTelecasting(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: RangePushManager.share.func__getCurrentActivityVC()?.present(vc, animated: true)
                RangePushManager.share.retrieve()?.present(vc, animated: true)
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
                            //: PunctuateThen.share.userFillInfoMode.headImage = photos![0]
                            PunctuateThen.share.userFillInfoMode.headImage = photos![0]
                            //: self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            //: self.func__checkFinishBtnState()
                            self.motion()
                        }
                }
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoVC {
extension HeadControllerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func sizeBy() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func setup() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func objectSend() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) -> Void in
        editInfoView.btnBlock = { [weak self] (_ type: ProviderInfoType) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic:
            case .HeadPic:
                //: func__choicePhotos()
                everyData()
            //: break
            //: case .NickName, .Birth, .Skip: break
            case .NickName, .Birth, .Skip: break
            //: case .Finish:
            case .Finish:
                //: self.commitControlAction()
                self.targetShared()
                //: break
            }

            //: return
        }
    }
}
