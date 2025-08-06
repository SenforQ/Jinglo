
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let data_popTitle:String = "thought index view self databg_sh"
fileprivate let kNameText:String = "MISAN"
fileprivate let dataWrapErrorName:String = "_defaunext let domain let in"
fileprivate let data_makeText:[Character] = ["l","t"]

/*: "Popular" :*/
fileprivate let showEqualPostMsg:String = "Populainfo self of make"
fileprivate let showToUrl:String = "lab"

/*: "777777" :*/
fileprivate let k_midViewContent:[Character] = ["7","7","7","7","7","7"]

/*: "icon_moment_news_nor" :*/
fileprivate let noti_withImageData:String = "icon_number type bottom"
fileprivate let app_centerId:String = "nt_newtable manager model lab in"
fileprivate let notiErrorMainStr:[Character] = ["s","_","n","o","r"]

/*: "icon_free_pre" :*/
fileprivate let data_leadingValue:String = "guard text to equal usericon_"
fileprivate let k_logKey:[Character] = ["r","e"]

/*: "num" :*/
fileprivate let data_burnContent:String = "nushow"

/*: "99+" :*/
fileprivate let noti_topValue:[UInt8] = [0x55,0x55,0x47]

private func toBottomHoney(lab num: UInt8) -> UInt8 {
    return num ^ 108
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CountoNavigationDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingMomentViewController: TalkingBaseViewController {
class CountoNavigationDelegate: SizeViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        betweenHandle()
        //: setupSubViewsConstraint()
        iconConstraint()
        //: NotificationCenter.default.addObserver(self, selector: #selector(freeNotif), name: FREEBTN_UPLOAD_POST_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(notif), name: showTitleMsg, object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: load_remindNum()
        ballBreakerNum()
    }

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.BundleImageNamed(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.thoughtImageBundleSizeText(name: (String(data_popTitle.suffix(5)) + "ouye_" + kNameText.lowercased() + "guang" + String(dataWrapErrorName.prefix(6)) + String(data_makeText))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: SumimateViewDelegate = {
        //: let vc = QYSlideNavigationViewController()
        let vc = SumimateViewDelegate()
        //: vc.topDistance = NavigationBarHeight
        vc.topDistance = constGameData
        //: vc.controllerItems = [TalkingPopularMomentVC()]
        vc.controllerItems = [StyleViewDelegate()]
        //: vc.titleItems = ["Popular".localized]
        vc.titleItems = [(String(showEqualPostMsg.prefix(6)) + showToUrl.replacingOccurrences(of: "lab", with: "r")).localized]
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .pingfangFont(type: .Medium, fontSize: 16)
        vc.titleFont = .clickLarge(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .pingfangFont(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .clickLarge(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (String(k_midViewContent)))!
        //: vc.selectedColor = UIColor.appTitleColor()
        vc.selectedColor = UIColor.toEvent()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var newsBtn: UIButton = {
    private lazy var newsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_moment_news_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(noti_withImageData.prefix(5)) + "mome" + String(app_centerId.prefix(6)) + String(notiErrorMainStr))), for: .normal)
        //: btn.addTarget(self, action: #selector(newsBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(streetSmart), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var newsBadgeLab: BadgeLab = {
    private lazy var newsBadgeLab: LabReactiveCompatible = {
        //: let label = BadgeLab()
        let label = LabReactiveCompatible()
        //: label.isHidden = true
        label.isHidden = true
        //: return label
        return label
        //: }()
    }()

    //: private lazy var freeBtn: UIButton = {
    private lazy var freeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "icon_free_pre"), for: .normal)
        btn.setBackgroundImage(UIImage.thoughtImageBundleSizeText(name: (String(data_leadingValue.suffix(5)) + "free_p" + String(k_logKey))), for: .normal)
        //: btn.addTarget(self, action: #selector(freeBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(flushEvent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMomentViewController {
extension CountoNavigationDelegate {
    /// 获取用户当前未读动态数量
    //: private func load_remindNum() {
    private func ballBreakerNum() {
        //: TalkingMomentRequestTool.req_getRemindNum { succeed, result, errorModel in
        StartReactiveCompatible.fictitiousName { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [])
            let json = JSON(result ?? [])
            //: self.refreshNewsbadge(num: json["num"].intValue)
            self.reloadFile(num: json[(data_burnContent.replacingOccurrences(of: "show", with: "m"))].intValue)
        }
    }
}

// MARK: - Event

//: extension TalkingMomentViewController {
extension CountoNavigationDelegate {
    /// 跳转到动态通知列表
    //: @objc private func newsBtnClickEvent() {
    @objc private func streetSmart() {
        //: refreshNewsbadge(num: 0)
        reloadFile(num: 0)
        //: let vc = TalkingMomentNewsFeedViewController()
        let vc = RepresentationThen()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    /// 发布通知
    //: @objc func freeNotif() {
    @objc func notif() {
        //: freeBtnClickEvent()
        flushEvent()
    }

    /// 发布
    //: @objc func freeBtnClickEvent() {
    @objc func flushEvent() {
        //: if PunctuateThen.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue, PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue, PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if PunctuateThen.share.loginUserMode.isTPAuth != AuthColumnConvertible.isSuccessed.rawValue, PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue, PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue {
            //: AppManagerRequest.func__requestUserInfo { _, _, _ in
            ManagingDirectorThen.visible { _, _, _ in
                //: if !PunctuateThen.share.loginUserMode.isNaUser,
                if !PunctuateThen.share.loginUserMode.isNaUser,
                   //: PunctuateThen.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue
                   PunctuateThen.share.loginUserMode.isTPAuth != AuthColumnConvertible.isSuccessed.rawValue
                {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    MessageThen.shared.eponym()
                    //: return
                    return
                        //: } else {
                } else {
                    //: self.pushFreeVC()
                    self.upDesign()
                }
            }
            //: } else {
        } else {
            //: pushFreeVC()
            upDesign()
        }
    }

    //: private func pushFreeVC() {
    private func upDesign() {
        //: let isShow = Defaults.bool(forKey: TalkingFreeTipsViewIsShow)
        let isShow = constDevicePath.bool(forKey: k_askMsg)
        //: let freeVC = TalkingFreeViewController()
        let freeVC = RecordObjectProtocol()
        //: freeVC.delegate = slideVC.controllerItems.first as? any TalkingFreeViewControllerDelegate
        freeVC.delegate = slideVC.controllerItems.first as? any BeginningObjectProtocol
        //: guard isShow == false else {
        guard isShow == false else { // 已展示过
            //: navigationController?.pushViewController(freeVC, animated: true)
            navigationController?.pushViewController(freeVC, animated: true)
            //: return
            return
        }
        //: TalkingFreeTipsView().showView {
        ActionThen().listBy {
            //: self.navigationController?.pushViewController(freeVC, animated: true)
            self.navigationController?.pushViewController(freeVC, animated: true)
        }
    }
}

// MARK: - NameNavigationDelegate

//: extension TalkingMomentViewController: QYSlideNavigationDelegate {
extension CountoNavigationDelegate: NameNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {}
    func toScale(_: UIViewController, index _: Int) {}
}

// MARK: - Layout

//: extension TalkingMomentViewController {
extension CountoNavigationDelegate {
    /// 刷新动态通知角标
    //: func refreshNewsbadge(num: Int) {
    func reloadFile(num: Int) {
        //: newsBadgeLab.isHidden = num > 0 ? false:true
        newsBadgeLab.isHidden = num > 0 ? false : true
        //: newsBadgeLab.text = num > 99 ? "99+":String(num)
        newsBadgeLab.text = num > 99 ? "99+" : String(num)
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func betweenHandle() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        // 导航底部渐变背景
        //: view.addSubview(bottomImgView)
        view.addSubview(bottomImgView)
        //: addChild(slideVC)
        addChild(slideVC)
        //: view.addSubview(slideVC.view)
        view.addSubview(slideVC.view)
        //: view.addSubview(newsBtn)
        view.addSubview(newsBtn)
        //: view.addSubview(newsBadgeLab)
        view.addSubview(newsBadgeLab)
        //: view.addSubview(freeBtn)
        view.addSubview(freeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func iconConstraint() {
        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + constLiveErrorMessage)
        }
        //: newsBtn.snp.makeConstraints { make in
        newsBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(constLiveErrorMessage)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: newsBadgeLab.snp.makeConstraints { make in
        newsBadgeLab.snp.makeConstraints { make in
            //: make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            //: make.top.equalTo(newsBtn).offset(2)
            make.top.equalTo(newsBtn).offset(2)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.greaterThanOrEqualTo(16)
            make.width.greaterThanOrEqualTo(16)
        }
        //: freeBtn.snp.makeConstraints { make in
        freeBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.bottom.equalTo(-115)
            make.bottom.equalTo(-115)
            //: make.size.equalTo(CGSize(width: 55, height: 55))
            make.size.equalTo(CGSize(width: 55, height: 55))
        }
    }
}
