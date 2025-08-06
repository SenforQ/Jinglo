
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiToolPath:[UInt8] = [0xde,0xd9,0xde,0xc3,0x9f,0xd4,0xd8,0xd3,0xd2,0xc5,0x8d,0x9e,0x97,0xdf,0xd6,0xc4,0x97,0xd9,0xd8,0xc3,0x97,0xd5,0xd2,0xd2,0xd9,0x97,0xde,0xda,0xc7,0xdb,0xd2,0xda,0xd2,0xd9,0xc3,0xd2,0xd3]

private func useCover(view num: UInt8) -> UInt8 {
    return num ^ 183
}

/*: "nav_back_black_nor" :*/
fileprivate let app_currentPath:String = "extension to letnav_b"
fileprivate let const_totalTitle:String = "k_norinterval social model temp"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClickViewController.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationVC: TalkingBaseViewController {
class ClickViewController: SizeViewController {
    //: var toastStr: String = ""
    var toastStr: String = ""

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
        fatalError(String(bytes: notiToolPath.map{useCover(view: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.createUI()
        self.section()
        //: self.createUIConstraint()
        self.sunna()
        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: ProgressHUD.toast(toastStr)
            DirectThen.stateToast(toastStr)
        }
    }

    // MARK: - Lazy load

    //: lazy var mainView: TalkingFaceVerificationView = {
    lazy var mainView: MagazineVerificationView = {
        //: let view = TalkingFaceVerificationView()
        let view = MagazineVerificationView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "nav_back_black_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(app_currentPath.suffix(5)) + "ack_blac" + String(const_totalTitle.prefix(5)))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationVC {
extension ClickViewController {
    //: @objc func backBtnClicked() {
    @objc func backCancel() {
        //: self.naviPopback()
        self.untilNavi()
    }
}

// MARK: - UI

//: extension TalkingFaceVerificationVC {
extension ClickViewController {
    //: func createUI() {
    func section() {
        //: view.addSubview(mainView)
        view.addSubview(mainView)
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: backBtn.addTarget(self, action: #selector(backBtnClicked), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(backCancel), for: .touchUpInside)
        //: mainView.btnClickBlock = { () -> Void in
        mainView.btnClickBlock = { () in
            //: let vc = TalkingVerificationExampleVC()
            let vc = ModelViewController()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: return
        }
    }

    //: func createUIConstraint() {
    func sunna() {
        //: mainView.snp.makeConstraints { make in
        mainView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.top.equalTo(actualHeight(h: 12)+StatusBarHeight)
            make.top.equalTo(actualHeight(h: 12) + constLiveErrorMessage)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
    }
}
