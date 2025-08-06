
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_modelValue:[UInt8] = [0x25,0x2a,0x25,0x30,0xe4,0x1f,0x2b,0x20,0x21,0x2e,0xf6,0xe5,0xdc,0x24,0x1d,0x2f,0xdc,0x2a,0x2b,0x30,0xdc,0x1e,0x21,0x21,0x2a,0xdc,0x25,0x29,0x2c,0x28,0x21,0x29,0x21,0x2a,0x30,0x21,0x20]

fileprivate func clearBottom(leading num: UInt8) -> UInt8 {
    let value = Int(num) - 188
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_back_white" :*/
fileprivate let notiTitleMsg:[Character] = ["b","t","n","_","b","a","c","k","_","w","h","i","t","e"]

/*: (+ :*/
fileprivate let kActualScreenName:[Character] = ["(","+"]

/*: )" :*/
fileprivate let userCellMsg:String = ")"

/*: "area_icon_ :*/
fileprivate let const_modelListValue:String = "label string selfarea_"
fileprivate let app_showMessage:[Character] = ["i","c","o","n","_"]

/*: @2x" :*/
fileprivate let mainSessionText:[Character] = ["@","2","x"]

/*: "get img error" :*/
fileprivate let data_lineFormat:String = "get iequal else to dismiss"
fileprivate let data_labMessage:[Character] = ["m"]
fileprivate let mainTheData:String = "g errorin text raw guard self"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LogReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginViewController: TalkingBaseViewController {
class LogReactiveCompatible: SizeViewController {
    //: private var areaModel = TalkingLocationTool.share.getDefaltCountry()
    private var areaModel = DirectionThen.share.analogDigitalConverterTotalry()

    //: private var phoneOrEmailStr = ""
    private var phoneOrEmailStr = ""
    //: private var password: String?
    private var password: String?

    //: public var loginType: TalkingLoginVCType?
    public var loginType: GiftLoginType?

    //: init(type: TalkingLoginVCType) {
    init(type: GiftLoginType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: loginType = type
        loginType = type
    }

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_modelValue.map{clearBottom(leading: $0)}, encoding: .utf8)!)
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
        //: self.setupSubviews()
        self.pop()
        //: self.setupSubViewsConstraint()
        self.item()
        //: self.bindInteraction()
        self.state()
    }

    //: deinit {
    deinit {}

    //: lazy var loginView: TalkingLoginView = {
    lazy var loginView: PanImageLoginView = {
        //: let loginView = TalkingLoginView.init(type: self.loginType!)
        let loginView = PanImageLoginView(type: self.loginType!)
        //: return loginView
        return loginView
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init(frame: CGRect(x: 6, y: StatusBarHeight, width: 44, height: 44))
        let btn = UIButton(frame: CGRect(x: 6, y: constLiveErrorMessage, width: 44, height: 44))
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_back_white"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(notiTitleMsg))), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(ofBack), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginViewController {
extension LogReactiveCompatible {
    //: @objc func backBtnClick() {
    @objc func ofBack() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func func__getPhoneCodeAction() {
    func complete() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_getPhoneCode(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, completion: { succeed, result, errorModel in
            ComponentRequestTool.add(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                DirectThen.cutWith()
                //: if succeed {
                if succeed {
                    //: self.func__pushToPhoneCodeVC()
                    self.voice()
                }
                //: })
            })
            //: }else{
        } else {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: phoneOrEmailStr, isBind: false) { succeed, result, errorModel in
            ComponentRequestTool.show(emailStr: phoneOrEmailStr, isBind: false) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                DirectThen.cutWith()
                //: if succeed {
                if succeed {
                    //: self.func__pushToPhoneCodeVC()
                    self.voice()
                }
            }
        }
    }

    /// 密码登录
    //: private func func__passwordLogin() {
    private func cosmopolitanLogin() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: guard let pwd = password else { return }
        guard let pwd = password else { return }
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_passwordLogin(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, pwd: pwd) { succeed, result, errorModel in
            ComponentRequestTool.remote(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, pwd: pwd) { _, _, _ in
                //: ProgressHUD.dismiss()
                DirectThen.cutWith()
            }
            //: }else{
        } else {
            //: TalkingLoginRequestTool.req_passwordEmailLogin(emailStr: phoneOrEmailStr, pwd: pwd) { succeed, result, errorModel in
            ComponentRequestTool.dismiss(emailStr: phoneOrEmailStr, pwd: pwd) { _, _, _ in
                //: ProgressHUD.dismiss()
                DirectThen.cutWith()
            }
        }
    }

    //: func func__pushToAreaCodeVC() {
    func referencePointVc() {
        //: let vc = TalkingAreaCodeChoiceVC()
        let vc = AreaMemoryReactiveCompatible()
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
        //: vc.backCountryCode = { [weak self] areaModel in
        vc.backCountryCode = { [weak self] areaModel in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.areaModel = areaModel
            self.areaModel = areaModel
            //: self.func__updateAreaView()
            self.imageView()
        }
    }

    //: func func__pushToPhoneCodeVC() {
    func voice() {
        //: let vc = TalkingLoginCodeVC(type: self.loginType!)
        let vc = AttackViewController(type: self.loginType!)
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: vc.areaCodeNum = areaModel.areaCode
            vc.areaCodeNum = areaModel.areaCode
        }
        //: vc.phoneOrEmailStr = phoneOrEmailStr
        vc.phoneOrEmailStr = phoneOrEmailStr
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }

    //: func func__updateAreaView() {
    func imageView() {
        //: self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        //: if areaModel.url.isEmptyString {
        if areaModel.url.isEmptyString {
            //: var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            //: imageName = imageName.replacingOccurrences(of: ",", with: "")
            imageName = imageName.replacingOccurrences(of: ",", with: "")
            //: imageName = imageName.replacingOccurrences(of: ")", with: "")
            imageName = imageName.replacingOccurrences(of: ")", with: "")
            //: imageName = imageName.replacingOccurrences(of: "(", with: "")
            imageName = imageName.replacingOccurrences(of: "(", with: "")
            //: imageName = "area_icon_\(imageName)@2x"
            imageName = (String(const_modelListValue.suffix(5)) + String(app_showMessage)) + "\(imageName)@2x"
            //: do {
            do {
                //: let url = SVGAEffectTool.default.getZipAreaIconPath(iconName: imageName)
                let url = SkullSessionReactiveCompatible.default.processSize(iconName: imageName)
                //: let data = try Data(contentsOf: url)
                let data = try Data(contentsOf: url)
                //: self.loginView.areaImageView.image = UIImage(data: data)
                self.loginView.areaImageView.image = UIImage(data: data)
                //: } catch _ as Error? {
            } catch _ as Error? {
                //: self.loginView.areaImageView.image = UIImage.placeImgSquare()
                self.loginView.areaImageView.image = UIImage.brother()
                //: printLog(message: "get img error")
                printLog(message: (String(data_lineFormat.prefix(5)) + String(data_labMessage) + String(mainTheData.prefix(7))))
            }
            //: } else {
        } else {
            //: self.loginView.areaImageView.setUrlImage(urlStr: areaModel.url)
            self.loginView.areaImageView.putBackThroughFinish(urlStr: areaModel.url)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginViewController {
extension LogReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func pop() {
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.addSubview(loginView)
        view.addSubview(loginView)
        //: func__updateAreaView()
        imageView()
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func item() {
        //: loginView.snp.makeConstraints { make in
        loginView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func state() {
        //: loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) -> Void in
        loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.phoneOrEmailStr = phone
            self.phoneOrEmailStr = phone
            //: self.password = pwd
            self.password = pwd
            //: if pwd?.count ?? 0 > 0 {
            if pwd?.count ?? 0 > 0 { // pwd
                //: self.func__passwordLogin()
                self.cosmopolitanLogin()
                //: } else {
            } else { // OTP
                //: self.func__getPhoneCodeAction()
                self.complete()
            }
        }

        //: loginView.areaCodeBlock = { [weak self] in
        loginView.areaCodeBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushToAreaCodeVC()
            self.referencePointVc()
        }

        //: addTapGestureRecognizer()
        acceptAdd()
    }
}
