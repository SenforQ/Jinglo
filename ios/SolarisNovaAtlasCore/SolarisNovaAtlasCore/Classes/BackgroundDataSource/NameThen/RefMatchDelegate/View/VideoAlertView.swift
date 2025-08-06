
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userRequestModelMsg:[UInt8] = [0xbf,0xb8,0xbf,0xa2,0xfe,0xb5,0xb9,0xb2,0xb3,0xa4,0xec,0xff,0xf6,0xbe,0xb7,0xa5,0xf6,0xb8,0xb9,0xa2,0xf6,0xb4,0xb3,0xb3,0xb8,0xf6,0xbf,0xbb,0xa6,0xba,0xb3,0xbb,0xb3,0xb8,0xa2,0xb3,0xb2]

private func bankManagerAt(top num: UInt8) -> UInt8 {
    return num ^ 214
}

/*: "icon_livetc_warn" :*/
fileprivate let kThemeId:String = "iconame"
fileprivate let notiBottomName:String = "c_warnas intimate"

/*: "OK" :*/
fileprivate let data_storageText:String = "gift"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VideoAlertView.swift
//  AbroadTalking
//
//  Created by young on 2023/11/20.
//

//: import UIKit
import UIKit

//: class TalkingFemaleNoBodyAlertView: UIView {
class VideoAlertView: UIView {
    //: private var popView: TalkingPopView?
    private var popView: UserModelReactiveCompatible?
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: setupSubviews()
        upToTheMinute()
        //: setupSubViewsConstraint()
        doingAtHand()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userRequestModelMsg.map{bankManagerAt(top: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.BundleImageNamed(name: "icon_livetc_warn")
        iamg.image = UIImage.thoughtImageBundleSizeText(name: (kThemeId.replacingOccurrences(of: "name", with: "n") + "_livet" + String(notiBottomName.prefix(6))))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .toEvent()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.clickLarge(type: .Medium, fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = PunctuateThen.share.appUserConfigMode.blockCameraPopupContent
        lab.text = PunctuateThen.share.appUserConfigMode.blockCameraPopupContent
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: size), for: .normal)
        btn.setBackgroundImage(UIImage.sinceNext(colors: UIColor.analogDigitalConverterColor(), size: size), for: .normal)
        //: btn.titleLabel?.font = UIFont.atomic(fontSize: 18)
        btn.titleLabel?.font = UIFont.atomic(fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("OK".localized, for: .normal)
        btn.setTitle("OK".localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(holdfastRightSnap), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFemaleNoBodyAlertView {
extension VideoAlertView {
    //: func show() {
    func mugShot() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = UserModelReactiveCompatible(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.style(view: self)
        //: popView?.showInView(view: PublisherReactiveCompatible.getWindow())
        popView?.hadith(view: PublisherReactiveCompatible.exceptAction())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func pastEqual() {
        //: popView?.dismissView()
        popView?.conversation()
        //: popView = nil
        popView = nil
    }

    //: @objc private func rightButtonClick() {
    @objc private func holdfastRightSnap() {
        //: dismiss()
        pastEqual()
    }
}

// MARK: - Layout

//: extension TalkingFemaleNoBodyAlertView {
extension VideoAlertView {
    /// 添加视图
    //: private func setupSubviews() {
    private func upToTheMinute() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(contentLab)
        contentView.addSubview(contentLab)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func doingAtHand() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(self.snp.centerY).offset(-114)
            make.top.equalTo(self.snp.centerY).offset(-114)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(actualWidth(w: 297))
            make.width.equalTo(actualWidth(w: 297))
            //: make.height.greaterThanOrEqualTo(actualWidth(w: 255))
            make.height.greaterThanOrEqualTo(actualWidth(w: 255))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.width.height.equalTo(actualWidth(w: 93))
            make.width.height.equalTo(actualWidth(w: 93))
        }

        //: contentLab.preferredMaxLayoutWidth = actualWidth(w: 297) - 60
        contentLab.preferredMaxLayoutWidth = actualWidth(w: 297) - 60
        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(20)
            make.top.equalTo(topIcon.snp.bottom).offset(20)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentLab.snp.bottom).offset(20)
            make.top.equalTo(contentLab.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
            make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
            //: make.bottom.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-20)
        }
    }
}
