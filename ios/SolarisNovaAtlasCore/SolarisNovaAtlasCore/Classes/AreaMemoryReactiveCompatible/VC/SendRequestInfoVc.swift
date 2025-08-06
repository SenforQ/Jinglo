
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let user_imageLockMessage:[Character] = ["P","e","r","s","o"]
fileprivate let kTouchName:String = "let user play with indexnal in"
fileprivate let main_scaleValue:String = "viewion"

/*: _ :*/
fileprivate let kCropData:String = "_"

/*: "male" :*/
fileprivate let constTitleData:[UInt8] = [0xdf,0xd3,0xde,0xd7]

fileprivate func kitTop(model num: UInt8) -> UInt8 {
    let value = Int(num) - 114
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "female" :*/
fileprivate let notiGiftTitle:String = "ftoomaltoo"

/*: "sex" :*/
fileprivate let const_colorListStr:[Character] = ["s","e","x"]

/*: "nickname" :*/
fileprivate let noti_atName:[Character] = ["n","i","c","k","n","a","m","e"]

/*: "birthday" :*/
fileprivate let const_tagMsg:[Character] = ["b","i","r","t","h","d","a","y"]

/*: "%.2d" :*/
fileprivate let user_frameFormat:String = "%.2dview view color tap make"

/*: - :*/
fileprivate let const_nameTouchFormat:String = "greet"

/*: "User :*/
fileprivate let appCenterImageText:String = "view user name toUser"

/*: "invite_code" :*/
fileprivate let user_viewStr:[UInt8] = [0x5d,0x5a,0x42,0x5d,0x40,0x51,0x6b,0x57,0x5b,0x50,0x51]

private func insideIcon(raw num: UInt8) -> UInt8 {
    return num ^ 52
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SendRequestInfoVc.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditInfoVC: TalkingBaseViewController {
class SendRequestInfoVc: SizeViewController {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        outContainer(isOpen: false)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 返回到此页面时，重新赋值
        //: if editInfoView.nameInputView.text?.count ?? 0 > 0 {
        if editInfoView.nameInputView.text?.count ?? 0 > 0 {
            //: PunctuateThen.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
            PunctuateThen.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
        }
        //: if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
        if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
            //: PunctuateThen.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
            PunctuateThen.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "Personal information".localized
        title = (String(user_imageLockMessage) + String(kTouchName.suffix(6)) + "forma" + main_scaleValue.replacingOccurrences(of: "view", with: "t")).localized
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: setupSubviews()
        enableTitle()
        //: setupSubViewsConstraint()
        viewMake()
        //: bindInteraction()
        deadlineBy()
        //: addTapGestureRecognizer()
        acceptAdd()
    }

    // MARK: - Lazy Load

    //: private lazy var editInfoView: TalkingLoginEditInfoView = {
    private lazy var editInfoView: DetailView = {
        //: let infoView = TalkingLoginEditInfoView()
        let infoView = DetailView()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditInfoVC {
extension SendRequestInfoVc {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func untilNavi() {
        //: super.naviPopback()
        super.untilNavi()
        // 埋点
        //: let eventID = "\(click_registration_information1_backBTN)_\(PunctuateThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(showLikeDismissContent)_\(PunctuateThen.share.userFillInfoMode.sex == TopComparable.male.rawValue ? String(bytes: constTitleData.map{kitTop(model: $0)}, encoding: .utf8)! : (notiGiftTitle.replacingOccurrences(of: "too", with: "e")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        const_screenFormat.occurrenceIn(eventID: eventID)
    }

    /// next事件
    //: private func commitControlAction() {
    private func toAction() {
        //: if PunctuateThen.share.userFillInfoMode.nickName.count <= 0 {
        if PunctuateThen.share.userFillInfoMode.nickName.count <= 0 {
            //: getRandomNickname()
            individual()
        }
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: params["sex"] = PunctuateThen.share.userFillInfoMode.sex
        params[(String(const_colorListStr))] = PunctuateThen.share.userFillInfoMode.sex
        //: params["nickname"] = PunctuateThen.share.userFillInfoMode.nickName
        params[(String(noti_atName))] = PunctuateThen.share.userFillInfoMode.nickName
        //: params["birthday"] = "\(String(format: "%.2d", PunctuateThen.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", PunctuateThen.share.userFillInfoMode.birthDay))-\(PunctuateThen.share.userFillInfoMode.birthYear)"
        params[(String(const_tagMsg))] = "\(String(format: "%.2d", PunctuateThen.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", PunctuateThen.share.userFillInfoMode.birthDay))-\(PunctuateThen.share.userFillInfoMode.birthYear)"
        //: let VC = TalkingLoginEditPhotoVC()
        let VC = HeadControllerDelegate()
        //: VC.params = params
        VC.params = params
        //: currentViewController()?.navigationController?.pushViewController(VC, animated: true)
        occurrentWith()?.navigationController?.pushViewController(VC, animated: true)
    }

    /// skip事件
    //: private func func__skipBtnAction() {
    private func load() {
        //: getRandomNickname()
        individual()
        //: PunctuateThen.share.userFillInfoMode.setBirth()
        PunctuateThen.share.userFillInfoMode.goEnableUp()
        //: PunctuateThen.share.userFillInfoMode.inviteCode = ""
        PunctuateThen.share.userFillInfoMode.inviteCode = ""
        //: commitControlAction()
        toAction()
    }

    /// 获取随机昵称
    //: private func getRandomNickname() {
    private func individual() {
        //: let randCode = Int(arc4random_uniform(899999) + 100000)
        let randCode = Int(arc4random_uniform(899_999) + 100_000)
        //: PunctuateThen.share.userFillInfoMode.nickName = "User\(randCode)"
        PunctuateThen.share.userFillInfoMode.nickName = (String(appCenterImageText.suffix(4))) + "\(randCode)"
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoVC {
extension SendRequestInfoVc {
    // 添加视图
    //: private func setupSubviews() {
    private func enableTitle() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func viewMake() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func deadlineBy() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) in
        editInfoView.btnBlock = { [weak self] (_ type: ProviderInfoType) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic: break
            case .HeadPic: break
            //: case .NickName: break
            case .NickName: break
            //: case .Birth: break
            case .Birth: break
            //: case .Finish:
            case .Finish:
                // 埋点
                //: let eventID = "\(click_registration_information1_nextBTN)_\(PunctuateThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(data_errorStr)_\(PunctuateThen.share.userFillInfoMode.sex == TopComparable.male.rawValue ? String(bytes: constTitleData.map{kitTop(model: $0)}, encoding: .utf8)! : (notiGiftTitle.replacingOccurrences(of: "too", with: "e")))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                const_screenFormat.occurrenceIn(eventID: eventID)

                // 校验验证码
                //: if PunctuateThen.share.userFillInfoMode.inviteCode.count > 0 {
                if PunctuateThen.share.userFillInfoMode.inviteCode.count > 0 {
                    //: let params = ["invite_code": PunctuateThen.share.userFillInfoMode.inviteCode]
                    let params = [String(bytes: user_viewStr.map{insideIcon(raw: $0)}, encoding: .utf8)!: PunctuateThen.share.userFillInfoMode.inviteCode]
                    //: TalkingLoginRequestTool.req_CheckCodeData(params: params) { succeed, _, _ in
                    ComponentRequestTool.bushido(params: params) { succeed, _, _ in
                        //: guard succeed else { return }
                        guard succeed else { return }
                        //: self.commitControlAction()
                        self.toAction()
                    }

                    //: } else {
                } else {
                    //: self.commitControlAction()
                    self.toAction()
                }

            //: case .Skip:
            case .Skip:
                // 埋点
                //: let eventID = "\(click_registration_information1_skipBTN)_\(PunctuateThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(data_tabContent)_\(PunctuateThen.share.userFillInfoMode.sex == TopComparable.male.rawValue ? String(bytes: constTitleData.map{kitTop(model: $0)}, encoding: .utf8)! : (notiGiftTitle.replacingOccurrences(of: "too", with: "e")))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                const_screenFormat.occurrenceIn(eventID: eventID)
                //: self.func__skipBtnAction()
                self.load()
            }
        }
    }
}
