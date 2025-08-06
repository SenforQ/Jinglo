
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let data_messageName:[UInt8] = [0xe6,0xeb,0xe6,0xf1,0xa5,0xe0,0xec,0xe1,0xe2,0xef,0xb7,0xa6,0x9d,0xe5,0xde,0xf0,0x9d,0xeb,0xec,0xf1,0x9d,0xdf,0xe2,0xe2,0xeb,0x9d,0xe6,0xea,0xed,0xe9,0xe2,0xea,0xe2,0xeb,0xf1,0xe2,0xe1]

fileprivate func appearLarge(cell num: UInt8) -> UInt8 {
    let value = Int(num) - 125
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Personal information" :*/
fileprivate let mainActionModeData:String = "target first labelPersonal"
fileprivate let app_passageKey:[Character] = [" ","i","n","f","o","r","m","a","t","i","o","n"]

/*: "TopComparable" :*/
fileprivate let dataStyleImageTitle:[Character] = ["G","e","n","d","e","r"]

/*: "Once gender is set, it Cannot be changed." :*/
fileprivate let constModelTitle:[UInt8] = [0x87,0xa6,0xab,0xad,0xe8,0xaf,0xad,0xa6,0xac,0xad,0xba,0xe8,0xa1,0xbb,0xe8,0xbb,0xad,0xbc,0xe4,0xe8,0xa1,0xbc,0xe8,0x8b,0xa9,0xa6,0xa6,0xa7,0xbc,0xe8,0xaa,0xad,0xe8,0xab,0xa0,0xa9,0xa6,0xaf,0xad,0xac,0xe6]

private func returnSize(name num: UInt8) -> UInt8 {
    return num ^ 200
}

/*: "#2ABBFF" :*/
fileprivate let userInfoTitle:String = "#2ABBFFmask show else"

/*: "btn_male_nv_nor" :*/
fileprivate let data_indexValue:String = "btn_user content"
fileprivate let main_appData:String = "v_norimage top else from else"

/*: "btn_male_nv_sel" :*/
fileprivate let k_actualValue:String = "point var userbtn_ma"

/*: "Male" :*/
fileprivate let show_pushValue:[Character] = ["M","a","l","e"]

/*: "#FF5372" :*/
fileprivate let kViewData:String = "image self import view#FF5372"

/*: "btn_female_nv_nor" :*/
fileprivate let kAppKey:[Character] = ["b","t","n","_","f","e"]
fileprivate let app_fallValue:String = "actionale"
fileprivate let show_modelData:String = "self status lock_nv_nor"

/*: "btn_female_nv_sel" :*/
fileprivate let showUserKey:[Character] = ["b","t","n","_","f","e","m","a","l","e","_","n","v","_","s","e"]
fileprivate let userAllName:String = "equal"

/*: "Female" :*/
fileprivate let kEditTopId:String = "line"
fileprivate let app_beginUrl:String = "labale"

/*: "Next" :*/
fileprivate let constLayerFormat:[Character] = ["N","e","x","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeGrammaticalGenderReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginGenderVC: TalkingBaseViewController {
class SizeGrammaticalGenderReactiveCompatible: SizeViewController {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: data_messageName.map{appearLarge(cell: $0)}, encoding: .utf8)!)
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
        self.title = (String(mainActionModeData.suffix(8)) + String(app_passageKey)).localized
        //: PunctuateThen.share.userFillInfoMode.sex = "1"
        PunctuateThen.share.userFillInfoMode.sex = "1"
        //: self.setupSubviews()
        self.playerIn()
        //: self.setupSubViewsConstraint()
        self.constraint()
        //: self.bindInteraction()
        self.contactTotaleraction()
        //: func__checkNextBtnState()
        use()
    }

    //: deinit {
    deinit {}

    //: private lazy var logoTitleLabel: UILabel = {
    private lazy var logoTitleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .clickLarge(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .toEvent()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Gender".localized
        label.text = (String(dataStyleImageTitle)).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var genderTipLabel: UILabel = {
    private lazy var genderTipLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .clickLarge(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .imageColor()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Once gender is set, it Cannot be changed.".localized
        label.text = String(bytes: constModelTitle.map{returnSize(name: $0)}, encoding: .utf8)!.localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var maleButton: TalkingButton = {
    private lazy var maleButton: StartImageButton = {
        //: let btn = TalkingButton(type: .custom)
        let btn = StartImageButton(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.lineClick(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#2ABBFF")!, forState: .selected)
        btn.lineClick(color: UIColor(hex: (String(userInfoTitle.prefix(7))))!, forState: .selected)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_male_nv_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(data_indexValue.prefix(4)) + "male_n" + String(main_appData.prefix(5)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_male_nv_sel"), for: .selected)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(k_actualValue.suffix(6)) + "le_nv_sel")), for: .selected)
        //: btn.setTitle("Male".localized, for: .normal)
        btn.setTitle((String(show_pushValue)).localized, for: .normal)
        //: btn.setTitle("Male".localized, for: .selected)
        btn.setTitle((String(show_pushValue)).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 17)
        btn.titleLabel?.font = UIFont.recoverOf(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var femaleButton: TalkingButton = {
    private lazy var femaleButton: StartImageButton = {
        //: let btn = TalkingButton(type: .custom)
        let btn = StartImageButton(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.lineClick(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#FF5372")!, forState: .selected)
        btn.lineClick(color: UIColor(hex: (String(kViewData.suffix(7))))!, forState: .selected)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_female_nv_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(kAppKey) + app_fallValue.replacingOccurrences(of: "action", with: "m") + String(show_modelData.suffix(7)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_female_nv_sel"), for: .selected)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(showUserKey) + userAllName.replacingOccurrences(of: "equal", with: "l"))), for: .selected)
        //: btn.setTitle("Female".localized, for: .normal)
        btn.setTitle((kEditTopId.replacingOccurrences(of: "line", with: "F") + app_beginUrl.replacingOccurrences(of: "lab", with: "em")).localized, for: .normal)
        //: btn.setTitle("Female".localized, for: .selected)
        btn.setTitle((kEditTopId.replacingOccurrences(of: "line", with: "F") + app_beginUrl.replacingOccurrences(of: "lab", with: "em")).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 17)
        btn.titleLabel?.font = UIFont.recoverOf(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var commitButton: UIButton = {
    private lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(constLayerFormat)).localized, for: .normal)
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
}

// MARK: - Public Event

//: extension TalkingLoginGenderVC {
extension SizeGrammaticalGenderReactiveCompatible {
    //: private func func__checkNextBtnState() {
    private func use() {
        //: if PunctuateThen.share.userFillInfoMode.sex == "1" {
        if PunctuateThen.share.userFillInfoMode.sex == "1" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = true
            self.maleButton.isSelected = true
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
            //: } else if PunctuateThen.share.userFillInfoMode.sex == "2"{
        } else if PunctuateThen.share.userFillInfoMode.sex == "2" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = true
            self.femaleButton.isSelected = true
            //: } else {
        } else {
            //: self.commitButton.isEnabled = false
            self.commitButton.isEnabled = false
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
        }
    }

    //: private func func__pushToNextProgress() {
    private func on() {
        //        // 1.3 判断用户设备SIM卡归属地是否来自被剔除的国家或地区
        //        // 1.4 判断用户设备是否开启VPN
//        if PunctuateThen.share.appConfigMode.vpnSimCardCheck {
//
//            guard  !LayerAddrTool.isUsedProxy() && !LayerAddrTool.isUsedVPN() else {
//                self.func__showStatusBarErrorMsg(showMsg: "Network error. Check it and try again.".localized)
//                self.navigationController?.popToRootViewController(animated: true)
//                NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
//                ManagingDirectorThen.func__reportDeviceID()
//                return
//            }
//        }
        /// 清除后面已填写过资料
        //: let sex = PunctuateThen.share.userFillInfoMode.sex
        let sex = PunctuateThen.share.userFillInfoMode.sex
        //: PunctuateThen.share.userFillInfoMode = UserFillInfoModel.init()
        PunctuateThen.share.userFillInfoMode = TitleSessionInfoModel()
        //: PunctuateThen.share.userFillInfoMode.sex = sex
        PunctuateThen.share.userFillInfoMode.sex = sex
        //: let VC = TalkingLoginEditInfoVC()
        let VC = SendRequestInfoVc()
        //: self.navigationController?.pushViewController(VC, animated: true)
        self.navigationController?.pushViewController(VC, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingLoginGenderVC {
extension SizeGrammaticalGenderReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func playerIn() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(logoTitleLabel)
        view.addSubview(logoTitleLabel)
        //: view.addSubview(genderTipLabel)
        view.addSubview(genderTipLabel)
        //: view.addSubview(maleButton)
        view.addSubview(maleButton)
        //: view.addSubview(femaleButton)
        view.addSubview(femaleButton)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func constraint() {
        //: logoTitleLabel.snp.makeConstraints { make in
        logoTitleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: genderTipLabel.snp.makeConstraints { make in
        genderTipLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kQueryValue - 60)
            //: make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
            make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
        }
        //: maleButton.snp.makeConstraints { make in
        maleButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: femaleButton.snp.makeConstraints { make in
        femaleButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kQueryValue - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(maleButton.snp.bottom).offset(40)
            make.top.equalTo(maleButton.snp.bottom).offset(40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func contactTotaleraction() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__pushToNextProgress()
                self.on()

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: femaleButton.rx.tap
        femaleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: PunctuateThen.share.userFillInfoMode.sex = "2"
                PunctuateThen.share.userFillInfoMode.sex = "2"
                //: self.func__checkNextBtnState()
                self.use()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: maleButton.rx.tap
        maleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: PunctuateThen.share.userFillInfoMode.sex = "1"
                PunctuateThen.share.userFillInfoMode.sex = "1"
                //: self.func__checkNextBtnState()
                self.use()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
