
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_textName:[UInt8] = [0xf8,0xff,0xf8,0xe5,0xb9,0xf2,0xfe,0xf5,0xf4,0xe3,0xab,0xb8,0xb1,0xf9,0xf0,0xe2,0xb1,0xff,0xfe,0xe5,0xb1,0xf3,0xf4,0xf4,0xff,0xb1,0xf8,0xfc,0xe1,0xfd,0xf4,0xfc,0xf4,0xff,0xe5,0xf4,0xf5]

private func playerGiftApp(ret num: UInt8) -> UInt8 {
    return num ^ 145
}

/*: "icon_window_verification" :*/
fileprivate let kValueId:String = "two origin make sizeicon_"
fileprivate let mainNameValue:[Character] = ["_","v","e","r","i","f","i","c","a","t","i","o","n"]

/*: "Go to certify" :*/
fileprivate let app_sendTitle:[Character] = ["G","o"," ","t","o"," ","c","e","r","t","i","f","y"]

/*: "btn_me_program_photo_delete" :*/
fileprivate let app_rawPath:[Character] = ["b","t","n","_","m","e","_","p","r","o","g","r"]
fileprivate let show_fileUrl:String = "am_perror var make reader"
fileprivate let constFaceStr:String = "largeto"

/*: "Authentication is under reviewing" :*/
fileprivate let app_secondStr:[UInt8] = [0xed,0xd9,0xd8,0xc4,0xc9,0xc2,0xd8,0xc5,0xcf,0xcd,0xd8,0xc5,0xc3,0xc2,0x8c,0xc5,0xdf,0x8c,0xd9,0xc2,0xc8,0xc9,0xde,0x8c,0xde,0xc9,0xda,0xc5,0xc9,0xdb,0xc5,0xc2,0xcb]

private func contentBack(lab num: UInt8) -> UInt8 {
    return num ^ 172
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VideoReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/15.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationPopUpView: UIView {
class VideoReactiveCompatible: UIView {
    //: var popView: TalkingPopView?
    var popView: UserModelReactiveCompatible?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.petName()
        //: self.setupSubViewsConstraint()
        self.quoteFromPhoto()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_textName.map{playerGiftApp(ret: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var backIcon: UIImageView = {
    private lazy var backIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.setUrlImage(urlStr: PunctuateThen.share.appUserConfigMode.rpWindowBg, placeImg: UIImage.BundleImageNamed(name: "icon_window_verification"))
        imag.beforeRender(urlStr: PunctuateThen.share.appUserConfigMode.rpWindowBg, placeImg: UIImage.thoughtImageBundleSizeText(name: (String(kValueId.suffix(5)) + "window" + String(mainNameValue))))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.sinceNext(colors: UIColor.analogDigitalConverterColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Go to certify".localized, for: .normal)
        btn.setTitle((String(app_sendTitle)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.atomic(fontSize: 16)
        btn.titleLabel?.font = UIFont.atomic(fontSize: 16)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(colorClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(app_rawPath) + String(show_fileUrl.prefix(4)) + constFaceStr.replacingOccurrences(of: "large", with: "ho") + "_delete")), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(approximate), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationPopUpView {
extension VideoReactiveCompatible {
    //: @objc private func finishBtnClick() {
    @objc private func colorClick() {
        //: dismiss()
        evenDismiss()
        //: if PunctuateThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if PunctuateThen.share.loginUserMode.isTPAuth == AuthColumnConvertible.isSuccessed.rawValue {
            //: return
            return
                //: } else if PunctuateThen.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if PunctuateThen.share.loginUserMode.isTPAuth == AuthColumnConvertible.unknown.rawValue {
            //: RangePushManager.share.func__pushUserVerifyController(toast: nil)
            RangePushManager.share.controller(toast: nil)
            //: } else if PunctuateThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if PunctuateThen.share.loginUserMode.isTPAuth == AuthColumnConvertible.isOnGoing.rawValue {
            //: self.func__showStatusBarErrorMsg(showMsg: "Authentication is under reviewing".localized)
            self.drawObserver(showMsg: String(bytes: app_secondStr.map{contentBack(lab: $0)}, encoding: .utf8)!.localized)
            //: } else {
        } else {
            //: RangePushManager.share.func__pushUserVerifyController(toast: nil)
            RangePushManager.share.controller(toast: nil)
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func approximate() {
        //: dismiss()
        evenDismiss()
    }

    //: func show() {
    func listShow() {
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
    @objc func evenDismiss() {
        //: popView?.dismissView()
        popView?.conversation()
        //: popView = nil
        popView = nil
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationPopUpView {
extension VideoReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func petName() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(backIcon)
        contentView.addSubview(backIcon)
        //: backIcon.addSubview(finishBtn)
        backIcon.addSubview(finishBtn)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func quoteFromPhoto() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(ScreenHeight/4)
            make.top.equalTo(notiKeyTitle / 4)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 319, height: 386+60))
            make.size.equalTo(CGSize(width: 319, height: 386 + 60))
        }

        //: backIcon.snp.makeConstraints { make in
        backIcon.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(386)
            make.height.equalTo(386)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-25)
            make.bottom.equalTo(-25)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.height.equalTo(203)
            make.height.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(backIcon.snp.bottom).offset(30)
            make.top.equalTo(backIcon.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
