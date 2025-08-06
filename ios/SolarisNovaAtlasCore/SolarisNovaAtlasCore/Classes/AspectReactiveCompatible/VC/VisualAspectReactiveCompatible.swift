
//: Declare String Begin

/*: "Video calls will all use the current Beautify Settings" :*/
fileprivate let k_targetUrl:[UInt8] = [0xdb,0xe4,0xe9,0xe8,0xe2,0xad,0xee,0xec,0xe1,0xe1,0xfe,0xad,0xfa,0xe4,0xe1,0xe1,0xad,0xec,0xe1,0xe1,0xad,0xf8,0xfe,0xe8,0xad,0xf9,0xe5,0xe8,0xad,0xee,0xf8,0xff,0xff,0xe8,0xe3,0xf9,0xad,0xcf,0xe8,0xec,0xf8,0xf9,0xe4,0xeb,0xf4,0xad,0xde,0xe8,0xf9,0xf9,0xe4,0xe3,0xea,0xfe]

/*: "Cancel" :*/
fileprivate let dataInputMsg:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let showIndexKey:String = "clickK"

/*: "Done" :*/
fileprivate let const_labFlushPath:String = "post let title equal selfDone"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VisualAspectReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

//: import UIKit
import UIKit

//: class TalkingMyBeautyVC: TalkingBaseViewController {
class VisualAspectReactiveCompatible: SizeViewController {
    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: if self.beautyView.stCamera != nil {
        if self.beautyView.stCamera != nil {
            //: self.beautyView.stCamera.startRunning()
            self.beautyView.stCamera.circleRunning()
        }
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: if self.beautyView.stCamera != nil {
        if self.beautyView.stCamera != nil {
            //: self.beautyView.stCamera.stopRunning()
            self.beautyView.stCamera.path()
        }
        //: popGesture(isOpen: true)
        outContainer(isOpen: true)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: popGesture(isOpen: false)
        outContainer(isOpen: false)
        //: setupSubviews()
        upward()
    }

    // MARK: - Lazy Load

    //: lazy var beautyView: STFilterView = {
    lazy var beautyView: ImageView = {
        //: let v = STFilterView(wihtVideoConversation: "\(AVCaptureSession.Preset.hd1280x720.rawValue)")
        let v = ImageView(filter: "\(AVCaptureSession.Preset.hd1280x720.rawValue)")
        //: v?.frame = self.view.bounds
        v?.frame = self.view.bounds
        //: return v!
        return v!
        //: }()
    }()

    //: private lazy var justView: STBeautyAdjustView = {
    private lazy var justView: StatusView = {
        //: let view = STBeautyAdjustView.init(frame: CGRect.init(x: 0, y: ScreenHeight-(258+kDeviceSafeBottomHeight+50), width: ScreenWidth, height: 258+kDeviceSafeBottomHeight+50))
        let view = StatusView(frame: CGRect(x: 0, y: notiKeyTitle - (258 + k_netId + 50), width: kQueryValue, height: 258 + k_netId + 50))
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingMyBeautyVC {
extension VisualAspectReactiveCompatible {
    //: @objc func backClick() {
    @objc func detail() {
        //: let config = ShowAlertConfig()
        let config = CurtilageAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: config.textFont = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        config.textFont = UIFont.clickLarge(type: .Medium, fontSize: 18)
        //: TalkingAlertShow.customAlert(message: "Video calls will all use the current Beautify Settings".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        SizeReactiveCompatible.buttonEnter(message: String(bytes: k_targetUrl.map{$0^141}, encoding: .utf8)!.localized, leftBtnTitle: (String(dataInputMsg)).localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            SizeReactiveCompatible.obstruct()
            //: }, rightBlock: { [weak self] in
        }, rightBlock: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: TalkingAlertShow.hideAlert()
            SizeReactiveCompatible.obstruct()
            //: FiltrateDirectPriceReactiveCompatible.share.store()
            FiltrateDirectPriceReactiveCompatible.share.everyPlay()
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: }, config: config)
        }, config: config)
    }
}

//: extension TalkingMyBeautyVC {
extension VisualAspectReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func upward() {
        //: self.view.backgroundColor = .black
        self.view.backgroundColor = .black

        //: let backBtn = UIButton.init()
        let backBtn = UIButton()
        //: backBtn.setTitle("Done".localized, for: .normal)
        backBtn.setTitle((String(const_labFlushPath.suffix(4))).localized, for: .normal)
        //: backBtn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        backBtn.titleLabel?.font = UIFont.clickLarge(type: .Medium, fontSize: 16)
        //: backBtn.addTarget(self, action: #selector(backClick), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(detail), for: .touchUpInside)
        //: self.view.addSubview(backBtn)
        self.view.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(constLiveErrorMessage)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(50)
            make.width.equalTo(50)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: self.view.insertSubview(beautyView, at: 0)
        self.view.insertSubview(beautyView, at: 0)
        //: beautyView.snp.makeConstraints { make in
        beautyView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }

        //: self.view.addSubview(justView)
        self.view.addSubview(justView)
    }
}
