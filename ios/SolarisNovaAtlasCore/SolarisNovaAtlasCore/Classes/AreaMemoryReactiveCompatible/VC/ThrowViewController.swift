
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let data_modeMessage:[UInt8] = [0x86,0x81,0x86,0x9b,0xc7,0x8c,0x80,0x8b,0x8a,0x9d,0xd5,0xc6,0xcf,0x87,0x8e,0x9c,0xcf,0x81,0x80,0x9b,0xcf,0x8d,0x8a,0x8a,0x81,0xcf,0x86,0x82,0x9f,0x83,0x8a,0x82,0x8a,0x81,0x9b,0x8a,0x8b]

private func messageManagerCell(present num: UInt8) -> UInt8 {
    return num ^ 239
}

/*: "apple 授权失败，请稍后再试" :*/
fileprivate let show_filterTitle:String = "atoptopl"
fileprivate let kChoiceKey:String = "败，\u{8bf7}稍后\u{518d}试"

/*: "google 授权失败，请稍后再试" :*/
fileprivate let noti_afterTitle:String = "gwithwithg"
fileprivate let const_fullId:String = "请稍path试"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ThrowViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginMainViewController: TalkingBaseViewController {
class ThrowViewController: SizeViewController {
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: data_modeMessage.map{messageManagerCell(present: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: navigationController?.isNavigationBarHidden = hideNavi
        navigationController?.isNavigationBarHidden = hideNavi
        //: tabBarController?.tabBar.isHidden = true
        tabBarController?.tabBar.isHidden = true
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.ofConversion()
        //: self.setupSubViewsConstraint()
        self.remove()
        //: self.bindInteraction()
        self.dowserForNumbereractionInteraction()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var loginMainView: TalkingLoginMainView = {
    lazy var loginMainView: AddView = {
        //: let loginView = TalkingLoginMainView.init()
        let loginView = AddView()
        //: return loginView
        return loginView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginMainViewController {
extension ThrowViewController {
    //: func req_thirdLogin(_ type: LoginType) {
    func label(_ type: PublicCollection) {
        //: switch type {
        switch type {
        //: case .AppleLogin:
        case .AppleLogin:
            //: AppleLoginManager.shared.login { dict in
            SendControllerDelegate.shared.equalFromClosure { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "apple 授权失败，请稍后再试")
                    printLog(message: (show_filterTitle.replacingOccurrences(of: "top", with: "p") + "e 授权失" + kChoiceKey))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                DirectThen.levelHandle()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .AppleLogin, params: dict) { succeed, result, errorModel in
                ComponentRequestTool.with(type: .AppleLogin, params: dict) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    DirectThen.cutWith()
                }
            }
        //: case .GoogleLogin:
        case .GoogleLogin:
            //: GoogleLoginManager.shared.login(vc: self) { dict in
            TitleReactiveCompatible.shared.request(vc: self) { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "google 授权失败，请稍后再试")
                    printLog(message: (noti_afterTitle.replacingOccurrences(of: "with", with: "o") + "le \u{6388}权失\u{8d25}，" + const_fullId.replacingOccurrences(of: "path", with: "后再")))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                DirectThen.levelHandle()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .GoogleLogin, params: dict) { succeed, result, errorModel in
                ComponentRequestTool.with(type: .GoogleLogin, params: dict) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    DirectThen.cutWith()
                }
            }
        //: case .PhoneLogin:
        case .PhoneLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginPhone)
            let vc = LogReactiveCompatible(type: .LoginPhone)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

        //: case .EmailLogin:
        case .EmailLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginEmail)
            let vc = LogReactiveCompatible(type: .LoginEmail)
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - Privete Event

//: extension TalkingLoginMainViewController {
extension ThrowViewController {
    //: func loginAction(type: LoginType) {
    func loginActionType(type: PublicCollection) {
        //: LoginPrivacyPolicyView().showView {
        CommonNameView().finish {
            //: self.req_thirdLogin(type)
            self.label(type)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginMainViewController {
extension ThrowViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func ofConversion() {
        //: view.addSubview(loginMainView)
        view.addSubview(loginMainView)
        //: loginMainView.btnBlock = {[weak self] (type: LoginType) in
        loginMainView.btnBlock = { [weak self] (type: PublicCollection) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.loginAction(type: type)
            self.loginActionType(type: type)
            //: return
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func remove() {
        //: loginMainView.snp.makeConstraints { make in
        loginMainView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func dowserForNumbereractionInteraction() {}
}
