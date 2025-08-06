
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_pathName:[UInt8] = [0x6b,0x6c,0x6b,0x76,0x2a,0x61,0x6d,0x66,0x67,0x70,0x38,0x2b,0x22,0x6a,0x63,0x71,0x22,0x6c,0x6d,0x76,0x22,0x60,0x67,0x67,0x6c,0x22,0x6b,0x6f,0x72,0x6e,0x67,0x6f,0x67,0x6c,0x76,0x67,0x66]

/*: "bg_others_shadow_up" :*/
fileprivate let k_countResultUrl:String = "bg_oafter push"
fileprivate let mainLayerId:String = "_shaequal live"
fileprivate let kItemValue:String = "dow_upto let element edit name"

/*: "nav_back_black_nor" :*/
fileprivate let kStopName:[Character] = ["n","a","v","_","b","a","c","k","_","b"]
fileprivate let dataClickName:String = "lacleading"

/*: "btn_detail_more" :*/
fileprivate let constToMsg:[Character] = ["b","t","n","_","d","e","t","a","i","l","_","m","o","r","e"]

/*: "Shielding Success" :*/
fileprivate let kModelContent:[Character] = ["S","h","i","e","l","d","i","n","g"," ","S","u","c","c","e","s","s"]

/*: "Unmasking Succeeded" :*/
fileprivate let const_equalPath:String = "Unmaview hidden max"
fileprivate let k_itemKey:String = " Sucrecover equal"
fileprivate let k_ofKey:[Character] = ["c","e","e","d","e","d"]

/*: "Report" :*/
fileprivate let user_thenTitle:String = "Reportage image for"

/*: "Remvoe Block" :*/
fileprivate let data_numberPath:String = "Remvoelet count"
fileprivate let show_makeKey:String = "add model self success Block"

/*: "Block" :*/
fileprivate let main_methodName:[Character] = ["B","l","o","c","k"]

/*: "Cancel" :*/
fileprivate let app_stopContent:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let constBackMakePath:[Character] = ["O","K"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PaletteThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailNaviBarView: UIView {
class PaletteThen: UIView {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var isBlack = false
    private var isBlack = false // 是否已拉黑
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = AuditoryImageMeasurable() // 用户资料

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: setupSubviews()
        handleDownSubviews()
        //: setupSubViewsConstraint()
        domicile()
        //: bindInteraction()
        counterchangeName()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_pathName.map{$0^2}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.BundleImageNamed(name: "bg_others_shadow_up")
        imgV.image = UIImage.thoughtImageBundleSizeText(name: (String(k_countResultUrl.prefix(4)) + "thers" + String(mainLayerId.prefix(4)) + String(kItemValue.prefix(6))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: lazy var whiteBgView: UIView = {
    lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.alpha = 0
        v.alpha = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lab.font = UIFont.clickLarge(type: .Medium, fontSize: 17)
        //: lab.textColor = .appTitleColor()
        lab.textColor = .toEvent()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var backButton: UIButton = {
    lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.BundleImageNamed(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.thoughtImageBundleSizeText(name: (String(kStopName) + dataClickName.replacingOccurrences(of: "leading", with: "k") + "_nor")).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(isochronousAction), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var moreButton: UIButton = {
    lazy var moreButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.BundleImageNamed(name: "btn_detail_more").withRenderingMode(.alwaysTemplate)
        let img = UIImage.thoughtImageBundleSizeText(name: (String(constToMsg))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingUserDetailNaviBarView {
extension PaletteThen {
    /// 拉黑和取消拉黑
    //: private func req_pullBlackRequest() {
    private func blackLocal() {
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, result, errorModel in
        BackgroundThen.nowadays(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isBlack = !self.isBlack
                self.isBlack = !self.isBlack
                //: let toastStr = self.isBlack == true ? "Shielding Success".localized : "Unmasking Succeeded".localized
                let toastStr = self.isBlack == true ? (String(kModelContent)).localized : (String(const_equalPath.prefix(4)) + "sking" + String(k_itemKey.prefix(4)) + String(k_ofKey)).localized
                //: ProgressHUD.toast(toastStr)
                DirectThen.stateToast(toastStr)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingUserDetailNaviBarView {
extension PaletteThen {
    //: @objc private func clickBackButtonAction() {
    @objc private func isochronousAction() {
        //: RangePushManager.share.func__getCurrentActivityVC()?.navigationController?.popViewController(animated: true)
        RangePushManager.share.retrieve()?.navigationController?.popViewController(animated: true)
    }

    //: @objc private func registerMoreButtonAction() {
    @objc private func refuse() {
        //: let vc = TalkingMunuPopView.init(frame: UIScreen.main.bounds)
        let vc = SelectReactiveCompatible(frame: UIScreen.main.bounds)
        //: var titleArr = ["Report".localized]
        var titleArr = [(String(user_thenTitle.prefix(6))).localized]
        //: let uid = Int(userInfoModel.uid) ?? 0
        let uid = Int(userInfoModel.uid) ?? 0

        //: titleArr.append(self.isBlack ? "Remvoe Block".localized : "Block".localized)
        titleArr.append(self.isBlack ? (String(data_numberPath.prefix(6)) + String(show_makeKey.suffix(6))).localized : (String(main_methodName)).localized)

        //: vc.initwithList(cellTitleList: titleArr)
        vc.fullPhaseOfTheMoon(cellTitleList: titleArr)
        //: vc.munuBlock = { index, str in
        vc.munuBlock = { index, _ in
            //: if index==0 {
            if index == 0 {
                //: self.reportAction()
                self.observerOf()
                //: } else if index==1 {
            } else if index == 1 {
                //: self.pullBlackAction()
                self.pull()
            }
        }
    }

    /// 举报用户
    //: private func reportAction() {
    private func observerOf() {
        //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        let reportView = TitleView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        //: reportView.showReportViewIn(view: nil)
        reportView.toColorView(view: nil)
    }

    /// 拉黑用户
    //: private func pullBlackAction() {
    private func pull() {
        //: guard self.isBlack == false else {
        guard self.isBlack == false else {
            //: req_pullBlackRequest()
            blackLocal()
            //: return
            return
        }

        //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
        SizeReactiveCompatible.exceptHeader(title: nil, message: const_netMsg, leftBtnTitle: (String(app_stopContent)).localized, rightBtnTitle: "OK".localized) {
            //: TalkingAlertShow.hideAlert()
            SizeReactiveCompatible.obstruct()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            SizeReactiveCompatible.obstruct()
            //: self.req_pullBlackRequest()
            self.blackLocal()
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailNaviBarView {
extension PaletteThen {
    /// 刷新
    //: func refreshView(_ userModel: TalkingUserInfoModel) {
    func nameUp(_ userModel: AuditoryImageMeasurable) {
        //: self.userInfoModel = userModel
        self.userInfoModel = userModel
        //: self.isBlack = userModel.inMyBlackList
        self.isBlack = userModel.inMyBlackList
        //: self.moreButton.isHidden = (userModel.uid == PunctuateThen.share.loginUid)
        self.moreButton.isHidden = (userModel.uid == PunctuateThen.share.loginUid)
        //: titleLab.text = userModel.nickname
        titleLab.text = userModel.nickname
    }

    //: private func setupSubviews() {
    private func handleDownSubviews() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(bgImgView)
        addSubview(bgImgView)
        //: addSubview(whiteBgView)
        addSubview(whiteBgView)
        //: whiteBgView.addSubview(titleLab)
        whiteBgView.addSubview(titleLab)
        //: addSubview(backButton)
        addSubview(backButton)
        //: addSubview(moreButton)
        addSubview(moreButton)
    }

    //: private func setupSubViewsConstraint() {
    private func domicile() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(constLiveErrorMessage)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(constGameData)
            //: make.width.equalTo(200)
            make.width.equalTo(200)
        }

        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(constGameData)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(constLiveErrorMessage)
        }

        //: moreButton.snp.makeConstraints { make in
        moreButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(backButton.snp.centerY)
            make.centerY.equalTo(backButton.snp.centerY)
            //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 45, height: constGameData))
        }
    }

    //: private func bindInteraction() {
    private func counterchangeName() {
        //: moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
        moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.registerMoreButtonAction()
            self.refuse()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
