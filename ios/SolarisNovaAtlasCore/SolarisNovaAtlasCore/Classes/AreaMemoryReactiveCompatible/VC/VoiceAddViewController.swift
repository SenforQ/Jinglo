
//: Declare String Begin

/*: "Email Address" :*/
fileprivate let notiClickId:String = "path super varEmail Ad"
fileprivate let userPathStr:String = "DRESS"

/*: "Phone number" :*/
fileprivate let kViewContent:[Character] = ["P","h","o","n","e"," ","n","u","m","b"]
fileprivate let data_netText:String = "edraft"

/*: "Enter the email code sent to" :*/
fileprivate let userLargeErrorUrl:[Character] = ["E","n","t","e","r"," ","t","h","e"," ","e","m","a","i"]
fileprivate let const_rowText:String = "l codline let"
fileprivate let appFlushName:String = "nt tokit let match view"

/*: "Enter the phone code sent to" :*/
fileprivate let main_pathText:String = "Enterattribute end index var"
fileprivate let const_leadingClickId:String = "conversation unless layer model view pho"
fileprivate let main_withId:String = "image shared view fillne cod"
fileprivate let showStackAllRootPath:String = "actual index button enter ifnt to"

/*: "(+ :*/
fileprivate let noti_blockPath:String = "(+"

/*: ) :*/
fileprivate let noti_shareMakeContent:[Character] = [")"]

/*: "8075F5" :*/
fileprivate let appFillMsg:String = "block medium8075F5"

/*: "F4F4F4" :*/
fileprivate let const_appMsg:String = "f4f4f4"

/*: "Resend verification email" :*/
fileprivate let notiVoiceValue:String = "background video image icon extensionResen"
fileprivate let userTableMsg:String = "FICATI"
fileprivate let main_propertyMsg:String = "maiuser"

/*: "Tips: If you can't receive the verification code, please check whether the message is in spam or not" :*/
fileprivate let mainShouldArrayKey:[UInt8] = [0x15,0x28,0x31,0x32,0x7b,0x61,0x8,0x27,0x61,0x38,0x2e,0x34,0x61,0x22,0x20,0x2f,0x66,0x35,0x61,0x33,0x24,0x22,0x24,0x28,0x37,0x24,0x61,0x35,0x29,0x24,0x61,0x37,0x24,0x33,0x28,0x27,0x28,0x22,0x20,0x35,0x28,0x2e,0x2f,0x61,0x22,0x2e,0x25,0x24,0x6d,0x61,0x31,0x2d,0x24,0x20,0x32,0x24,0x61,0x22,0x29,0x24,0x22,0x2a,0x61,0x36,0x29,0x24,0x35,0x29,0x24,0x33,0x61,0x35,0x29,0x24,0x61,0x2c,0x24,0x32,0x32,0x20,0x26,0x24,0x61,0x28,0x32,0x61,0x28,0x2f,0x61,0x32,0x31,0x20,0x2c,0x61,0x2e,0x33,0x61,0x2f,0x2e,0x35]

/*: "Bind Email succeed" :*/
fileprivate let main_readData:[Character] = ["B","i","n","d"," ","E","m","a","i","l"," ","s","u","c","c"]
fileprivate let dataTitleTimeId:[Character] = ["e","e","d"]

/*: "Bind Mobile Phone succeed" :*/
fileprivate let userResultFormat:String = "content value if liveBind "
fileprivate let showToName:[Character] = ["h","o","n","e"," ","s","u","c","c","e","e","d"]

/*: "Resend verification email (%@s)" :*/
fileprivate let noti_selectedFormat:[UInt8] = [0xd7,0xea,0xf8,0xea,0xf3,0xe9,0xa5,0xfb,0xea,0xf7,0xee,0xeb,0xee,0xe8,0xe6,0xf9,0xee,0xf4,0xf3,0xa5,0xea,0xf2,0xe6,0xee,0xf1,0xa5,0xad,0xaa,0xc5,0xf8,0xae]

fileprivate func mentalAge(begin num: UInt8) -> UInt8 {
    let value = Int(num) - 133
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VoiceAddViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: class TalkingLoginBindInputCodeVC: TalkingBaseViewController {
class VoiceAddViewController: SizeViewController {
    //: public var  phoneOrEmailStr: String = ""  // 邮箱或者Email
    public var phoneOrEmailStr: String = "" // 邮箱或者Email
    //: public var  areaCodeNum: String = ""
    public var areaCodeNum: String = ""
    //: public var  codeStr: String = ""
    public var codeStr: String = ""
    //: public var  viewType: TalkingBindVCType?
    public var viewType: SizeBindType?
    //: var isBack: Bool!
    var isBack: Bool!
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var timerDispose: Disposable?
    private var timerDispose: Disposable?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.omit()
        //: self.setupSubViewsConstraint()
        self.viewsConstraint()
        //: self.bindInteraction()
        self.gift()
        //: func_starCodeTime()
        awake()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: func_endCodeTime()
        will()
    }

    //: deinit {
    deinit {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    // MARK: - Lazy Load

    //: lazy var tipsLabel: UILabel = {
    lazy var tipsLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 17)
        label.font = .clickLarge(type: .Medium, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .toEvent()
        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Email Address".localized
            label.text = (String(notiClickId.suffix(8)) + userPathStr.lowercased()).localized
            //: } else {
        } else {
            //: label.text = "Phone number".localized
            label.text = (String(kViewContent) + data_netText.replacingOccurrences(of: "draft", with: "r")).localized
        }
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .clickLarge(type: .Regular, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .toEvent()

        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Enter the email code sent to".localized
            label.text = (String(userLargeErrorUrl) + String(const_rowText.prefix(5)) + "e se" + String(appFlushName.prefix(5))).localized
            //: } else {
        } else {
            //: label.text = "Enter the phone code sent to".localized
            label.text = getString()
        }
        //: return label
        return label
        //: }()
    }()
    
    func getString() -> String {
        return (String(main_pathText.prefix(5)) + " the" + String(const_leadingClickId.suffix(4)) + String(main_withId.suffix(6)) + "e se" + String(showStackAllRootPath.suffix(5))).localized
    }

    //: lazy var inputLabel: UILabel = {
    lazy var inputLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .clickLarge(type: .Medium, fontSize: 16)
        //: label.textColor = .appThemeColor()
        label.textColor = .readRemove()
        //: label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var codeInputView: TalkingCodeInputView = {
    lazy var codeInputView: ForefrontReactiveCompatible = {
        //: let codeView = TalkingCodeInputView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: "8075F5")!, normalColor: UIColor(hex: "F4F4F4")!, margin: 12)
        let codeView = ForefrontReactiveCompatible(frame: CGRect(x: 0, y: 0, width: kQueryValue, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: (String(appFillMsg.suffix(6))))!, normalColor: UIColor(hex: (const_appMsg.uppercased()))!, margin: 12)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: codeView.layer.transform =  CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            codeView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0) // 镜像
        }
        //: return codeView
        return codeView
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Regular, fontSize: 18)
        //: btn.setTitle("Resend verification email".localized, for: .normal)
        btn.setTitle((String(notiVoiceValue.suffix(5)) + "d veri" + userTableMsg.lowercased() + "on e" + main_propertyMsg.replacingOccurrences(of: "user", with: "l")).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.sinceNext(colors: UIColor.analogDigitalConverterColor(), size: CGSize(width: kQueryValue - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 12)
        label.font = .clickLarge(type: .Medium, fontSize: 12)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .hockeyPlayer()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: let str = "Tips: If you can't receive the verification code, please check whether the message is in spam or not".localized
        let str = String(bytes: mainShouldArrayKey.map{$0^65}, encoding: .utf8)!.localized
        //: let range = NSRange(location: 5, length: str.count-5)
        let range = NSRange(location: 5, length: str.count - 5)
        //: let attributedString = NSMutableAttributedString(string: str)
        let attributedString = NSMutableAttributedString(string: str)
        //: attributedString.addAttribute(.font, value: UIFont.pingfangFont(type: .Regular, fontSize: 12), range: range)
        attributedString.addAttribute(.font, value: UIFont.clickLarge(type: .Regular, fontSize: 12), range: range)
        //: label.attributedText = attributedString
        label.attributedText = attributedString
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginBindInputCodeVC {
extension VoiceAddViewController {
    //: func func__bindEmailAction() {
    func name() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        DirectThen.routeGift(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_bindEmailCode(emailCode: codeStr) { succeed, result, errorModel in
            ComponentRequestTool.album(emailCode: codeStr) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                DirectThen.cutWith()
                //: if succeed {
                if succeed {
                    //: PunctuateThen.share.loginUserMode.email = self.phoneOrEmailStr
                    PunctuateThen.share.loginUserMode.email = self.phoneOrEmailStr
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Email succeed".localized)
                    self.occupant(showMsg: (String(main_readData) + String(dataTitleTimeId)).localized)
                    //: let count: Int = (self.navigationController?.viewControllers.count)!
                    let count: Int = (self.navigationController?.viewControllers.count)!
                    //: if count >= 3 {
                    if count >= 3 {
                        //: let count = count - 3
                        let count = count - 3
                        //: let vc = self.navigationController?.viewControllers[count]
                        let vc = self.navigationController?.viewControllers[count]
                        //: self.navigationController?.popToViewController(vc!, animated: true)
                        self.navigationController?.popToViewController(vc!, animated: true)
                    }
                    //: } else {
                } else {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.bullSEye()
                    //: self.codeInputView.startEdit()
                    self.codeInputView.mini()
                }
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_MobileBind(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self]  succeed, result, errorModel in
            ComponentRequestTool.protrude(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                DirectThen.cutWith()
                //: if !succeed {
                if !succeed {
                    //: self.codeInputView.startEdit()
                    self.codeInputView.mini()
                    //: return
                    return
                }
                //: PunctuateThen.share.loginUserMode.mobile = self.phoneOrEmailStr
                PunctuateThen.share.loginUserMode.mobile = self.phoneOrEmailStr
                //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Mobile Phone succeed".localized)
                self.occupant(showMsg: (String(userResultFormat.suffix(5)) + "Mobile P" + String(showToName)).localized)
                //: for index in 0..<(self.navigationController?.viewControllers.count)! {
                for index in 0 ..< (self.navigationController?.viewControllers.count)! {
                    //: if self.navigationController?.viewControllers[index] .isKind(of: TalkingSettingsUniversalVC.self) == true {
                    if self.navigationController?.viewControllers[index].isKind(of: EastWestDirectionRecognizerDelegate.self) == true {
                        //: let vc = (self.navigationController?.viewControllers[index] as? TalkingSettingsUniversalVC)!
                        let vc = (self.navigationController?.viewControllers[index] as? EastWestDirectionRecognizerDelegate)!
                        //: self.navigationController?.popToViewController(vc, animated: true)
                        self.navigationController?.popToViewController(vc, animated: true)
                        //: return
                        return
                    }
                }
            }
        }
    }

    //: func func__resendEmailCodeAction() {
    func earlier() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        DirectThen.routeGift(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, result, errorModel in
            ComponentRequestTool.show(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                DirectThen.cutWith()
                //: if succeed {
                if succeed {
                    //: self.func_starCodeTime()
                    self.awake()
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.bullSEye()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.mini()
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_bindPhoneGetCode(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, result, errorModel in
            ComponentRequestTool.imageFile(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                DirectThen.cutWith()
                //: if succeed {
                if succeed {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.bullSEye()
                    //: self.func_starCodeTime()
                    self.awake()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.mini()
                //: })
            })
        }
    }

    //: func func_starCodeTime() {
    func awake() {
        //: if timerDispose != nil {
        if timerDispose != nil {
            //: timerDispose?.dispose()
            timerDispose?.dispose()
        }
        //: var timeCount = 300
        var timeCount = 300
        //: timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
        timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
            //: .subscribe(onNext: { [weak self] num in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: timeCount -= 1
                timeCount -= 1
                //: self.commitButton.isEnabled = (timeCount <= 0)
                self.commitButton.isEnabled = (timeCount <= 0)
                //: if timeCount > 0 {
                if timeCount > 0 {
                    //: self.commitButton.setTitle("Resend verification email (%@s)".localizedArguments(timeCount), for: .normal)
                    self.commitButton.setTitle(String(bytes: noti_selectedFormat.map{mentalAge(begin: $0)}, encoding: .utf8)!.viewfinder(timeCount), for: .normal)
                    //: } else {
                } else {
                    //: self.func_endCodeTime()
                    self.will()
                    //: self.commitButton.setTitle("Resend verification email".localized, for: .normal)
                    self.commitButton.setTitle((String(notiVoiceValue.suffix(5)) + "d veri" + userTableMsg.lowercased() + "on e" + main_propertyMsg.replacingOccurrences(of: "user", with: "l")).localized, for: .normal)
                }
                //: })
            })
    }

    //: func func_endCodeTime() {
    func will() {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }
}

// MARK: - Layout

//: extension TalkingLoginBindInputCodeVC {
extension VoiceAddViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func omit() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(tipsLabel)
        view.addSubview(tipsLabel)
        //: view.addSubview(titleLabel)
        view.addSubview(titleLabel)
        //: view.addSubview(inputLabel)
        view.addSubview(inputLabel)
        //: view.addSubview(codeInputView)
        view.addSubview(codeInputView)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
        //: view.addSubview(desLab)
        view.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func viewsConstraint() {
        //: tipsLabel.snp.makeConstraints { make in
        tipsLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(tipsLabel.snp.bottom).offset(40)
            make.top.equalTo(tipsLabel.snp.bottom).offset(40)
        }
        //: inputLabel.snp.makeConstraints { make in
        inputLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(titleLabel.snp.bottom)
            make.top.equalTo(titleLabel.snp.bottom)
        }
        //: codeInputView.snp.makeConstraints { make in
        codeInputView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(70)
            make.height.equalTo(70)
            //: make.top.equalTo(inputLabel.snp.bottom).offset(24)
            make.top.equalTo(inputLabel.snp.bottom).offset(24)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(codeInputView.snp.bottom).offset(30)
            make.top.equalTo(codeInputView.snp.bottom).offset(30)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(commitButton.snp.bottom).offset(36)
            make.top.equalTo(commitButton.snp.bottom).offset(36)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func gift() {
        //: commitButton.rx.controlEvent(.touchUpInside)
        commitButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__resendEmailCodeAction()
                self.earlier()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: codeInputView.codeBlock = { [weak self] (codeStr: String) -> Void in
        codeInputView.codeBlock = { [weak self] (codeStr: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if codeStr.count == 6 {
            if codeStr.count == 6 {
                //: self.codeStr = codeStr
                self.codeStr = codeStr
                //: self.func__bindEmailAction()
                self.name()
            }
            //: return
        }
    }
}
